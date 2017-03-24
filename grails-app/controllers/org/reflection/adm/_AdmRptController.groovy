package org.reflection.adm

import grails.converters.JSON
import groovy.sql.Sql
import hrms.WSReturn
import org.codehaus.groovy.grails.plugins.jasper.JasperExportFormat
import org.codehaus.groovy.grails.plugins.jasper.JasperReportDef
import org.reflection.auth.AuthUser
import org.w3c.dom.Document
import org.w3c.dom.Element
import org.w3c.dom.Node
import org.w3c.dom.NodeList

import javax.xml.parsers.DocumentBuilder
import javax.xml.parsers.DocumentBuilderFactory
import java.text.SimpleDateFormat

class _AdmRptController {

    def dataSource
    def jasperService
    def springSecurityService

    def index() {

        List<AdmPermissible> pgs = AdmRptMst.executeQuery("SELECT m FROM AdmRptMst m WHERE m.itemType='RG' AND m.isActive=true ORDER BY m.sortingOrder, m.title" as String)
        List<AdmPermissible> kkx = AdmRptMst.executeQuery("SELECT m FROM AdmRptMst m WHERE m.itemType='R' AND m.isActive=true ORDER BY m.parentAdmPermissible.sortingOrder, m.parentAdmPermissible.title, m.sortingOrder, m.title" as String)
        List<AdmPermissible> kk = new ArrayList()

        for (AdmPermissible bbb : kkx) {
            AdmPermissible bbbm = new AdmRptMst()
            bbbm.setId(bbb.id)
            bbbm.setTitle(bbb.getParentAdmPermissible().getTitle() + '-' + bbb.getTitle())
            kk.add(bbbm)
        }
        [reportGroupMap: pgs, reportMap: kk]
    }

    def getReport() {

        String reportGroupId = null
        try {

            reportGroupId = params.reportGroupId as String

        } catch (Exception gf) {
            println("problems with report Group Id" + gf.getMessage())
        }

        def sb = new StringBuilder()
        String selyaa = "SELECT m FROM AdmRptMst m WHERE m.itemType='R' AND m.isActive=true "

        if (reportGroupId == null) {
            List<AdmPermissible> mast = AdmRptMst.executeQuery(selyaa + "ORDER BY m.parentAdmPermissible.sortingOrder, m.parentAdmPermissible.title, m.sortingOrder, m.title")
            for (AdmPermissible bbb : mast) {
                sb.append("<option value='" + bbb.id + "'>" + bbb.getParentAdmPermissible().getTitle() + '-' + bbb + "</option>")
            }
        } else {
            List<AdmPermissible> mast = AdmRptMst.executeQuery(selyaa + "AND m.parentAdmPermissible.id=" + reportGroupId + " ORDER BY m.parentAdmPermissible.sortingOrder, m.parentAdmPermissible.title, m.sortingOrder, m.title")
            sb.append("<option value='/${null}'>" + '--select--' + "</option>")
            for (AdmPermissible bbb : mast) {
                sb.append("<option value='" + bbb.id + "'>" + bbb + "</option>")
            }
        }
        render sb.toString()
    }

    def getDynamicContent(Long reportId) {

        AdmRptMst admRptMst = AdmRptMst.findById(reportId)

        if (reportId == -1) {
            render new WSReturn(-100, "No Report Is Selected", null) as JSON

        } else {

            def sb = new StringBuilder()
            def reportList = AdmRptDtl.executeQuery("FROM AdmRptDtl a WHERE a.admRptMst.id=" + reportId + " AND a.isActive=true ORDER BY a.sortingOrder")

            reportList.each { rdp ->

                String aparamType = rdp.paramType
                String acmd = rdp.cmd
                String atitle = rdp.title
                String aparamName = rdp.paramName

                if (rdp.admParam != null) {

                    if (aparamType == null || aparamType.equalsIgnoreCase("SUPER"))
                        aparamType = rdp.admParam.paramType
                    if (acmd == null || acmd.equalsIgnoreCase("SUPER"))
                        acmd = rdp.admParam.cmd
                    if (atitle == null || atitle.equalsIgnoreCase("SUPER"))
                        atitle = rdp.admParam.caption
                    if (aparamName == null || aparamName.equalsIgnoreCase("SUPER"))
                        aparamName = rdp.admParam.paramName
                }

                aparamType = aparamType.trim()
                aparamName = aparamName.trim()

                def isRequired = ""

                if (rdp.isMandatory) {
                    sb.append("<div class='fieldcontain'><label for='" + aparamType + "'><span>" + atitle + "</span></label>&nbsp<span class='required-indicator'>*</span>")
                    isRequired = "required='required'"
                } else {
                    sb.append("<div class='fieldcontain'><label for='" + aparamType + "'><span>" + atitle + "</span></label>")
                }

                if (aparamType == "LIST" && acmd != null) {

                    Sql db = new Sql(dataSource)

                    def optionList = db.rows(acmd)
                    def optSb = new StringBuilder()
                    optSb.append("<option value=''>Select</option>")
                    optionList.each { p ->
                        optSb.append("<option value='" + p.id + "'>" + p.title + "</option>")
                    }

                    try {
                        db.close()
                    } catch (Exception ee) {
                        println("sql Close: error: " + ee)
                    }

                    sb.append("<Select class='form-control' name='" + aparamName + "' id='" + aparamName + "' " + isRequired + " >" + optSb + "</select> </div>")
                } else if (aparamType == "TEXT") {
                    sb.append("<input class='form-control' type='" + aparamType + "' name='" + aparamName + "' id='" + aparamName + "' " + isRequired + "/> </div>")
                } else if (aparamType == "DATE") {
                    sb.append("<input class='form-control date' type='" + aparamType + "' name='" + aparamName + "' id='" + aparamName + "' " + isRequired + "/></div>")
                }
            }

            sb.append("<br><fieldset class='buttons'>")

            for (AdmRptFormat admRptFormat : admRptMst.admRptFormat) {
                sb.append("<input type='submit' name='" + admRptFormat.reportFormat + "'  value='" + admRptFormat.reportFormat + "'/>")
            }

            sb.append("</fieldset>")

            render new WSReturn(100, sb.toString(), null) as JSON
//            render sb as String
        }
    }

    def generateReport() {

        long stMs = System.currentTimeMillis()

        AuthUser currentLoggedInUser = springSecurityService.getCurrentUser()

        String action = "PDF"
        try {
            if (params.get("XLS").equals("XLS"))
                action = "XLS"
            else if (params.get("PDF").equals("PDF"))
                action = "PDF"
            else if (params.get("RTF").equals("RTF"))
                action = "RTF"
        } catch (Exception jjf) {
        }

        println('action: ' + action)

        Map parameters = new HashMap()
//        def reportId = Long.valueOf(params['reportId'] as String)
        def admReportMaster = AdmRptMst.get(params['reportId'] as String)

        def reportList = AdmRptDtl.executeQuery("FROM AdmRptDtl a WHERE a.admRptMst=:admRptMst AND a.isActive=true", [admRptMst: admReportMaster])

        reportList.each { rdp ->

            String aparamType = rdp.paramType
            String acmd = rdp.cmd
            String atitle = rdp.title
            String aparamName = rdp.paramName

            if (rdp.admParam != null) {

                if (aparamType == null || aparamType.equalsIgnoreCase("SUPER"))
                    aparamType = rdp.admParam.paramType
                if (acmd == null || acmd.equalsIgnoreCase("SUPER"))
                    acmd = rdp.admParam.cmd
                if (atitle == null || atitle.equalsIgnoreCase("SUPER"))
                    atitle = rdp.admParam.title
                if (aparamName == null || aparamName.equalsIgnoreCase("SUPER"))
                    aparamName = rdp.admParam.paramName
            }

            aparamType = aparamType.toUpperCase()

            String parmaval = null

            if (request.getParameter(aparamName) != null && !request.getParameter(aparamName).isEmpty()) {
                parmaval = request.getParameter(aparamName)
            }
            if (aparamType == "DATE" && parmaval != null) {

                SimpleDateFormat simpleDateFormat = null

                if (parmaval.indexOf("-") != -1)
                    simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd")

                else if (parmaval.indexOf("/") != -1)
                    simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy")

                Date dt = null

                try {
                    dt = simpleDateFormat.parse(parmaval.trim())
                } catch (Exception sds) {
                    println("mac say: date format err: " + sds)
                }

                parameters.put(aparamName, dt)
            } else if (aparamType == "LIST") {
                try {
                    parameters.put(aparamName, new BigDecimal(parmaval.trim()))
                } catch (Exception sds) {
                    parameters.put(aparamName, parmaval)
                }
            } else if (aparamType == "TEXT") {
                parameters.put(aparamName, parmaval)
            }

            if (rdp.isMandatory && parmaval == null) {
                println(aparamName + " isMandatory but setting NULL.")
                return
            }
        }

        File file1 = new File(new File(grailsApplication.mainContext.servletContext.getRealPath('//')).parent, "knit_hcm_repo" + File.separator + "reports")

        String reportDir = file1.toString() + File.separator

        println("MAC Report Complete path: " + reportDir)
        println("MAC Report File Name: " + admReportMaster.fileName)
        String paramMap = parameters.toString()

        parameters.put('SUBREPORT_DIR', reportDir)
        parameters.put('REPORT_DIR', reportDir)
        parameters.put('IMAGE_DIR', reportDir)

        println("MAC Report Param: " + parameters)

        JasperReportDef reportDef
        if (action == "PDF") {
            reportDef = new JasperReportDef(name: admReportMaster.fileName, folder: reportDir, parameters: parameters, fileFormat: JasperExportFormat.PDF_FORMAT)
        } else if (action == "XLS") {
            parameters.put("IS_IGNORE_PAGINATION", Boolean.TRUE)
            reportDef = new JasperReportDef(name: admReportMaster.fileName, folder: reportDir, parameters: parameters, fileFormat: JasperExportFormat.XLS_FORMAT)
        } else if (action == "RTF") {
            reportDef = new JasperReportDef(name: admReportMaster.fileName, folder: reportDir, parameters: parameters, fileFormat: JasperExportFormat.RTF_FORMAT)
        }

        response.reset()
        // Some JSF component library or some Filter might have set some headers in the buffer beforehand. We want to get rid of them, else it may collide.

        String ttt = admReportMaster.title.replaceAll(" ", "_")
        //ttt = ttt.replaceAll(")", "_")
        //ttt = ttt.replaceAll("(", "_")
        //ttt = ttt.replaceAll("/", "_")
        ttt = ttt.replaceAll("-", "_")
        //ttt = ttt.replaceAll("\\", "_")

        SimpleDateFormat formatter = new SimpleDateFormat("ddMMMyy_HHmmss")
        ttt += "_" + formatter.format(new Date())
        ttt = ttt.toUpperCase()

        if (action == "PDF") {
            response.setContentType("application/pdf")
            response.setHeader("Content-disposition", "attachment; filename=" + ttt + ".pdf")
        } else if (action == "XLS") {
            response.setContentType("application/vnd.ms-excel")
            response.setHeader("Content-disposition", "attachment; filename=" + ttt + ".xls")
            // The Save As popup magic is done here. You can give it any filename you want, this only won't work in MSIE, it will use current request URL as filename instead.
        } else if (action == "RTF") {
            response.setContentType("application/rtf")
            response.setHeader("Content-disposition", "attachment; filename=" + ttt + ".rtf")
            // The Save As popup magic is done here. You can give it any filename you want, this only won't work in MSIE, it will use current request URL as filename instead.
        }

        try {
            ByteArrayOutputStream baos = jasperService.generateReport(reportDef)
            byte[] pppp = baos.toByteArray()
            int reportSize = pppp.length
            response.outputStream << pppp
            response.outputStream.flush()
            response.outputStream.close()

            long gnMs = System.currentTimeMillis() - stMs
            logged(currentLoggedInUser, admReportMaster, "OK", gnMs, paramMap, "", action, reportSize)
        } catch (Exception e) {
            long gnMs = System.currentTimeMillis() - stMs
            logged(currentLoggedInUser, admReportMaster, "ERR", gnMs, paramMap, "Err: " + e, action, 0)
            flash.message = "Report Has ERROR: " + e
            redirect(view: 'index')
        }

        return false
    }

    def logged(
            AuthUser currentLoggedInUser, AdmRptMst admReportMaster, String status, Long gnMs,
            String paramMap, String errMsg, String reportFormat, Integer reportSize) {
        try {

            AdmLogReportCall ggg = new AdmLogReportCall(
                    trnscTime: new Date(),
                    authUser: currentLoggedInUser,
                    admRptMst: admReportMaster,
                    reportFileName: admReportMaster.fileName,
                    status: status,
                    genMs: gnMs
            )
            ggg.setParamMap(paramMap)
            ggg.setErrMsg(errMsg)
            ggg.setReportFormat(reportFormat)
            ggg.setReportSize(reportSize)
            ggg.save(flush: true)
        } catch (Exception jk) {
            println("rep log err save : " + jk)
        }
    }

    void loadReport() {

        try {
            File file1 = new File(new File(grailsApplication.mainContext.servletContext.getRealPath('//')).parent + File.separator + "knit_hcm_repo" + File.separator + "reports")

            File fXmlFile = new File(file1, "payroll_register.jrxml")
            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance()
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder()
            Document doc = dBuilder.parse(fXmlFile)

            doc.getDocumentElement().normalize()

            println("Root element :" + doc.getDocumentElement().getNodeName())

            NodeList nList = doc.getElementsByTagName("parameter")

            for (int temp = 0; temp < nList.getLength(); temp++) {

                Node nNode = nList.item(temp)

                if (nNode.getNodeType() == Node.ELEMENT_NODE) {

                    Element eElement = (Element) nNode

                    String isOk = eElement.getAttribute("isForPrompting")

                    if (isOk.equals("true") || isOk.equals("")) {
                        println("name id : " + eElement.getAttribute("name"))
                        println("class id : " + eElement.getAttribute("class"))
                    }
                }
            }
        } catch (Exception e) {
            println("err: " + e)
        }
    }
}