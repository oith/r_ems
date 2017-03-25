package org.reflection.adm

import grails.converters.JSON
import hrms.Proc

import java.sql.CallableStatement
import java.sql.Connection
import java.sql.SQLException

class _MasterReportController {
    def sessionFactory
    def dataSource

    def index() {

    }

    def getDbText() {

        Connection conn = dataSource.getConnection()
        CallableStatement cs = null
        String GLOBAL_REPORT_CATEGORY = params['GLOBAL_REPORT_CATEGORY']
        String col_id = params['col_id']
        String wheres = params['wheres']


        println("GLOBAL_REPORT_CATEGORY: " + GLOBAL_REPORT_CATEGORY + " col_id: " + col_id)


        String tranceId
        try {

            cs = conn.prepareCall("{ call gen_json(?,?,?,?,?) }")

            cs.setObject(1, GLOBAL_REPORT_CATEGORY)
            cs.setObject(2, col_id)
            cs.setObject(3, null)
            cs.setObject(4, wheres)
            cs.registerOutParameter(5, java.sql.Types.VARCHAR)

            cs.executeUpdate()

            tranceId = cs.getString(5)

        } catch (SQLException e) {
            System.out.println("SQLException ## FdtBilling.calcPayment()" + e.getMessage())
            flash.error = "An internal error occurred please check error message : " + e
        } finally {
            if (cs != null) {
                cs.close()
            }
            if (conn != null) {
                conn.close()
            }
        }

        render tranceId
    }

    def getDynTab() {

        println("======================================= Report Calling ========================================================")

        Map<String, Object> searchParameter = new LinkedHashMap()

        searchParameter.put("GLOBAL_REPORT_CATEGORY", params['GLOBAL_REPORT_CATEGORY'])
        searchParameter.put("ADM_OM_SG_ID", params['ADM_OM_SG_ID'])
        searchParameter.put("ADM_OM_LE_ID", params['ADM_OM_LE_ID'])
        searchParameter.put("ADM_OM_OU_ID", params['ADM_OM_OU_ID'])
        searchParameter.put("ADM_INV_ORG_ID", params['ADM_INV_ORG_ID'])
        searchParameter.put("ADM_OM_DIV_ID", params['ADM_OM_DIV_ID'])
        searchParameter.put("ADM_OM_DPT_ID", params['ADM_OM_DPT_ID'])
        searchParameter.put("ADM_OM_SEC_ID", params['ADM_OM_SEC_ID'])
        searchParameter.put("ADM_OM_UNIT_ID", params['ADM_OM_UNIT_ID'])
        searchParameter.put("PAY_TYPE", params['PAY_TYPE'])
        searchParameter.put("EMP_TYPE", params['EMP_TYPE'])
        searchParameter.put("ADM_DESG_ID", params['ADM_DESG_ID'])
        searchParameter.put("EMP_GRP", params['EMP_GRP'])
        String NUMBER_OF_RECORD = params['NUMBER_OF_RECORD']

        String query = "SELECT * FROM " + params['GLOBAL_REPORT_CATEGORY'] + " WHERE 1=1 "

        if (!NUMBER_OF_RECORD.equals("ALL")) {
            query += " AND ROWNUM <=" + NUMBER_OF_RECORD
        }

        println("kkkk: " + query)

        List omits = ['action', 'format', 'controller', 'GLOBAL_REPORT_CATEGORY', 'NUMBER_OF_RECORD']

        for (String kkk : params.keySet()) {

            if (omits.contains(kkk))
                continue

            if (params.get(kkk) != null && !params.get(kkk).toString().isEmpty() && params.get(kkk) != '')
                query += " AND " + kkk + " = '" + params.get(kkk) + "' "
        }

        query += " ORDER BY EMP_CODE "

        println("kkkk: " + query)

        Connection conn = sessionFactory.getCurrentSession().connection()
        Map<String, String> kkkk = Proc.getDynamicHtmlTable(conn, query, new LinkedHashMap())

        println("kkkk: " + kkkk)
        render(kkkk as JSON)

        // String dataTable=kkkk.get("DATA_TABLE");

//        String query = getQueryString(searchParameter)
//
//        def lstMtPrmAssgnmnt = ProcOutEmp.executeQuery(query, [max: params.max, offset: params?.offset == null ? 0 : params.offset])
//
//        query = query.replaceAll("SELECT z FROM ", "SELECT COUNT(z) FROM ")
//
//        def empListCount = ProcOutEmp.executeQuery(query).get(0)
//
//        render(view: "index", model: [empList: lstMtPrmAssgnmnt, empListCount: empListCount, sg: params.admOrgMstSg, searchValue: searchParameter])
    }

    String getQueryString(map) {


        String query = "SELECT z FROM hrms.ProcOutEmp z " + "\n" +
                " WHERE 1=1 " + "\n"
        String idss = map.anyFieldValue
        if (idss != null && !idss.trim().isEmpty()) {
            idss = idss.trim()
            switch (map.anyField) {
                case 'Employee ID':
                    if (idss.indexOf(",") != -1) {
                        String str = ""
                        for (String sss : idss.split(",")) {
                            str += "'" + sss.trim() + "',"
                        }
                        str = str.substring(0, str.length() - 1)
                        query += " AND z.empCode IN (" + str + ") " + "\n"
                    } else {
                        query += " AND z.empCode='" + idss + "'" + "\n"
                    }
                    break
                case 'Name':
                    query = query + " AND UPPER(z.empName) LIKE '%" + idss.toUpperCase() + "%'" + "\n"
                    break
                case 'Father Name':
                    query = query + " AND UPPER(z.fatherName) LIKE '%" + idss.toUpperCase() + "%' " + "\n"
                    break
                case 'Date Of Birth(dd/MM/yyyy)':
                    query = query + " AND TRUNC(z.dob) = TO_DATE('" + idss + "','DD/MM/RRRR') " + "\n"
                    break
                case 'Mobile':
                    query = query + " AND z.mobile = '" + idss + "' " + "\n"
                    break
                case 'Joining Date(dd/MM/yyyy)':
                    query = query + " AND TRUNC(z.joiningDate) = TO_DATE('" + idss + "','DD/MM/RRRR') " + "\n"
                    break
                case 'Reference':
                    query = query + " AND UPPER(z.empRefs) LIKE '%" + idss.toUpperCase() + "%'" + "\n"
                    break
                case 'Old ID (KAL-XXXX0123)':
                    query = query + " AND UPPER(z.empOldId) LIKE '%" + idss.toUpperCase() + "%'\n"
                    break
                case 'Face ID':
                    query = query + " AND z.faceId =" + idss.toUpperCase() + "\n"
                    break
            }
        }
        if (map.empSts != null)
            query += " AND z.empGrp = '" + map.empSts + "' " + "\n"
        if (map.empCat != null)
            query += " AND z.empCat = '" + map.empCat + "' " + "\n"
        if (map.alkpBloodGrp != null && !(map.alkpBloodGrp + "").isEmpty())
            query += " AND z.alkpBloodGrp.id = " + map.alkpBloodGrp + " " + "\n"
        if (map.admOrgMstDpt != null && !(map.admOrgMstDpt + "").isEmpty() && map.admOrgMstDpt != "0")
            query += " AND z.admPosition.admStructOrg.admOrgMstDpt.id = " + map.admOrgMstDpt + " " + "\n"
        if (map.admOrgMstLe != null && !(map.admOrgMstLe + "").isEmpty() && map.admOrgMstLe != "0")
            query += " AND z.admPosition.admStructOrg.admStructInvOrg.admOrgMstLe.id = " + map.admOrgMstLe + " " + "\n"
        if (map.admOrgMstSg != null && !(map.admOrgMstSg + "").isEmpty() && map.admOrgMstSg != "0")
            query += " AND z.admPosition.admStructOrg.admStructInvOrg.admOrgMstSg.id = " + map.admOrgMstSg + " " + "\n"
        if (map.admInvOrg != null && !(map.admInvOrg + "").isEmpty() && map.admInvOrg != "0")
            query += " AND z.admPosition.admStructOrg.admStructInvOrg.admInvOrg.id = " + map.admInvOrg + " " + "\n"
        if (map.admOrgMstOu != null && !(map.admOrgMstOu + "").isEmpty() && map.admOrgMstOu != "0")
            query += " AND z.admPosition.admStructOrg.admStructInvOrg.admOrgMstOu.id = " + map.admOrgMstOu + " " + "\n"
        if (map.get("isShowRecent") != null && map.get("isShowRecent").equals("on"))
            query += " ORDER BY z.joiningDate DESC"
        else
            query += " ORDER BY z.hrCrEmp"

        println('mac query:\n' + query)

        return query
    }
}


