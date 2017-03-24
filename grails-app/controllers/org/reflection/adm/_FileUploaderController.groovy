package org.reflection.adm

import grails.validation.ValidationException
import org.apache.poi.ss.usermodel.Cell
import org.apache.poi.ss.usermodel.Row
import org.apache.poi.xssf.usermodel.XSSFSheet
import org.apache.poi.xssf.usermodel.XSSFWorkbook
import org.reflection.hr.HrStaff

import java.text.SimpleDateFormat

class _FileUploaderController {

    SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy")
    SimpleDateFormat sdfCode = new SimpleDateFormat("ddMMyy")
    Map<String, String> bakkMap = new LinkedHashMap()
    Map<String, Integer> failTexts = new LinkedHashMap<>()
    List<Integer> errRowList = new ArrayList<>()
    int numPass = 0
    int numFail = 0

    Map ALL_TEMPLATE_COLS = [
            'INCENTIVE_ALLOWANCE': ["EMP_CODE", "PAYROLL_PERIOD_CODE", "AMOUNT", "REMARKS"],
            'ANNUAL_LEAVE'       : ["EMP_CODE", "PAYROLL_PERIOD_CODE", "ACTUAL_PRESENT_DAY", "ANNUAL_LEAVE_ENJOYED_DAY", "DAILY_SALARY", "REMARKS"],
            'INC_DEC_ADJUSTMENT' : ["EMP_CODE", "GROSS", "REMARKS"],
            'PAYROLL_ADJUSTMENT' : ["EMP_CODE", "PAYROLL_ELEMENT_CODE",
                                    "START_DATE", "END_DATE", "SIGN",
                                    "AMOUNT", "REMARKS"]
    ]

    def index() {
        render(view: "index")
    }

    def downloadFile() {

        File abc = new File(new File(grailsApplication.mainContext.servletContext.getRealPath('//')).parent + File.separator + "knit_hcm_repo" + File.separator + "file_upload_template_doc")

        println("downloadFile abc 406: " + abc)

        String fileName = params["XLFILEDOWNLOAD"] as String
        abc = new File(abc, fileName)

        println("File name with absolutePath name :" + abc)

        if (abc.exists()) {
            response.setContentType("application/octet-stream")
            response.setHeader("Content-disposition", "filename=${abc.name}")
            response.outputStream << abc.bytes
        }
    }

    def doUpload() {

        def uploadedFile = params['file']
        def fileName, fileLoc, uidName, ext
        bakkMap.clear()

        if (!uploadedFile.equals(null)) {
            fileName = uploadedFile.getOriginalFilename()

            if (fileName.toString().trim().isEmpty()) {
                bakkMap.put("Error Description", "File NOT found.");
                redirect(action: "index", params: [bakkMap: bakkMap])
                return
            }

            ext = fileName.toString().substring(fileName.toString().lastIndexOf("."))

            if (ext != '.xlsx') {
                bakkMap.put("Error Description", "File extension is NOT supported. Use *.xlsx file only.");
                redirect(action: "index", params: [bakkMap: bakkMap])
                return
            }

            uidName = UUID.randomUUID().toString() + fileName.toString().substring(fileName.toString().lastIndexOf("."))

            File file1 = new File(new File(grailsApplication.mainContext.servletContext.getRealPath('//')).parent + File.separator + "knit_hcm_repo" + File.separator + "temp_file_upload_template_doc")

            fileLoc = new File(file1, uidName)
//            fileLoc = new File("web-app"+ "/file_upload_template_doc")

            println("_file upload 413 file1: " + file1)

            uploadedFile.transferTo(fileLoc)
        }

        //File file = new File("C:\\Users\\rajib.hossain\\Desktop\\PAYROLL_ADJUSTMENT(2).xlsx")
        // File file = new File(fileLoc, uidName)

        List<Map<String, Object>> kkk = getExcelDataMap(fileLoc)

        if (kkk == null || kkk.size() == 0) {
            bakkMap.put("Error Description", "No data found");
            redirect(action: "index", params: [bakkMap: bakkMap])
            return
        }

        if (!kkk.get(0).keySet().containsAll(ALL_TEMPLATE_COLS.get(params.modeOfUpload))) {
            bakkMap.put("Error Description", "'" + params.modeOfUpload + "' Template NOT Matched");
            redirect(action: "index", params: [bakkMap: bakkMap])
            return
        }

        if (params.modeOfUpload.equals('PAYROLL_ADJUSTMENT')) {
            bakkMap = PAYROLL_ADJUSTMENT(kkk)
        } else if (params.modeOfUpload.equals('INCENTIVE_ALLOWANCE')) {
            bakkMap = INCENTIVE_ALLOWANCE(kkk)
        } else if (params.modeOfUpload.equals('INC_DEC_ADJUSTMENT')) {
            bakkMap = INC_DEC_ADJUSTMENT(kkk)
        } else if (params.modeOfUpload.equals('ANNUAL_LEAVE')) {
            bakkMap = ANNUAL_LEAVE(kkk)
        }

        redirect(action: "index", params: [bakkMap: bakkMap])
    }

    Map<String, String> PAYROLL_ADJUSTMENT(List<Map<String, Object>> kkk) {
        int rowNum = 1;
        for (Map<String, Object> myMap : kkk) {
            try {
                String employeeCode = myMap.get("EMP_CODE")
                String elementCode = myMap.get("PAYROLL_ELEMENT_CODE")
                String startDate = myMap.get("START_DATE")
                String endDate = myMap.get("END_DATE")
                String sign = myMap.get("SIGN")
                String amnt = myMap.get("AMOUNT")
                String remarks = myMap.get("REMARKS")
                Double amount = Double.parseDouble(amnt)

                if ((sign.equals("C") || sign.equals("D"))
                        && amount > 0
                        && (endDate != null && !endDate.trim().isEmpty())
                        && (startDate != null && !startDate.trim().isEmpty())
                ) {
                    try {
                        Map hrPrlAdjustment //= new HrPrlAdjustment()
                        hrPrlAdjustment.properties['code'] = elementCode + employeeCode + sign + (sdfCode.format(sdf.parse(startDate)))
                        hrPrlAdjustment.properties['hrCrEmp'] = HrCrEmp.findByCode(employeeCode)
                        hrPrlAdjustment.properties['hrPrlElement'] = HrPrlElement.findByCode(elementCode)
                        hrPrlAdjustment.properties['startDate'] = sdf.parse(startDate)
                        hrPrlAdjustment.properties['endDate'] = sdf.parse(endDate)
                        hrPrlAdjustment.properties['authUser'] = currAdmUser
                        hrPrlAdjustment.properties['admUserInsertBy'] = currAdmUser
                        hrPrlAdjustment.properties['sign'] = sign
                        hrPrlAdjustment.properties['insertDate'] = new Date()
                        hrPrlAdjustment.properties['amount'] = amount
                        hrPrlAdjustment.properties['remarks'] = remarks

                        hrPrlAdjustment.save(flush: true, failOnError: true)

                        numPass++
                    } catch (Exception opa) {

                        String key
                        if (opa instanceof ValidationException) {
                            ValidationException jj = (ValidationException) opa
                            key = 'ERROR on : ' + jj.errors.fieldError.getField()
                        } else {
                            key = opa.getMessage()
                        }

                        if (!failTexts.containsKey(key))
                            failTexts.put(key, 1)
                        else {
                            failTexts.put(key, 1 + failTexts.get(key))
                        }
                        errRowList.add(rowNum)

                        numFail++
                    }
                } else {
                    numFail++
                }
            } catch (Exception e) {
                numFail++
                e.printStackTrace()
            }

            rowNum++
        }
        return commonMessage()
    }

    Map<String, String> INCENTIVE_ALLOWANCE(List<Map<String, Object>> kkk) {

        println("datam: " + kkk)

        int rowNum = 1;
        for (Map<String, Object> myMap : kkk) {

            try {

                String employeeCode = myMap.get("EMP_CODE")
                String hrPrlPeriodCode = myMap.get("PAYROLL_PERIOD_CODE")
                String remarks = myMap.get("REMARKS")
                Integer amount = Integer.parseInt(myMap.get("AMOUNT") as String)

                if (amount > 0 && hrPrlPeriodCode != null && employeeCode != null) {
                    try {

                        Map procOutPrlIncentive //= new ProcOutPrlIncentive()
                        procOutPrlIncentive.properties['hrCrEmp'] = HrCrEmp.findByCode(employeeCode)
                        procOutPrlIncentive.properties['hrPrlPeriod'] = HrPrlPeriod.findByCode(hrPrlPeriodCode)
                        procOutPrlIncentive.properties['amount'] = amount
                        procOutPrlIncentive.properties['remarks'] = remarks

//                        procOutPrlIncentive.save(flush: true, failOnError: true)
                        procOutPrlIncentive.save(failOnError: true)

                        numPass++

                    } catch (Exception opa) {

                        String key

                        if (opa instanceof ValidationException) {

                            ValidationException jj = (ValidationException) opa
                            key = 'ERROR on : ' + jj.errors.fieldError.getField()

                        } else {
                            key = opa.getMessage()
                        }

                        if (!failTexts.containsKey(key))
                            failTexts.put(key, 1)

                        else {
                            failTexts.put(key, 1 + failTexts.get(key))
                        }
                        errRowList.add(rowNum)

                        numFail++

                    }
                } else {
                    numFail++
                }

            } catch (Exception e) {
                numFail++
                e.printStackTrace()
            }

            rowNum++
        }
        return commonMessage()
    }

    Map<String, String> ANNUAL_LEAVE(List<Map<String, Object>> kkk) {

        int rowNum = 1

        for (Map<String, Object> myMap : kkk) {

//            try {

            String employeeCode = (myMap.get("EMP_CODE")) as String
            String hrPrlPeriodCode = (myMap.get("PAYROLL_PERIOD_CODE")) as String
            Integer actualAnnualPresentDay = Integer.parseInt(myMap.get("ACTUAL_PRESENT_DAY") as String)
            Integer earnLeaveTakenDay = Integer.parseInt(myMap.get("ANNUAL_LEAVE_ENJOYED_DAY") as String)
            Double dailySalary = Double.parseDouble(myMap.get("DAILY_SALARY") as String)
            String remarks = (myMap.get("REMARKS")) as String

            if (employeeCode != null && dailySalary > 0 && actualAnnualPresentDay > 0 && earnLeaveTakenDay >= 0) {

                try {

                    Map hrTlEarnLeave //= new HrTlEarnLeave()

                    hrTlEarnLeave.properties['hrCrEmp'] = HrCrEmp.findByCode(employeeCode)
                    hrTlEarnLeave.properties['hrPrlPeriod'] = HrPrlPeriod.findByCode(hrPrlPeriodCode)
                    hrTlEarnLeave.properties['actualAnnualPresentDay'] = actualAnnualPresentDay
                    hrTlEarnLeave.properties['earnLeaveTakenDay'] = earnLeaveTakenDay
                    hrTlEarnLeave.properties['dailySalary'] = dailySalary
                    hrTlEarnLeave.properties['admUserInsertBy'] = currAdmUser
                    hrTlEarnLeave.properties['insertDate'] = new Date()
                    hrTlEarnLeave.properties['remarks'] = remarks

//                        hrTlEarnLeave.save(flush: true, failOnError: true)
                    hrTlEarnLeave.save(failOnError: true)

                    numPass++
                } catch (Exception opa) {
                    String key
                    if (opa instanceof ValidationException) {
                        ValidationException jj = (ValidationException) opa
                        key = 'ERROR on : ' + jj.errors.fieldError.getField()
                    } else {
                        key = opa.getMessage()
                    }

                    if (!failTexts.containsKey(key))
                        failTexts.put(key, 1)
                    else {
                        failTexts.put(key, 1 + failTexts.get(key))
                    }
                    errRowList.add(rowNum)
                    numFail++
                }
            } else {
                numFail++
            }
//            } catch (Exception e) {
//                numFail++
//                e.printStackTrace()
//            }
            rowNum++
        }
        return commonMessage()
    }

    Map<String, String> INC_DEC_ADJUSTMENT(List<Map<String, Object>> kkk) {

        int rowNum = 1

        for (Map<String, Object> myMap : kkk) {

            try {

                String employeeCode = myMap.get("EMP_CODE")
                String remarks = myMap.get("REMARKS")
                Double gross = Double.parseDouble(myMap.get("GROSS") as String)

                if (gross > 0) {
                    try {

                        HrStaff hrCrEmp = HrStaff.findByCode(employeeCode);
                        Map hrCrAssignment //= HrCrAssignment.findByHrCrEmp(hrCrEmp)

                        hrCrAssignment.properties['gross'] = gross
                        hrCrAssignment.properties['remarks'] = remarks

                        hrCrAssignment.save(flush: true, failOnError: true)
                        numPass++

                    } catch (Exception opa) {

                        String key

                        if (opa instanceof ValidationException) {

                            ValidationException jj = (ValidationException) opa
                            key = 'ERROR on : ' + jj.errors.fieldError.getField()
                        } else {
                            key = opa.getMessage()
                        }

                        if (!failTexts.containsKey(key))
                            failTexts.put(key, 1)

                        else {
                            failTexts.put(key, 1 + failTexts.get(key))
                        }

                        errRowList.add(rowNum)
                        numFail++
                    }
                } else {
                    numFail++
                }
            } catch (Exception e) {
                numFail++
                e.printStackTrace()
            }
            rowNum++
        }
        return commonMessage()
    }

    Map<String, String> commonMessage() {

        bakkMap.put("No of Pass", numPass as String)
        bakkMap.put("No of Fail", numFail as String)
        bakkMap.put("Total Row", (numPass + numFail) as String)
        bakkMap.put("Error Summary", failTexts as String)
        bakkMap.put("Error Row", errRowList as String)

        numPass = 0
        numFail = 0
        failTexts.clear()
        errRowList.clear()

        return bakkMap
    }

    List<Map<String, Object>> getExcelDataMap(File file) {

        FileInputStream fis = new FileInputStream(file)
        XSSFWorkbook myWorkBook = new XSSFWorkbook(fis)
        XSSFSheet mySheet = myWorkBook.getSheetAt(0)
        Iterator<Row> rowIterator = mySheet.iterator()

        List<Map<String, Object>> datas = new ArrayList<>()

        int rowIndx = 0
        Map<Integer, String> mapHeader = new LinkedHashMap<>()

        try {
            while (rowIterator.hasNext()) {
                Row row = rowIterator.next()
                Iterator<Cell> cellIterator = row.cellIterator()
                int colIndx = 0

                Map<String, Object> mapData = new LinkedHashMap<>()

                while (cellIterator.hasNext()) {

                    Cell cell = cellIterator.next()
                    Object val = ""

                    switch (cell.getCellType()) {

                        case Cell.CELL_TYPE_BOOLEAN:
                            val = cell.getBooleanCellValue()
                            break;
                        case Cell.CELL_TYPE_STRING:
                            val = cell.getStringCellValue()
                            break;
                        case Cell.CELL_TYPE_NUMERIC:
                            try {
                                String formt = cell.getCellStyle().getDataFormatString()

                                if (formt.indexOf('/') != -1) {
                                    val = cell.getDateCellValue()
                                } else if (formt.equals("General") || formt.equals("@") || formt.equals("0") || formt.indexOf(".") == -1) {
                                    val = (long) cell.getNumericCellValue()
                                } else {
                                    val = cell.getNumericCellValue()
                                }
                            } catch (Exception uio) {
                                println("rajib err: 1028 " + uio)
                            }
                    }

                    if (rowIndx == 0) {
                        //val = getMyPowerfulHandler(val)
                        val = val.toString().trim().toUpperCase()
                        mapHeader.put(colIndx, val)
                    } else {
                        String ioi = mapHeader.get(colIndx)
                        mapData.put(ioi, val)
                    }
                    colIndx++
                }

                if (rowIndx == 0) {
                    rowIndx++
                    continue
                }

                datas.add(mapData)
                rowIndx++
            }
        } catch (Exception e) {
            println "Error_getExcelDataMap-213 : " + e
        }

        return datas
    }

    String getMyPowerfulHandler(final String excelCellValue) {

        if (excelCellValue == null || excelCellValue.trim().isEmpty())
            return ""

        String xuy = excelCellValue.toLowerCase()
        StringTokenizer st = new StringTokenizer(xuy, " -~/\\()_,.")
        String ret = st.nextToken()

        while (st.hasMoreTokens()) {
            String tt = st.nextToken()
            String fch = new Character(tt.charAt(0)).toString()
            ret += fch.toUpperCase() + tt.substring(1)
        }
        return ret
    }
}