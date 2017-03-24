package hrms;

import org.reflection.adm.WidgetType;
import org.reflection.adm.ZoneType;

import javax.servlet.http.HttpServletRequest;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;

public class Proc {

    private Long userId;
    private Connection conn;

    public Proc() {
    }

    public Proc(final Connection conn) {
        this(conn, null);
    }

    public Proc(final Connection conn, final Long userId) {
        this.conn = conn;
        this.userId = userId;
    }

    public void setConn(final Connection conn) {
        this.conn = conn;
    }

    public static String genMenu(String ddf, long iii, Map<Long, List<Long>> dest, Map<Long, String> namx, Map<Long, String> urlx) {

        ddf += "<li><a href='#'>" + namx.get(iii) + "</a>\n";
        ddf += "<ul>\n";

        List<Long> kkkk = dest.get(iii);

        if (kkkk != null) {
            for (Long iiidd : kkkk) {
                if (dest.containsKey(iiidd)) {
                    ddf = genMenu(ddf, iiidd, dest, namx, urlx);
                    ddf += "</li>\n";
                } else {
                    ddf += "<li><a href='" + urlx.get(iiidd) + "'>" + namx.get(iiidd) + "</a></li>\n";
                }
            }

        }
        ddf += "</ul>\n";

        return ddf;
    }

    public String getTableOnlyAprvl(String query, String controllerName) {
//     public String getTableOnlyAprvl(String query) {
        String tableHead = null;
        String tableRow = null;

        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            ResultSetMetaData metaData = resultSet.getMetaData();
            int numberOfColumns = metaData.getColumnCount();

            for (int column = 1; column <= numberOfColumns; column++) {
                String tableHeadx = metaData.getColumnLabel(column);
                if (tableHeadx.equalsIgnoreCase("id")) {
                    continue;
                }
                tableHeadx = getInitCap(tableHeadx);
                tableHead += "<th>" + tableHeadx + "</th>";
            }

            int j = 1;
            while (resultSet.next()) {
                tableRow += "<tr>";
                String showLink = "/" + controllerName + "/show/" + resultSet.getObject(1);
//                String showLink = "${request.contextPath}/" + controllerName + "/show/" + resultSet.getObject(1);
                tableRow += "<td>" + "<a href='" + showLink + "'>" + resultSet.getObject(2) + "</a></td>";
                for (int i = 3; i <= numberOfColumns; i++) {
                    tableRow += "<td>" + resultSet.getObject(i) + "</td>";
                }
                tableRow += "</tr>";
                j++;
            }

            resultSet.close();
            statement.close();
        } catch (SQLException ex) {
            System.err.println(ex);
        }

        String table = "<table  class=\"style-table\">" + tableHead + tableRow + "</table>";

        return " <div style='width: 995px; height: 450px; margin: auto; overflow-x: scroll; overflow-y: scroll;'>" + table + "</div>";
    }

    public String getSingleRecShow(String query) {
//     public String getTableOnlyAprvl(String query) {
        String tableHead = null;
        String tableRow = null;

        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            ResultSetMetaData metaData = resultSet.getMetaData();
            int numberOfColumns = metaData.getColumnCount();

            for (int column = 1; column <= numberOfColumns; column++) {
                String tableHeadx = metaData.getColumnLabel(column);
                /*  if (tableHeadx.equalsIgnoreCase("id")) {
                 continue;
                 }*/
                tableHeadx = getInitCap(tableHeadx);
                tableHead += "<th>" + tableHeadx + "</th>";
            }

            int j = 1;
            while (resultSet.next()) {
                tableRow += "<tr>";
                for (int i = 1; i <= numberOfColumns; i++) {
                    tableRow += "<td>" + resultSet.getObject(i) + "</td>";
                }
                tableRow += "</tr>";
                j++;
            }

            resultSet.close();
            statement.close();
        } catch (SQLException ex) {
            System.err.println(ex);
        }

        String table = "<table  class=\"style-table\">" + tableHead + tableRow + "</table>";

//        return " <div style='width: 995px; height: 450px; margin: auto; overflow-x: scroll; overflow-y: scroll;'>" + table + "</div>";
        return " <div style='width: 995px; margin: auto; overflow-x: scroll;'>" + table + "</div>";
    }

    public List<Map> getListFromDB(final String qury) {

        List<Map> isMandatory = null;
        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(qury);
            isMandatory = new ArrayList<Map>();
            while (resultSet.next()) {
                Map<String, Object> mm = new HashMap<String, Object>();

                Object k = resultSet.getObject(1);
                mm.put("id", k);

                Object s = resultSet.getObject(2);
                mm.put("show", s);
                isMandatory.add(mm);
            }
            resultSet.close();
            statement.close();
        } catch (Exception e) {
        }
        return isMandatory;
    }

    public Object getSingleValFromDB(final String qury) {

        Object obj = null;
        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(qury);
            while (resultSet.next()) {
                obj = resultSet.getObject(1);
                break;
            }
            resultSet.close();
            statement.close();
        } catch (Exception e) {
        }
        return obj;
    }

    public Map<String, Object> getProcPageMap(final Long processId) {

        Map<String, Object> objMap = new HashMap<String, Object>();

        //String query = "SELECT  COALESCE(A.DEFAULT_VAL,P.DEFAULT_VAL), UPPER(TRIM (COALESCE(A.WIDGET_IDENTITY,P.PARAM_NAME))) FROM ADM_PROC_DTL A,  ADM_PARAM P WHERE ADM_PROC_MST_ID = " + processId + " AND A.ADM_PARAM_ID =P.ID AND ADM_PARAM_ID IS NOT NULL AND A.IS_ACTIVE = 1 AND ZONE_TYPE = '" + ZoneType.SEARCH.toString() + "'  ORDER BY SL_NO ";

        String query = "SELECT DEFAULT_VAL, WIDGET_IDENTITY FROM CALL_VU_ADM_PROC_DTL WHERE ADM_PROC_MST_ID = " + processId + " AND IS_ACTIVE = 1 AND ZONE_TYPE = '" + ZoneType.SEARCH + "' ORDER BY SL_NO";

        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {

                //Integer isMandatory = resultSet.getInt("IS_MANDATORY");
                //String widgetType = resultSet.getString("WIDGET_TYPE");
                //String det_cmd = resultSet.getString("CMD");

                String defaultValue = resultSet.getString(1);
                String widgetIdentity = resultSet.getString(2);

                Object kkk = null;
                if (defaultValue != null) {

                    String kkka = defaultValue.trim().toUpperCase();
                    if ((kkka.startsWith("SELECT") && kkka.indexOf("FROM") != -1)) {
                        kkk = getSingleValFromDB(defaultValue);
                    } else {
                        String ghgh = defaultValue.trim();
                        if (ghgh.startsWith("'") && ghgh.endsWith("'")) {
                            kkk = getSingleValFromDB("SELECT " + defaultValue + " FROM DUAL");
                        } else {
                            kkk = getSingleValFromDB("SELECT '" + defaultValue + "' FROM DUAL");
                        }
                    }
                }

                objMap.put(widgetIdentity, kkk);
            }
        } catch (Exception hh) {
            System.out.println("1133 mac 66666 tyty errr:" + hh);
        }

        return getProcPageMap(processId, objMap);
    }

    public Map<String, Object> getProcPageMap(final Long processId, final Map<String, Object> objMap) {

        Map<String, Object> mapper = new HashMap<String, Object>();

        Map<String, String> searcherIdsx = new HashMap<String, String>();
        String searcher = "";
        String paramer = "";
        String btner = "";
        String qparams = "";
        String fparams = "";
        String query = "SELECT ZONE_TYPE, IS_MANDATORY, WIDGET_LABEL, HELP_TEXT, DEFAULT_VAL, widget_Type,CMD, WIDGET_IDENTITY,id FROM CALL_VU_ADM_PROC_DTL WHERE ADM_PROC_MST_ID = " + processId + " AND IS_ACTIVE = 1 ORDER BY ZONE_TYPE,SL_NO";

        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {

                String zoneType = resultSet.getString(1);
                Integer isMandatory = resultSet.getInt(2);

                String widgetLabel = resultSet.getString(3);
                String helpText = resultSet.getString(4);
                String defaultValue = resultSet.getString(5);
                String widgetType = resultSet.getString(6);
                String det_cmd = resultSet.getString(7);
                String widgetIdentity = resultSet.getString(8);
                Integer detID = resultSet.getInt(9);
                String reqIndication = "";
                String req = "";
                String reqlab = "";
                Object strdef = null;
                String defSelect = "";
                String disable = "";

                try {
                    if (zoneType.equals(ZoneType.PARAM_FIXED.toString())) {
                        fparams = fparams + widgetIdentity + ",";
                    }
                } catch (Exception ec) {
                }
                try {
                    if (zoneType.equals(ZoneType.PARAM_QU.toString())) {
                        qparams = qparams + widgetIdentity + ",";
                    }
                } catch (Exception ec) {
                }


                if (isMandatory != null) {
                    if (isMandatory == 1) {
                        reqIndication = "*";
                        req = " required='required' ";
                    } else {
                        disable = " disabled='disabled' ";
                    }
                }

                if (widgetLabel != null) {
                    reqlab = widgetLabel;
                }

                if (helpText == null) {
                    helpText = reqlab;
                }

                String rrrrrr = "";
                if (reqIndication.equals("*"))
                    rrrrrr = "<span class='required-indicator'> " + reqlab + reqIndication + "</span>";
                else
                    rrrrrr = reqlab;

                if (zoneType.equals(ZoneType.SEARCH.toString())) {
                    searcherIdsx.put(widgetIdentity, widgetType);
                    searcher += "<div class='col-xs-12 col-sm-6'><div class='form-group'>" + "<label for='" + reqlab + "'>" + "<span'> " + reqlab + reqIndication + "</span></label>";
                } else if (zoneType.equals(ZoneType.PARAM_FIXED.toString()) && !(widgetType.equals(WidgetType.UUID.toString()))) {// && !(widgetType.equals(WidgetType.QU_PARAM_INVISIBLE.toString()) || widgetType.equals(WidgetType.QU_PARAM_VISIBLE.toString()))) {
                    paramer += "<div class='col-xs-12 col-sm-6'><div class='form-group'>" + "<label for='" + reqlab + "'>" + rrrrrr + "</label>";
                } else if (zoneType.equals(ZoneType.PROCESS_BTN.toString())) {
//                    btner += "<button onclick='executeProcess(this.id)' class='btn btn-primary' title= '" + helpText + "' type='button' name='" + widgetIdentity + "' id='" + widgetIdentity + "' " + disable + ">" + reqlab + "</button>";
                    btner += "<div class='left'><button type='button' class='btn btn-warning' name='" + widgetIdentity + "' id='" + widgetIdentity + "' title='" + helpText + "' " + disable + "   onclick='executeProcess(this.id)'> " + helpText + "</button></div><br/>";
                }


                if (defaultValue != null) {

                    String kkka = defaultValue.trim().toUpperCase();

                    if ((kkka.startsWith("SELECT") && kkka.indexOf("FROM") != -1)) {
                        strdef = getSingleValFromDB(defaultValue);
                    } else {
                        String ghgh = defaultValue.trim();
                        if (ghgh.startsWith("'") && ghgh.endsWith("'")) {
                            strdef = getSingleValFromDB("SELECT " + defaultValue + " FROM DUAL");
                        } else if (ghgh.length() == 0) {
                            strdef = "";
                        } else {
                            strdef = getSingleValFromDB("SELECT '" + defaultValue + "' FROM DUAL");
                        }
                    }

                    defSelect = "selected";
                } else {
                    strdef = "";
                }

                if (widgetType != null) {

//                    if (widgetType.equals(WidgetType.MODAL.toString())) {
//
////                        <g:render template="../allOrgModal" model="[paramHidAllOrgId: 'hidAllOrgId', paramAllOrgTitleId: 'divAllOrgTitleId']"></g:render>
//                        if (zoneType.equals(ZoneType.SEARCH.toString())) {
//                            searcher +=
//                                    "<div id='divAllOrgTitleId' style='display: inline-block; border-style: none; margin-right: 10px;'>" + "  No organization selected" + "</div>"
//                                            + "<input id='P_ALL_ORG_ID' type='hidden' name='P_ALL_ORG_ID'>"
//                                            + "<input type='button' class='btnOrgModal' id='_allOrgModal' value='Select Organization' onclick='return openModal();'></input>";
//
//                        }
//                    }

                    if (widgetType.equals(WidgetType.PASSWORD.toString())) {

                        if (zoneType.equals(ZoneType.SEARCH.toString())) {
                            searcher += "<input class='form-control' type='" + widgetType + "' name='" + widgetIdentity + "' id='" + widgetIdentity + "' value='" + strdef + "' " + req + "/>";
                        } else if (zoneType.equals(ZoneType.PARAM_FIXED.toString()) || zoneType.equals(ZoneType.PARAM_QU.toString())) {
                            paramer += "<input class='form-control' type='" + widgetType + "' name='" + widgetIdentity + "' id='" + widgetIdentity + "' value='" + strdef + "' " + req + "/>";
                        }

                    } else if (widgetType.equals(WidgetType.TEXT.toString())) {

                        if (zoneType.equals(ZoneType.SEARCH.toString())) {
                            searcher += "<input class='form-control' type='" + widgetType + "' name='" + widgetIdentity + "' id='" + widgetIdentity + "' value='" + strdef + "' " + req + "/>";
                        } else if (zoneType.equals(ZoneType.PARAM_FIXED.toString()) || zoneType.equals(ZoneType.PARAM_QU.toString())) {
                            paramer += "<input class='form-control' type='" + widgetType + "' name='" + widgetIdentity + "' id='" + widgetIdentity + "' value='" + strdef + "' " + req + "/>";
                        }

                    } else if (widgetType.equals(WidgetType.DATE.toString())) {

                        if (zoneType.equals(ZoneType.SEARCH.toString())) {
                            searcher += "<input type='text' class='form-control date' ";
                            searcher += "name='";
                            searcher += widgetIdentity;
                            searcher += "' id='";
                            searcher += widgetIdentity;
                            searcher += "' value='";
                            searcher += strdef;
                            searcher += "'/>";
                        } else if (zoneType.equals(ZoneType.PARAM_FIXED.toString()) || zoneType.equals(ZoneType.PARAM_QU.toString())) {
                            paramer += "<input type='text' class='form-control date' ";
                            paramer += " name='";
                            paramer += widgetIdentity;
                            paramer += "' id='";
                            paramer += widgetIdentity;
                            paramer += "' value='";
                            paramer += strdef;
                            paramer += "'/>";
                        }

                    } else if (det_cmd != null) {

                        if (widgetType.equals(WidgetType.LIST.toString())) {

                            List<Map> optionList = getListFromDB(det_cmd);

                            System.out.println("optionList:" + optionList + "kkkkkkkkk:" + strdef);
                            String optSb = new String();
                            optSb += "<option value=''>Select</option>";

                            if (optionList != null) {
                                for (Map p : optionList) {
                                    Object idx = p.get("id");
                                    Object showx = p.get("show");

                                    if ((strdef instanceof String && idx instanceof String && strdef.equals(idx))
                                            || (strdef instanceof String && idx instanceof Number && strdef.equals(idx + ""))
                                            || (strdef instanceof Number && idx instanceof String && idx.equals(strdef + ""))) {
                                        optSb += "<option " + defSelect + " value='" + idx + "'>" + showx + "</option>";
                                    } else if (strdef instanceof Date && idx instanceof Date && strdef.equals(idx)) {
                                        optSb += "<option " + defSelect + " value='" + idx + "'>" + showx + "</option>";
                                    } else if (strdef instanceof Number && idx instanceof Number && strdef.equals(idx)) {
                                        optSb += "<option " + defSelect + " value='" + idx + "'>" + showx + "</option>";
                                    } else {
                                        optSb += "<option value='" + idx + "'>" + showx + "</option>";
                                    }
                                }
                            }

                            if (zoneType.equals(ZoneType.SEARCH.toString())) {
                                searcher += "<Select class='form-control' name='" + widgetIdentity + "' id='" + widgetIdentity + "' " + req + ">" + optSb + "</select>";
                            } else if (zoneType.equals(ZoneType.PARAM_FIXED.toString()) || zoneType.equals(ZoneType.PARAM_QU.toString())) {
                                paramer += "<Select class='form-control' name='" + widgetIdentity + "' id='" + widgetIdentity + "' " + req + ">" + optSb + "</select>";
                            }


                        } else if (widgetType.equals(WidgetType.LIST_FIXED.toString())) {
                            String optSb = new String();
                            optSb += "<option value='-1'>Select</option>";
                            String[] lstFixed = det_cmd.split(",");

                            Integer ss = 0;
                            for (String xxx : lstFixed) {

                                if (strdef.equals(ss + "")) {
                                    optSb += "<option " + defSelect + " value='" + ss + "'>" + xxx + "</option>";
                                } else {
                                    optSb += "<option value='" + ss + "'>" + xxx + "</option>";
                                }
                                ss++;
                            }

                            if (zoneType.equals(ZoneType.SEARCH.toString())) {
                                searcher += "<Select class='form-control' name='" + widgetIdentity + "' id='" + widgetIdentity + "'>" + optSb + "</select>";
                            } else if (zoneType.equals(ZoneType.PARAM_FIXED.toString()) || zoneType.equals(ZoneType.PARAM_QU.toString())) {
                                paramer += "<Select class='form-control' name='" + widgetIdentity + "' id='" + widgetIdentity + "'>" + optSb + "</select>";
                            }
                        }
                    }
                }
                if (zoneType.equals(ZoneType.SEARCH.toString())) {
                    searcher += "</div></div>";
                } else if (!paramer.isEmpty() && (zoneType.equals(ZoneType.PARAM_FIXED.toString()) || zoneType.equals(ZoneType.PARAM_QU.toString()))) {
                    paramer += "</div></div>";
                }
            }
            resultSet.close();
            statement.close();

        } catch (Exception hhh) {
            hhh.printStackTrace(System.out);
            System.out.println("mac say err 0606: " + hhh);
        }


        String searcher_btner = "";

        if (!searcher.isEmpty()) {
            searcher_btner = "<div class='right'><button onclick='getDynamicTable()' class='btn btn-primary' title= '" + "Press to Search" + "' type='button' name='search' id='search' >" + "Search" + "</button></div>";
            searcher = "<fieldset class='fsStyle'>" +
                    "<legend class='legendStyle'><h4>Search Parameter</h4></legend>" +
                    searcher +
                    "</fieldset>";

        }

        if (!paramer.isEmpty()) {
            paramer = "<fieldset class='fsStyle'>" +
                    "<legend class='legendStyle'><h4>Fixed Parameter</h4></legend>" +
                    paramer +
                    "</fieldset>";
        }

        mapper.put("searcherIds", searcherIdsx);
        mapper.put("searcher", searcher);
        mapper.put("searcher_btner", searcher_btner);
        mapper.put("paramer", paramer);
        mapper.put("btner", btner);
        try

        {
            qparams = qparams.substring(0, qparams.length() - 1);
            mapper.put("qparams", qparams);
        } catch (
                Exception e
                )

        {
        }

        try {
            fparams = fparams.substring(0, fparams.length() - 1);
            mapper.put("fparams", fparams);
        } catch (Exception e) {
        }

        return mapper;
    }

    public Map<String, String> getTableOnly(final Long processId, final Map<String, Object> objMap) { //, String currSprId, String empId, String deptId) {

        Map<String, String> tblMap = new HashMap();
        String tableHead = new String();
        String tableRow = new String();
        String query = getSingleValFromDB("SELECT CMD FROM ADM_PROC_MST WHERE ID = " + processId) + "";

        List<String> invisColParm = new ArrayList();
        List<String> inputColParm = new ArrayList();
        List<String> colParma = new ArrayList();

        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT WIDGET_IDENTITY, WIDGET_TYPE  FROM CALL_VU_ADM_PROC_DTL WHERE ADM_PROC_MST_ID = " + processId + " AND IS_ACTIVE = 1 AND UPPER (TRIM (ZONE_TYPE))='PARAM_QU'  ORDER BY SL_NO");

            while (resultSet.next()) {
                // String cmd = resultSet.getString("CMD");
                String widgetIdentity = resultSet.getString(1);
                String widgetType = resultSet.getString(2);

                colParma.add(widgetIdentity);

                if (widgetType.equals(WidgetType.HIDE.toString())) {
                    invisColParm.add(widgetIdentity);
                } else if (widgetType.equals(WidgetType.INPUT.toString())) {
                    inputColParm.add(widgetIdentity);
                }
            }
            resultSet.close();
            statement.close();
        } catch (Exception e) {
            System.out.println("MacDynamo Err 0149:" + invisColParm);
        }

        try {
            String hjhjhjh = query;
            for (String jkjk : objMap.keySet()) {

                Object vvv = objMap.get(jkjk);
                String orpn = "null";
                if (vvv != null) {

                    if (vvv instanceof String) {
                        if (vvv.toString().trim().length() == 0) {
                            orpn = "null";
                        } else {
                            orpn = "'" + vvv + "'";
                        }
                    } else if (vvv instanceof Date) {
                        // System.out.println("rrrrrrrrrrrrrrrr vvv"+((Date) vvv));
                        SimpleDateFormat klkl = new SimpleDateFormat("ddMMyyyy");
                        orpn = "TO_DATE('" + klkl.format((Date) vvv) + "','DDMMYYYY')";
                    } else if (vvv instanceof Number) {
                        orpn = vvv + "";
                    }
                }
                hjhjhjh = hjhjhjh.replaceAll(":" + jkjk, orpn);
            }
            hjhjhjh = hjhjhjh.replaceAll(":P_CURR_USER_ID", userId.toString());

            //
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(hjhjhjh);
            ResultSetMetaData metaData = resultSet.getMetaData();
            int numberOfColumns = metaData.getColumnCount();

            tableHead += "<th>Select All<br><input type='checkbox' id='checkAll'/></th>";

            List<String> colAll = new ArrayList();

            for (int i = 1; i <= numberOfColumns; i++) {

                String colx = metaData.getColumnLabel(i);
                colAll.add(colx);


                if (invisColParm.contains(colx)) {
                    continue;
                }

                String tableHeadx = colx;
                /*      if (colx.startsWith("MAC_")) {
                 tableHeadx = colx.substring(4);
                 }*/
                tableHeadx = getInitCap(tableHeadx);
                tableHead += "<th>" + tableHeadx + "</th>";
            }

            int j = 1;

            while (resultSet.next()) {

                tableRow +=
                        "<tr>" +
                                "   <td class='center'>" +
                                "       <input type='checkbox' name='row." + j + "' class='chkAplc' value='row." + j + "'/>" +
                                "   </td>";
                for (int i = 0; i < colAll.size(); i++) {

                    String colname = colAll.get(i);
                    String isHedn = "";
                    String hdnOrtxt = "text";
                    if (invisColParm.contains(colname)) {
                        isHedn = "style='display:none'";
                        hdnOrtxt = "hidden";
                    }

                    String ident = "";
                    String valx = null;
                    if (colParma.contains(colname)) {
                        ident = "id='" + colname + j + "'";
                        valx = " value='" + resultSet.getObject(colname) + "'";

                    }

                    if (inputColParm.contains(colname)) {
                        tableRow += "<td " + isHedn + ">" + "<input " + ident + valx + " type='" + hdnOrtxt + "'></input></td>";
                    } else {

                        if (valx != null) {
                            tableRow += "<td style=' display:none'>" + "<input " + ident + valx + " type='hidden'></input></td>";
                        } else {
                            if (colname.toUpperCase().equals("URL")) {
                                String dd = "/" + resultSet.getObject(colname);
                                String urlLink = "<a href='" + dd + "' target='_blank'>" + "Show Details" + "</a>";
                                tableRow += "<td " + isHedn + " " + ident + " >" + urlLink + "</td>";
                            } else {
                                Object tdValue = resultSet.getObject(colname);
                                if (tdValue == null) {
                                    tdValue = "";
                                }
                                tableRow += "<td " + isHedn + " " + ident + " >" + tdValue + "</td>";
                            }
                        }
                    }
                }
                tableRow += "</tr>";
                j++;
            }

            String dataTable = "";

            dataTable = "<table id='example' class='dataListTable table-bordered table-striped table-hover' style='width:100%'> " + tableHead + tableRow + "</table>";

            tblMap.put("TOTAL_RECORD", Integer.toString(j - 1));
            tblMap.put("DATA_TABLE", dataTable);

            resultSet.close();
            statement.close();

        } catch (SQLException ex) {
            System.err.println(ex);
        }

        return tblMap;
    }

    public Map<String, String> test2() {
        Map<String, String> aa = new HashMap();
        String val = "<td>" + "<a href='adddd'>" + "<img width=\"50\" height=\"50\" src=\\" + System.getProperty("user.dir") + "\\web-app\\images\\repository\\HrCrEmp\\PIC_\\1890-001.jpg\" alt=\"Fawkner Park\"></a></td>";
        aa.put("Data", val);
        return aa;
    }

    public Map<String, String> getTableOnlyEmpSearch(String query, String ctrlrName, String actionName, Set notShowCol) {

        Map<String, String> mpEmployeeList = new HashMap();

        String tableHead = new String();
        String tableRow = new String();

        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            ResultSetMetaData metaData = resultSet.getMetaData();
            int numberOfColumns = metaData.getColumnCount();
            int empCodeColumnIndex = 0;
            int empImgColumnIndex = 0;
            String empCodeCol = "";
            String empPicCol = "";


            tableHead += "<th> Sl No. </th>";
            for (int column = 1; column <= numberOfColumns; column++) {

                String tableHeadx = metaData.getColumnLabel(column);

                if (notShowCol.contains(tableHeadx.toUpperCase())) {
                    continue;
                }

                if (tableHeadx.toUpperCase().equals("PHOTO/~ID")) {

                    empImgColumnIndex = column;
                    empCodeColumnIndex = column;
                }

                tableHeadx = tableHeadx.replace("~", "<br>");
                tableHead += "<th>" + tableHeadx + "</th>";
            }

            int j = 1;
            InetAddress ip;
            ip = InetAddress.getLocalHost();
            HttpServletRequest request = null;
            System.getProperty("user.dir");

            String trCls = "";
            while (resultSet.next()) {

                if (j > 1000) {
                    j++;
                    continue;
                }
                if (j % 2 == 0) {
                    trCls = "class='even'";
                } else {
                    trCls = "class='odd'";
                }

                tableRow += "<tr " + trCls + ">";
                tableRow += "<td>" + j + "</td>";
                for (int i = 1; i <= numberOfColumns; i++) {
                    String tableHeadx = metaData.getColumnLabel(i);
                    if (notShowCol.contains(tableHeadx.toUpperCase())) {
                        continue;
                    }

                    if (i == empCodeColumnIndex) {
                        String empCodePic = "";
                        String[] codePic;
                        try {
                            empCodePic = resultSet.getObject("PHOTO/~ID") + "";
                            codePic = empCodePic.split("~");

                            String showLink = "${request.contextPath}/" + ctrlrName + "/" + actionName + "/" + resultSet.getObject("EMP_ID");
                            if (codePic.length == 2) {
                                //todo ata change korte hobe context path
                                tableRow += "<td><a href='" + showLink + "'><img width='50' height='50' src=http://" + ip.getHostAddress() + ":9003/knit_hcm/" + codePic[1] + " alt='No Image Found'></a>";
                                tableRow += "<br>";
                                tableRow += "<a href='" + showLink + "'>" + codePic[0] + "</a></td>";
                            } else {
                                tableRow += "<td>" + "<a href='" + showLink + "'>" + codePic[0] + "</a></td>";
                            }


                        } catch (Exception exx) {
                            System.out.println(empCodePic + "   " + exx.toString());
                        }
                    } /*                    else if(i == empImgColumnIndex)
                     {
                     String showLink = "${request.contextPath}/" + ctrlrName + "/" + actionName + "/"+ resultSet.getObject("EMP_ID");

//todo ata kintu korte hobe context path
                     tableRow += "<td>" + "<a href='" + showLink + "'><img width=\"50\" height=\"50\" src=http://" + ip.getHostAddress() + ":8080/HRMS/"+resultSet.getObject("PHOTO/~ID") +" alt=\"No Image Found\"></a></td>";
                     }*/ else {
                        String rcrdValue = resultSet.getObject(i) + "";
                        rcrdValue = rcrdValue.replace("~", "<br>");
                        if (rcrdValue.equals("null")) {
                            rcrdValue = "";
                        }

                        if (rcrdValue.contains("ACTIVE")) {
                            String[] parts = rcrdValue.split("ACTIVE");
                            String part1 = parts[0]; // 004
//                            String part2 = parts[1]; // 034556

                            tableRow += "<td>" + part1 + "<font color='green'><b>ACTIVE</b></font></td>";
//                            tableRow += "<td>" + rcrdValue + "</td>";
                        } else if (rcrdValue.contains("FIRED")) {
                            String[] parts = rcrdValue.split("FIRED");
                            String part1 = parts[0]; // 004
//                            String part2 = parts[1]; // 034556

                            tableRow += "<td>" + part1 + "<font color='red'><b>FIRED</b></font></td>";
//                            tableRow += "<td>" + rcrdValue + "</td>";
                        } else if (rcrdValue.contains("RESIGNED")) {
                            String[] parts = rcrdValue.split("RESIGNED");
                            String part1 = parts[0]; // 004
//                            String part2 = parts[1]; // 034556

                            tableRow += "<td>" + part1 + "<font color='yellow'></b>RESIGNED</b></font></td>";
                        } else {
                            tableRow += "<td>" + rcrdValue + "</td>";
                        }
                    }

                }
                tableRow += "</tr>";
                j++;
            }
            String dataTable = "";
//            dataTable = "<div style=\"margin: auto; overflow-x: scroll;\"><table class=\"style-table  emp_table\">" + tableHead + tableRow + "</table></div>";
            if (j > 15) {
//                dataTable = "<div style=\"height: 450px; margin: auto; overflow-x: scroll; overflow-y: scroll;\"><table class=\"style-table  emp_table\">" + tableHead + tableRow + "</table></div>";
                dataTable = "<div style='height: 450px; margin: auto; overflow-x: scroll; overflow-y: scroll'><table class='style-table  emp_table'>" + tableHead + tableRow + "</table></div>";
            } else {
                dataTable = "<div style='margin: auto; overflow-x: scroll;'><table class='style-table  emp_table'>" + tableHead + tableRow + "</table></div>";
            }

            mpEmployeeList.put("TOTAL_RECORD", Integer.toString(j - 1));
            mpEmployeeList.put("DATA_TABLE", dataTable);

            resultSet.close();
            statement.close();
        } catch (SQLException ex) {
            System.err.println(ex);
        }// catch (IOException e) {
        catch (UnknownHostException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }
        //e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        //}

        return mpEmployeeList;
    }

    public static String getInitCap(final String dfg) {
        String sss = "";
        String strUpper = dfg.toUpperCase();
        if (strUpper.contains("DOB") || strUpper.contains("DOJ")) {
            return strUpper;
        }

        if (dfg.indexOf("_") != -1) {
            String hhhh[] = dfg.split("_");

            for (String jjj : hhhh) {
                jjj = jjj.trim();
                sss += getInitCapWhile(jjj) + " ";
            }
        } else {
            return getInitCapWhile(dfg);
        }

        sss = sss.trim();
        return sss;
    }

    public static String getInitCapWhile(final String dfg) {
        return Character.toUpperCase(dfg.charAt(0)) + dfg.substring(1).toLowerCase();
    }

    public static Map<String, String> getDynamicHtmlTable(final Connection conn, final String query, final Map<String, Object> objMap) {

        Map<String, String> tblMap = new HashMap();
        String tableHead = new String();
        String tableRow = new String();

        System.out.println("parameter object  ====> " + objMap);

        try {
            String hjhjhjh = query;
            for (String jkjk : objMap.keySet()) {

                Object vvv = objMap.get(jkjk);
                String orpn = "null";
                if (vvv != null) {

                    if (vvv instanceof String) {
                        if (vvv.toString().trim().length() == 0) {
                            orpn = "null";
                        } else {
                            orpn = "'" + vvv + "'";
                        }
                    } else if (vvv instanceof Date) {
                        SimpleDateFormat klkl = new SimpleDateFormat("ddMMyyyy");
                        orpn = "TO_DATE('" + klkl.format((Date) vvv) + "','DDMMYYYY')";
                    } else if (vvv instanceof Number) {
                        orpn = vvv + "";
                    }
                }
                hjhjhjh = hjhjhjh.replaceAll(":" + jkjk, orpn);
            }

            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(hjhjhjh);

            ResultSetMetaData metaData = resultSet.getMetaData();
            int numberOfColumns = metaData.getColumnCount();

            List<String> colAll = new ArrayList();

            for (int i = 1; i <= numberOfColumns; i++) {

                String colx = metaData.getColumnLabel(i);
                colAll.add(colx);

                String tableHeadx = colx;
                tableHeadx = getInitCap(tableHeadx);
                tableHead += "<th>" + tableHeadx + "</th>";
            }

            int j = 1;

            while (resultSet.next()) {

                tableRow += "<tr>";
                for (int i = 0; i < colAll.size(); i++) {

                    String colname = colAll.get(i);

                    if (colname.toUpperCase().equals("URL")) {
                        String dd = "/" + resultSet.getObject(colname);
                        String urlLink = "<a href='${request.contextPath}" + dd + "' target='_blank'>" + "Show Details" + "</a>";
                        tableRow += "<td>" + urlLink + "</td>";
                    } else {
                        Object tdValue = resultSet.getObject(colname);
                        if (tdValue == null) {
                            tdValue = "";
                        }
                        tableRow += "<td>" + tdValue + "</td>";
                    }
                }
                tableRow += "</tr>";

                j++;
            }

            String dataTable = "";
            if (j > 20) {
//                dataTable = "<div style=\"width: 995px; height: 450px; margin: auto; overflow-x: scroll; overflow-y: scroll;\"><table id=\"tblExport\" class=\"table table-bordered tableheadingcolor table-hover\">" + tableHead + tableRow + "</table></div>";
//                dataTable = "<table id=\"#example\" class=\"table-striped table-hover\">" + tableHead + tableRow + "</table>";
                dataTable = "<table>" + tableHead + tableRow + "</table>";
            } else {
//                dataTable = "<div style=\"width: 995px; margin: auto; overflow-x: scroll;\"><table id=\"#example\" class=\"table table-bordered tableheadingcolor table-hover\">" + tableHead + tableRow + "</table></div>";
//                dataTable = "<table id=\"#example\" class=\"table-striped table-hover\">" + tableHead + tableRow + "</table>";
                dataTable = "<table>" + tableHead + tableRow + "</table>";
//                id=tblExport
            }


            tblMap.put("TOTAL_RECORD", Integer.toString(j - 1));
            tblMap.put("DATA_TABLE", dataTable);


            resultSet.close();
            statement.close();
        } catch (SQLException ex) {
            System.err.println(ex);
        } catch (Exception e) {
            System.err.println(e);
        }

        return tblMap;
    }

    public Map<String, String> getTableOnlyDynRpt(final Long processId, final Map<String, Object> objMap) {

        Map<String, String> tblMap = new HashMap();
        String tableHead = new String();
        String tableRow = new String();
        String query = getSingleValFromDB("SELECT CMD FROM ADM_DYN_RPT_MST WHERE ID = " + processId) + "";

        List<String> invisColParm = new ArrayList();
        List<String> inputColParm = new ArrayList();
        List<String> colParma = new ArrayList();

        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT WIDGET_IDENTITY, WIDGET_TYPE FROM CALL_VU_ADM_DYN_RPT_DTL WHERE ADM_DYN_RPT_MST_ID = " + processId + " ORDER BY SL_NO");

            while (resultSet.next()) {
                // String cmd = resultSet.getString("CMD");
                String widgetIdentity = resultSet.getString(1);
                String widgetType = resultSet.getString(2);

                colParma.add(widgetIdentity);

                if (widgetType.equals(WidgetType.HIDE.toString())) {
                    invisColParm.add(widgetIdentity);
                } else if (widgetType.equals(WidgetType.INPUT.toString())) {
                    inputColParm.add(widgetIdentity);
                }
            }
            resultSet.close();
            statement.close();

        } catch (Exception e) {
            System.out.println("MacDynamo Err 0149:" + invisColParm);
        }

        try {
            String hjhjhjh = query;
            for (String jkjk : objMap.keySet()) {

                Object vvv = objMap.get(jkjk);
                String orpn = "null";
                if (vvv != null) {

                    if (vvv instanceof String) {
                        if (vvv.toString().trim().length() == 0) {
                            orpn = "null";
                        } else {
                            orpn = "'" + vvv + "'";
                        }
                    } else if (vvv instanceof Date) {
                        // System.out.println("rrrrrrrrrrrrrrrr vvv"+((Date) vvv));
                        SimpleDateFormat klkl = new SimpleDateFormat("ddMMyyyy");
                        orpn = "TO_DATE('" + klkl.format((Date) vvv) + "','DDMMYYYY')";
                    } else if (vvv instanceof Number) {
                        orpn = vvv + "";
                    }
                }
                hjhjhjh = hjhjhjh.replaceAll(":" + jkjk, orpn);

            }

            try {
                hjhjhjh = hjhjhjh.replaceAll(":P_CURR_USER_ID", userId.toString());
            } catch (Exception exrm1) {
            }
//            try {
//                hjhjhjh = hjhjhjh.replaceAll(":P_CURR_EMP_ID", empId.toString());
//            } catch (Exception exrm1) {
//            }
//            try {
//                hjhjhjh = hjhjhjh.replaceAll(":P_CURR_DEPT_ID", deptId.toString());
//            } catch (Exception exrm1) {
//            }


            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(hjhjhjh);
            ResultSetMetaData metaData = resultSet.getMetaData();
            int numberOfColumns = metaData.getColumnCount();

//            tableHead += "<th><input type=\"checkbox\" id=\"checkAll\" name=\"checkAll\"  value=\"" + "" + "\"/></th>";

            List<String> colAll = new ArrayList();

            for (int i = 1; i <= numberOfColumns; i++) {

                String colx = metaData.getColumnLabel(i);
                colAll.add(colx);

                if (invisColParm.contains(colx)) {
                    continue;
                }

                String tableHeadx = colx;
                /*      if (colx.startsWith("MAC_")) {
                 tableHeadx = colx.substring(4);
                 }*/
                tableHeadx = getInitCap(tableHeadx);
                tableHead += "<th>" + tableHeadx + "</th>";
            }

            int j = 1;

            while (resultSet.next()) {

                tableRow += "<tr>";
//                tableRow += "<td><input type=\"checkbox\" name=\"row." + j + "\" class=\"case\" value=\"row." + j + "\"/></td>";
//                tableRow += " <input type = \"hidden\" name=\"rowid." + j + "\" value=\"aaa\" />";
                for (int i = 0; i < colAll.size(); i++) {

                    String colname = colAll.get(i);
                    String isHedn = "";
                    String hdnOrtxt = "text";
                    if (invisColParm.contains(colname)) {
                        isHedn = "style=\"display:none\"";
                        hdnOrtxt = "hidden";
                    }


                    String ident = "";
                    String valx = null;
                    if (colParma.contains(colname)) {
                        ident = "id='" + colname + j + "'";
                        valx = " value='" + resultSet.getObject(colname) + "'";

                    }

                    if (inputColParm.contains(colname)) {
//                        tableRow += "<td " + isHedn + ">" + "<input " + ident + " type='" + hdnOrtxt + "'></input></td>";
                        tableRow += "<td " + isHedn + ">" + "<input " + ident + valx + " type='" + hdnOrtxt + "'></input></td>";
                    } else {

                        if (valx != null) {
                            tableRow += "<td style=\" display:none\">" + "<input " + ident + valx + " type='hidden'></input></td>";
                        } else {
                            if (colname.toUpperCase().equals("URL")) {
//                                 tableRow += "<td " + isHedn + " " + ident +" >" + resultSet.getObject(colname) + "</td>";
                                String dd = "/" + resultSet.getObject(colname);
//                                String urlLink = "<a href='${request.contextPath}" + dd + "' target='_blank'>" + resultSet.getObject(colname) + "</a>";
                                String urlLink = "<a href='${request.contextPath}" + dd + "' target='_blank'>" + "Show Details" + "</a>";
                                tableRow += "<td " + isHedn + " " + ident + " >" + urlLink + "</td>";
                            } else {
                                Object tdValue = resultSet.getObject(colname);
                                if (tdValue == null) {
                                    tdValue = "";
                                }
                                tableRow += "<td " + isHedn + " " + ident + " >" + tdValue + "</td>";
                            }
                        }
//                        tableRow += "<td " + isHedn + ">" + "<input " + ident + " type='" + hdnOrtxt + "' value='" + resultSet.getObject(colname) + "'></input></td>";
                    }
                }
                tableRow += "</tr>";

                j++;
            }

            String dataTable = "";
            if (j > 10) {
                dataTable = "<div style=\"width: 995px; height: 450px; margin: auto; overflow-x: scroll; overflow-y: scroll;\"><table id=\"tblExport\" class=\"style-table\">" + tableHead + tableRow + "</table></div>";
            } else {
                dataTable = "<div style=\"width: 995px; margin: auto; overflow-x: scroll;\"><table id=\"tblExport\" class=\"style-table\">" + tableHead + tableRow + "</table></div>";
            }

            tblMap.put("TOTAL_RECORD", Integer.toString(j - 1));
            tblMap.put("DATA_TABLE", dataTable);

            resultSet.close();
            statement.close();
        } catch (SQLException ex) {
            System.err.println(ex);
        }

        return tblMap;
    }

    public Map<String, Object> getProcPageMapDynRpt(final Long processId) {

        Map<String, Object> objMap = new HashMap();

        String query = "SELECT DEFAULT_VAL, WIDGET_IDENTITY FROM CALL_VU_ADM_DYN_RPT_DTL WHERE ADM_DYN_RPT_MST_ID = " + processId + "  ORDER BY SL_NO";
        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {

                //Integer isMandatory = resultSet.getInt("IS_MANDATORY");
                //String widgetType = resultSet.getString("WIDGET_TYPE");
                //String det_cmd = resultSet.getString("CMD");

                String defaultValue = resultSet.getString(1);
                String widgetIdentity = resultSet.getString(2);

                Object kkk = null;
                if (defaultValue != null) {

                    String kkka = defaultValue.trim().toUpperCase();
                    if ((kkka.startsWith("SELECT") && kkka.indexOf("FROM") != -1)) {
                        kkk = getSingleValFromDB(defaultValue);
                    } else {
                        String ghgh = defaultValue.trim();
                        if (ghgh.startsWith("'") && ghgh.endsWith("'")) {
                            kkk = getSingleValFromDB("SELECT " + defaultValue + " FROM DUAL");
                        } else {
                            kkk = getSingleValFromDB("SELECT '" + defaultValue + "' FROM DUAL");
                        }
                    }
                }

                objMap.put(widgetIdentity, kkk);
            }

        } catch (Exception hh) {
        }

        //System.out.println("1133 mac parma map:" + objMap);

        ///do get def val in map
        //  objMap.put("P_ALKP_BLOOD_GROUP_ID", null);
        //  objMap.put("P_TITLE", null);

        return getProcPageMapDynRpt(processId, objMap);
    }

    public Map<String, Object> getProcPageMapDynRpt(final Long processId, final Map<String, Object> objMap) {

        Map<String, Object> mapper = new HashMap();

        //Map<String, String> searcherIdsx = new HashMap();
        String searcherIdsx = new String();
        String searcher = new String();
        String paramer = new String();
        String btner = new String();
        //String detIDs = new String();
        String qparams = "";
        String fparams = "";
        String query = "SELECT 'SEARCH' ZONE_TYPE, IS_MANDATORY, WIDGET_LABEL, HELP_TEXT, DEFAULT_VAL, widget_Type, CMD, WIDGET_IDENTITY, id FROM CALL_VU_ADM_DYN_RPT_DTL WHERE ADM_DYN_RPT_MST_ID = " + processId + " ORDER BY SL_NO";

        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            while (resultSet.next()) {

                String zoneType = resultSet.getString(1);
                Integer isMandatory = resultSet.getInt(2);

                String widgetLabel = resultSet.getString(3);
                String helpText = resultSet.getString(4);
                String defaultValue = resultSet.getString(5);
                String widgetType = resultSet.getString(6);
                String det_cmd = resultSet.getString(7);
                String widgetIdentity = resultSet.getString(8);
                Integer detID = resultSet.getInt(9);
                String reqIndication = "";
                String req = "";
                String reqlab = "";
                Object strdef = null;
                String defSelect = "";
                String disable = "";

                try {
                    if (zoneType.equals(ZoneType.PARAM_FIXED.toString())) {
                        fparams = fparams + widgetIdentity + ",";
                    }

                } catch (Exception ec) {
                }
                try {
//                    if (zoneType.equals(ZoneType.PARAM_FIXED.toString()) ||
//                            zoneType.equals(ZoneType.PARAM_QU.toString())    ||
//                    zoneType.equals(ZoneType.PROCESS_BTN.toString())
//                            ) {
//                        detIDs += detID + ",";
//                    }
                    if (zoneType.equals(ZoneType.PARAM_QU.toString())) {
                        qparams = qparams + widgetIdentity + ",";
                    }

                } catch (Exception ec) {
                }

                if (isMandatory != null) {
                    if (isMandatory == 1) {
                        reqIndication = "*";
                        req = " class='required' ";
//                        req = "required=''";
                    } else {
                        disable = "disabled=\"\"";
                    }
                }

                if (widgetLabel != null) {
                    reqlab = widgetLabel;
                }

                if (helpText == null) {
                    helpText = reqlab;
                }

                if (zoneType.equals(ZoneType.SEARCH.toString())) {
                    //searcherIds.add(widgetIdentity);
                    //searcherIdsx.put(widgetIdentity, widgetType);
                    searcherIdsx += "\"" + widgetIdentity + "\":\"" + widgetType + "\",";
//                    searcher += "<div title= '" + helpText + "' class='fieldcontain'><label for='" + reqlab + "'>" + "<span> " + reqlab + reqIndication + "</span></label>";
                    searcher += "<div title= '" + helpText + "' class='fieldcontain'><label for='" + reqlab + "'></label>";
                } else if (zoneType.equals(ZoneType.PARAM_FIXED.toString())) {// && !(widgetType.equals(WidgetType.QU_PARAM_INVISIBLE.toString()) || widgetType.equals(WidgetType.QU_PARAM_VISIBLE.toString()))) {
                    paramer += "<div title= '" + helpText + "' class='fieldcontain'><label for='" + reqlab + "'></label>";
                } else if (zoneType.equals(ZoneType.PROCESS_BTN.toString())) {
                    btner += "<button onclick='executeProcess(this.id)' class='btn btn-primary save' title= '" + helpText + "' type='button' name='" + widgetIdentity + "' id='" + widgetIdentity + "' " + disable + ">" + reqlab + "</button>";
                    //  btner += "<input  type='hidden' name='HIDN_" + widgetIdentity + "' id='HIDN_" + widgetIdentity + "' value='" + det_cmd + "'/>";

                }

                if (defaultValue != null) {

                    String kkka = defaultValue.trim().toUpperCase();
                    if ((kkka.startsWith("SELECT") && kkka.indexOf("FROM") != -1)) {
                        strdef = getSingleValFromDB(defaultValue);
                    } else {
                        String ghgh = defaultValue.trim();
                        if (ghgh.startsWith("'") && ghgh.endsWith("'")) {
                            strdef = getSingleValFromDB("SELECT " + defaultValue + " FROM DUAL");
                        } else if (ghgh.length() == 0) {
                            strdef = "";
//
                        } else {
                            strdef = getSingleValFromDB("SELECT '" + defaultValue + "' FROM DUAL");
                        }
                    }

                    defSelect = "selected";
                } else {
                    strdef = "";
                }

                if (widgetType != null) {
/*
                    if (widgetType.equals(WidgetType.MODAL.toString())) {

//                        <g:render template="../allOrgModal" model="[paramHidAllOrgId: 'hidAllOrgId', paramAllOrgTitleId: 'divAllOrgTitleId']"></g:render>
                        if (zoneType.equals(ZoneType.SEARCH.toString())) {
                            searcher +=
                                    "<div id='divAllOrgTitleId' style='display: inline-block; border-style: none; margin-right: 10px;'>" + "  No organization selected" + "</div>"
                                            + "<input id='P_ALL_ORG_ID' type='hidden' name='P_ALL_ORG_ID'>"
                                            + "<input type='button' class='btnOrgModal' id='_allOrgModal' value='Select Organization' onclick='return openModal();'></input>";

                        }
                        //else if (zoneType.equals(ZoneType.PARAM_FIXED.toString()) || zoneType.equals(ZoneType.PARAM_QU.toString())) {
                        //    paramer += "<input  type='" + widgetType + "' name='" + widgetIdentity + "' id='" + widgetIdentity + "' value='" + strdef + "' " + req + "/></div>";
                        //}

                    }
 */
                    if (widgetType.equals(WidgetType.PASSWORD.toString())) {

                        if (zoneType.equals(ZoneType.SEARCH.toString())) {
                            searcher += "<input  type='" + widgetType + "' name='" + widgetIdentity + "' id='" + widgetIdentity + "' value='" + strdef + "' " + req + "/></div>";
                        } else if (zoneType.equals(ZoneType.PARAM_FIXED.toString()) || zoneType.equals(ZoneType.PARAM_QU.toString())) {
                            paramer += "<input  type='" + widgetType + "' name='" + widgetIdentity + "' id='" + widgetIdentity + "' value='" + strdef + "' " + req + "/></div>";
                        }

                    } else if (widgetType.equals(WidgetType.TEXT.toString())) {

                        if (zoneType.equals(ZoneType.SEARCH.toString())) {
                            searcher += "<input  type='" + widgetType + "' name='" + widgetIdentity + "' id='" + widgetIdentity + "' value='" + strdef + "' " + req + "/></div>";
                        } else if (zoneType.equals(ZoneType.PARAM_FIXED.toString()) || zoneType.equals(ZoneType.PARAM_QU.toString())) {
                            paramer += "<input  type='" + widgetType + "' name='" + widgetIdentity + "' id='" + widgetIdentity + "' value='" + strdef + "' " + req + "/></div>";
                        }

                    } else if (widgetType.equals(WidgetType.DATE.toString())) {

                        if (zoneType.equals(ZoneType.SEARCH.toString())) {
                            searcher += "<input class='form-control date' type='date' ";
                            searcher += "name='";
                            searcher += widgetIdentity;
                            searcher += "' id='";
                            searcher += widgetIdentity;
                            searcher += "' value='";
                            searcher += strdef;
                            searcher += "'/></div>";
                        } else if (zoneType.equals(ZoneType.PARAM_FIXED.toString()) || zoneType.equals(ZoneType.PARAM_QU.toString())) {
                            paramer += "<input class='form-control date' type='date' ";
                            paramer += "name='";
                            paramer += widgetIdentity;
                            paramer += "' id='";
                            paramer += widgetIdentity;
                            paramer += "' value='";
                            paramer += strdef;
                            paramer += "'/></div>";
                        }

                    } else if (det_cmd != null) {

                        if (widgetType.equals(WidgetType.LIST.toString())) {

                            List<Map> optionList = getListFromDB(det_cmd);

                            //System.out.println("optionList:" + optionList + "kkkkkkkkk:" + strdef);
                            String optSb = new String();
                            optSb += "<option value=''>Select</option>";

                            for (Map p : optionList) {
                                Object idx = p.get("id");
                                Object showx = p.get("show");

                                if ((strdef instanceof String && idx instanceof String && strdef.equals(idx))
                                        || (strdef instanceof String && idx instanceof Number && strdef.equals(idx + ""))
                                        || (strdef instanceof Number && idx instanceof String && idx.equals(strdef + ""))) {
                                    optSb += "<option " + defSelect + " value='" + idx + "'>" + showx + "</option>";
                                } else if (strdef instanceof Date && idx instanceof Date && strdef.equals(idx)) {
                                    optSb += "<option " + defSelect + " value='" + idx + "'>" + showx + "</option>";
                                } else if (strdef instanceof Number && idx instanceof Number && strdef.equals(idx)) {
                                    optSb += "<option " + defSelect + " value='" + idx + "'>" + showx + "</option>";
                                } else {
                                    optSb += "<option value='" + idx + "'>" + showx + "</option>";
                                }
                            }

                            if (zoneType.equals(ZoneType.SEARCH.toString())) {
//                                searcher += "<Select name='" + widgetIdentity + "' id='" + widgetIdentity + "'>" + optSb + "</select></div>";
                                searcher += "<Select name='" + widgetIdentity + "' id='" + widgetIdentity + "' " + req + ">" + optSb + "</select></div>";
                            } else if (zoneType.equals(ZoneType.PARAM_FIXED.toString()) || zoneType.equals(ZoneType.PARAM_QU.toString())) {
//                                paramer += "<Select name='" + widgetIdentity + "' id='" + widgetIdentity + "'>" + optSb + "</select></div>";
                                paramer += "<Select name='" + widgetIdentity + "' id='" + widgetIdentity + "' " + req + ">" + optSb + "</select></div>";
                            }


                        } else if (widgetType.equals(WidgetType.LIST_FIXED.toString())) {
                            String optSb = new String();
                            optSb += "<option value='-1'>Select</option>";
                            String[] lstFixed = det_cmd.split(",");

                            Integer ss = 0;
                            for (String xxx : lstFixed) {

                                if (strdef.equals(ss + "")) {
                                    optSb += "<option " + defSelect + " value='" + ss + "'>" + xxx + "</option>";
                                } else {
                                    optSb += "<option value='" + ss + "'>" + xxx + "</option>";
                                }
                                ss++;
                            }

                            if (zoneType.equals(ZoneType.SEARCH.toString())) {
                                searcher += "<Select name='" + widgetIdentity + "' id='" + widgetIdentity + "'>" + optSb + "</select></div>";
                            } else if (zoneType.equals(ZoneType.PARAM_FIXED.toString()) || zoneType.equals(ZoneType.PARAM_QU.toString())) {
                                paramer += "<Select name='" + widgetIdentity + "' id='" + widgetIdentity + "'>" + optSb + "</select></div>";
                            }

                        }
                    }
                }
            }
            resultSet.close();
            statement.close();

        } catch (Exception hhh) {
        }

        String searcher_btner = "";

        if (searcher.length() > 0) {
            String myBrnserch = "<button onclick='getDynamicTable()' class='btn btn-primary save' title= '" + "Press to Search" + "' type='button' name='search' id='search' >Search </button>";
            searcher_btner = "<br/><fieldset class='buttons'>" + myBrnserch + "</fieldset><br>";
        }

//        String tabler = getTableOnly(processId, objMap);

        mapper.put("searcherIds", searcherIdsx);
        mapper.put("searcher", searcher);
        mapper.put("searcher_btner", searcher_btner);
        mapper.put("paramer", paramer);
        mapper.put("btner", "<br/><fieldset class='buttons'>" + btner + "</fieldset>");

        try {
            qparams = qparams.substring(0, qparams.length() - 1);
            mapper.put("qparams", qparams);
        } catch (Exception e) {
        }

        try {
            fparams = fparams.substring(0, fparams.length() - 1);
            mapper.put("fparams", fparams);
        } catch (Exception e) {
        }

        try {
            searcherIdsx = searcherIdsx.substring(0, searcherIdsx.length() - 1);
            mapper.put("searcherIds", "{" + searcherIdsx + "}");
        } catch (Exception e) {
        }

        return mapper;
        //return searcher + "" + paramer + "" + btner + "<table>" + tableHead + tableRow+ "</table>";
    }

    public Map<String, String> getMapFromDB(final String qury) {

        Map<String, String> isMandatory = null;
        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(qury);
            isMandatory = new HashMap<String, String>();
            while (resultSet.next()) {
                isMandatory.put(resultSet.getString(1), resultSet.getString(2));
            }
            resultSet.close();
            statement.close();
        } catch (Exception e) {
        }
        return isMandatory;
    }

    //    public String getCmdSts(String query) {
    public String getCmdSts(String query) {
        String tableHead = new String();
        String tableRow = new String();

        try {
            Statement statement = conn.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            ResultSetMetaData metaData = resultSet.getMetaData();
            int numberOfColumns = metaData.getColumnCount();
            List<String> columns = new ArrayList();

            for (int column = 1; column <= numberOfColumns; column++) {
                String tableHeadx = metaData.getColumnLabel(column);
                if (tableHeadx.equals("ID") || tableHeadx.equals("CODE")) {
                    continue;
                }
                columns.add(tableHeadx);
                tableHeadx = getInitCap(tableHeadx);
                tableHead += "<th><u>" + tableHeadx + "</u></th>";
            }


            while (resultSet.next()) {
                tableRow += "<tr>";
                /* for (int i = 1; i <= numberOfColumns; i++) {
                 tableRow += "<td  style=\"text-align: center;\">" + resultSet.getObject(i) + "</td>";
                 }*/

                for (String col : columns) {
                    tableRow += "<td  style=\"text-align: center;\">" + resultSet.getObject(col) + "</td>";
                }

                tableRow += "</tr>";

            }

            resultSet.close();
            statement.close();
        } catch (SQLException ex) {
            System.err.println(ex);
        }

        if (tableRow.length() > 0) {
            String table = "<table  class=\"aprvl-sts-table\" >" + tableHead + tableRow + "</table>";
            return table;
        } else {
            return "";
        }
    }
}
