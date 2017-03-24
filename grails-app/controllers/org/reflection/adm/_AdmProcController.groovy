package org.reflection.adm

import grails.converters.JSON
import groovy.sql.Sql
import hrms.Proc

import java.sql.Connection
import java.sql.ResultSet
import java.sql.Statement
import java.text.SimpleDateFormat

class _AdmProcController {

    def springSecurityService
    def dataSource
    def sessionFactory

    Proc procObj

    private static enum OS {
        WINDOWS, LINUX
    }

    private static OS os
    static {
        String osyaa = System.getProperty("os.name")
        if (osyaa.toLowerCase().contains("windows"))
            os = OS.WINDOWS
        else if (osyaa.toLowerCase().contains("linux"))
            os = OS.LINUX
    }

    def index() {
        List<AdmProcMst> pgs = AdmProcMst.executeQuery("SELECT m FROM AdmProcMst m WHERE m.itemType='PG' AND m.isActive=true ORDER BY m.sortingOrder, m.title")
        List<AdmProcMst> kkx = AdmProcMst.executeQuery("SELECT m FROM AdmProcMst m WHERE m.itemType='P' AND m.isActive=true ORDER BY m.parentAdmPermissible.sortingOrder, m.parentAdmPermissible.title, m.sortingOrder, m.title")
        List<AdmProcMst> kk = new ArrayList()

        for (AdmProcMst bbb : kkx) {
            AdmProcMst bbbm = new AdmProcMst()
            bbbm.setId(bbb.id)
            bbbm.setTitle(bbb.getParentAdmPermissible().getTitle() + '-' + bbb.getTitle())
            kk.add(bbbm)
        }
        [processGroupMap: pgs, processMap: kk]
    }

    def getProcess() {

        Long processGroupId = null
        try {
            processGroupId = new Long(params.processGroupId as String)
        } catch (Exception gf) {
        }

        def sb = new StringBuilder()
        String selyaa = "SELECT m FROM AdmProcMst m WHERE m.itemType='P' AND m.isActive=true "

        if (processGroupId == null) {
            List<AdmPermissible> mast = AdmProcMst.executeQuery(selyaa + "ORDER BY m.parentAdmPermissible.sortingOrder, m.parentAdmPermissible.title, m.sortingOrder, m.title")
            for (AdmPermissible bbb : mast) {
                sb.append("<option value='" + bbb.id + "'>" + bbb.getParentAdmPermissible().getTitle() + '-' + bbb + "</option>")
            }
        } else {
            List<AdmPermissible> mast = AdmProcMst.executeQuery(selyaa + "AND m.parentAdmPermissible.id=" + processGroupId + " ORDER BY m.parentAdmPermissible.sortingOrder, m.parentAdmPermissible.title, m.sortingOrder, m.title")
            sb.append("<option value='/${null}'>" + '--select--' + "</option>")
            for (AdmPermissible bbb : mast) {
                sb.append("<option value='" + bbb.id + "'>" + bbb + "</option>")
            }
        }
        render sb.toString()
    }

    def getDynamicContent(Long processId) {
        procObj = getProcObj()

        Map<String, Object> allMap = new HashMap<String, Object>()

        if (procObj == null) {
            allMap.put("error", "Connection not found!!!")
        } else {
            allMap = procObj.getProcPageMap(processId)
        }

        render(allMap as JSON)
    }

    def search(String strKeyVal, Long processId) {

        procObj = getProcObj()

        Map<String, Object> allMap = new HashMap<String, Object>()

        Map<String, String> searcherIds = null
        if (procObj == null) {
            allMap.put("error", "Connection not found!!!")
        } else {
            allMap = procObj.getProcPageMap(processId)
            searcherIds = allMap.get("searcherIds")
        }

        Map<String, String> tblMap = new HashMap<String, String>()
        def c = JSON.parse(strKeyVal)
        Map<String, Object> cc = new HashMap<String, String>(c)

        for (String kss : searcherIds.keySet()) {
            Object kv = searcherIds.get(kss)
            if (kv.equals("DATE")) {

                SimpleDateFormat klkl = new SimpleDateFormat("dd/MM/yyyy")
                Object vvv = null
                try {
                    vvv = klkl.parse(cc.get(kss))
                } catch (Exception eee) {
                    vvv = null
                }
                cc.put(kss, vvv)
            }
        }

        tblMap = procObj.getTableOnly(processId, cc)
        render(tblMap as JSON)
    }

    String getPropValue(String propKey) {
        println("proc propKey: " + propKey)
        return AdmProp.findByPropKey(propKey).propValue
    }


    def executeProcess(String strKeyVal, String porcTitleMApx, Long processId) {

        //os = OS.LINUX

        Long currentUserId = (Long) springSecurityService.getCurrentUserId()
        println("proc currentUserId: " + currentUserId)

        boolean isUIDNeeded = false
        String errMsg = ""
        String errMsgShow = ""
        Map<String, String> outMsg = new HashMap<>()

        Map c = JSON.parse(strKeyVal)

        List<AdmProcMst> lstAdmProcMst = AdmProcMst.executeQuery("FROM AdmProcMst a WHERE a.id=" + processId)
        List<AdmProcDtl> lstAdmProcDtls = AdmProcDtl.executeQuery("FROM AdmProcDtl a WHERE a.admProcMst.id=" + processId + " AND a.isActive=true ORDER BY a.sortingOrder")

        AdmProcMst admProcMst

        for (AdmProcMst nnn : lstAdmProcMst) {
            admProcMst = nnn
            break
        }

        Map cothers = JSON.parse(porcTitleMApx)

        Map FIXED_PARAMs = new HashMap()

        if (cothers.containsKey("FIXED_PARAM_VAL"))
            FIXED_PARAMs = cothers.get("FIXED_PARAM_VAL")

        String QU_PARAMs = cothers.get("QU_PARAM_VAL")
        String PROC_BTN_ID = cothers.get("PROC_BTN_ID")

        List FIXED_PARAMs_sl_by = new ArrayList()
        String FIXED_PARAMs_sl_bySCRPT = ""
        List QU_PARAMs_sl_by = new ArrayList()

        if (!QU_PARAMs.equals("")) {
            try {
                for (Object jjj : QU_PARAMs.split(","))
                    QU_PARAMs_sl_by.add(jjj)
            } catch (Exception ee) {
            }
        }

        String procTitle
        for (AdmProcDtl nnnx : lstAdmProcDtls) {

            String nnncmd = nnnx.getCmd()
            String nnnwidgetIdentity = nnnx.getWidgetIdentity()
            WidgetType nnnwidgetType = nnnx.getWidgetType()

            if (nnnx.admParam != null) {
                if (nnncmd == null || nnncmd.equalsIgnoreCase("SUPER"))
                    nnncmd = nnnx.admParam.cmd
                if (nnnwidgetIdentity == null || nnnwidgetIdentity.equalsIgnoreCase("SUPER"))
                    nnnwidgetIdentity = nnnx.admParam.paramName
                if (nnnwidgetType == null || nnnwidgetType == WidgetType.SUPER)
                    nnnwidgetType = nnnx.admParam.paramType
            }

            if (nnnwidgetIdentity.equalsIgnoreCase(PROC_BTN_ID)) {
                procTitle = nnncmd
            }

            if (nnnx.getZoneType() == ZoneType.PARAM_FIXED) {

                if (nnnwidgetType.equals(WidgetType.UUID.toString())) {
                    FIXED_PARAMs_sl_by.add("IBCS_UUID_OITH")
                    isUIDNeeded = true
                } else {
                    try {
                        def datx = FIXED_PARAMs.get(nnnwidgetIdentity)
                        Object jjj = datx
                        FIXED_PARAMs_sl_by.add(jjj)
                        if (jjj.toString().isEmpty())
                            FIXED_PARAMs_sl_bySCRPT += "null,"
                        else
                            FIXED_PARAMs_sl_bySCRPT += "'" + jjj + "',"
                    } catch (Exception ee) {
                        println("err proc call 214: " + ee)
                    }
                }
            }
        }

        int countsPass = 0
        int countsFail = 0

        String currentUsername = currentUserId.toString() //AuthUser.get(currentUserId).getUsername()

        if (admProcMst.cmd == null || admProcMst.cmd.trim().isEmpty()) {

            def procLink = null
            if (admProcMst.getRunWith().equals("SCRIPT")) {

                int cntUt = 0
                try {
                    Connection conn = sessionFactory.getCurrentSession().connection()
                    Statement statement = conn.createStatement()

                    ResultSet res = statement.executeQuery("SELECT COUNT(*) FROM ADM_LOG_PROC_CALL WHERE STATUS='RUNNING' and ADM_USER_RUN_BY_ID=" + currentUserId + " and PROC_TITLE='" + procTitle + "'")

                    res.next()
                    cntUt = res.getInt(1)
                    res.close()
                    statement.close()
                    //conn.close()
                    println("1221 0 ok got tt: " + cntUt + "  procTitle::" + procTitle)
                } catch (Exception exx) {
                    cntUt = -1
                    println("1221 0 err tt: " + exx)
                }

                if (cntUt == 0) {

                    println("before call: " + new java.util.Date())

                    String uuid = currentUsername + "-" + System.currentTimeMillis()

                    File dirRoot = null
                    if (os == OS.LINUX) {
                        dirRoot = new File(getPropValue("LINUX_PATH"))
                    } else if (os == OS.WINDOWS) {
                        dirRoot = new File(getPropValue("WINDOWS_PATH"))
                    }

                    if (!dirRoot.exists())
                        dirRoot.mkdirs()

                    String dbCon = getPropValue("DB_CONN")

                    String hhhh = FIXED_PARAMs_sl_bySCRPT.trim().replaceAll("'", "''")

                    String shfile =
                            "DECLARE" + "\n" +
                                    "	P_OUT_RESULT    NUMBER;" + "\n" +
                                    "	P_OUT_MESSAGE   VARCHAR2 (2000);" + "\n" +
                                    "BEGIN" + "\n" +
                                    "	INSERT INTO ADM_LOG_PROC_CALL (ID, PROC_TITLE, STATUS, ADM_USER_RUN_BY_ID, PARAMS, START_TIME)  VALUES ('P_UUID', 'P_PROC_TITLE','RUNNING', " + currentUserId + ",'" + hhhh + "', SYSDATE);" + "\n" +
                                    "	COMMIT;" + "\n" +
                                    "	P_PROC_TITLE ('P_UUID',P_PARAMS P_OUT_RESULT, P_OUT_MESSAGE);" + "\n" +
                                    "	UPDATE ADM_LOG_PROC_CALL SET DONE_PCT=100, REMAIN_PCT=0, END_TIME=SYSDATE," + "\n" +
                                    "	OUT_MESSAGE=P_OUT_MESSAGE, OUT_RESULT=P_OUT_RESULT, STATUS='DONE'" + "\n" +
                                    "	WHERE ID='P_UUID';" + "\n" +
                                    "	COMMIT;" + "\n" +
                                    "EXCEPTION WHEN OTHERS THEN" + "\n" +
                                    "	ROLLBACK;" + "\n" +
                                    "	DECLARE" + "\n" +
                                    "		ERR_CODE VARCHAR2 (2000):=SQLCODE;" + "\n" +
                                    "		ERR_MSG VARCHAR2 (2000):=SUBSTR(SQLERRM, 1, 200);" + "\n" +
                                    "	BEGIN" + "\n" +
                                    "		UPDATE ADM_LOG_PROC_CALL SET DONE_PCT=100, REMAIN_PCT=0, END_TIME=SYSDATE," + "\n" +
                                    "		OUT_MESSAGE=P_OUT_MESSAGE, OUT_RESULT=P_OUT_RESULT, STATUS='ERROR'," + "\n" +
                                    "		OUT_SQLERRM=ERR_MSG" + "\n" +
                                    "		WHERE ID='P_UUID';" + "\n" +
                                    "		COMMIT;" + "\n" +
                                    "	END;" + "\n" +
                                    "END;" + "\n" +
                                    "/"

                    shfile = shfile.replaceAll("P_PROC_TITLE", procTitle)
                    shfile = shfile.replaceAll("P_UUID", uuid)
                    shfile = shfile.replaceAll("P_PARAMS", FIXED_PARAMs_sl_bySCRPT)

                    File file = null
                    String fileSrc = null
                    String commandx = null

                    if (os == OS.LINUX) {
                        commandx = getPropValue("LINUX_EXECUTER_COMMAND")
                        commandx = commandx.replaceAll("FULL_PATH_FILE_NAME", dirRoot.toString() + File.separator + uuid + ".sh")
                        file = new File(commandx)

                        String LINUX_DYNAMIC_SCRIPT = getPropValue("LINUX_DYNAMIC_SCRIPT")
                        LINUX_DYNAMIC_SCRIPT = LINUX_DYNAMIC_SCRIPT.replaceAll("DB_CONN", dbCon)
                        LINUX_DYNAMIC_SCRIPT = LINUX_DYNAMIC_SCRIPT.replaceAll("RUN_SRC", shfile)

                        LINUX_DYNAMIC_SCRIPT = LINUX_DYNAMIC_SCRIPT.replaceAll("\r\n", "\n")
                        //LINUX_DYNAMIC_SCRIPT = LINUX_DYNAMIC_SCRIPT.replaceAll("\r", "")
                        fileSrc = LINUX_DYNAMIC_SCRIPT
                    } else if (os == OS.WINDOWS) {

                        commandx = getPropValue("WINDOWS_EXECUTER_COMMAND")
                        commandx = commandx.replaceAll("DB_CONN", dbCon)

                        file = new File(dirRoot, uuid + ".sql")

                        String yyqq = file.toString().replace("\\", "\\\\")
                        commandx = commandx.replaceAll("FULL_PATH_FILE_NAME", yyqq)

                        fileSrc = shfile
                    }

                    Writer bbb = new FileWriter(file)
                    bbb.write(fileSrc)
                    bbb.flush()
                    bbb.close()

                    file.setExecutable(true, false)
                    file.setReadable(true, false)
                    file.setWritable(true, false)

                    try {
                        Thread.sleep(1000L)
                    } catch (Exception e) {
                        println("err 1247:" + e)
                    }

                    try {
                        println("going to run: " + FIXED_PARAMs_sl_bySCRPT + " uuid:" + uuid)

                        //String command = "cmd /c sqlplus bbl_hrms/bbl_hrms@xe @D:\\BBL_HRMS\\scripts\\" + procTitle + ".sql '" + uuid + "' " + FIXED_PARAMs_sl_bySCRPT.trim()
                        //String command = "cmd /c sqlplus bbl_hrms/bbl_hrms@xe @" + scFile
                        //String command = "cmd /c sqlplus bbal_hrms/bbal_hrms@testhrms @" + scFile

                        try {

                            println("rajib cmd: " + commandx)

                            ProcessBuilder builder = null
                            if (os == OS.LINUX) {
                                builder = new ProcessBuilder(commandx)
                            } else if (os == OS.WINDOWS) {
                                builder = new ProcessBuilder(commandx.split("~"))
                            }

                            //builder.redirectErrorStream(true)
                            Process p = builder.start()
//                            BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()))
//                            String line
//                            while (true) {
//                                line = r.readLine()
//                                if (line == null) {
//                                    break
//                                }
//                                println(line)
//                            }

                        } catch (Exception rer) {
                            println("mac: ext proc call err: " + rer)
                        }

                        procLink = "<a href=" + createLink(uri: '/') + "_AdmProcSts/show/" + uuid + " target='_blank'>Process Output Link</a><br>"

                    } catch (Exception ee) {
                        println("mac: script run err:1112: " + ee)
                    }

                    println("after  call: " + new java.util.Date())
                    errMsgShow = "Added to batch proc: " + procTitle
                } else {
                    println("you have ran one time and now again trying to run " + procTitle)
                    errMsgShow = "you have ran one time and now again trying to run " + procTitle
                }
            } else {
                Sql sql = new Sql(dataSource)
                List lstObj = new ArrayList()

                lstObj.add(currentUserId)

                if (isUIDNeeded) {
                    int uuifond = FIXED_PARAMs_sl_by.indexOf("IBCS_UUID_OITH")
                    if (uuifond != -1) {
                        FIXED_PARAMs_sl_by.set(uuifond, uuid)
                    }
                }

                lstObj.addAll(FIXED_PARAMs_sl_by)
                lstObj.add(Sql.out(Sql.INTEGER.type))
                lstObj.add(Sql.VARCHAR)

                try {

                    //	Thread th=new Thread(new Runnable(){
                    //	public void run(){
                    println("ibx-423 NO CMD MODE porcTitle: " + procTitle + " param: " + lstObj)
                    sql.call("{call " + procTitle + "}",
                            lstObj,
                            { result1, result2 ->
                                if (result1.toString().toInteger() == 1) {
                                    countsPass++
                                }
                            })
                    //	}
                    //	});
                    //th.start()

                } catch (Exception ex) {
                    countsFail++
                    errMsgShow = errMsgShow + strErrOk(ex.toString()) + "<br>"
                    errMsg = errMsg + ex + "<br>"
                }

//                try {
//                    sql.close()
//                    println("ibx-425 sql closed")
//                } catch (Exception ee) {
//                    println("err sql close: " + runById + " error: " + ee)
//                }
            }
            outMsg.put("errMsg", errMsgShow + "<br><br> Must be off: " + "<br>" + errMsg)

            outMsg.put("countsPass", null)
            outMsg.put("countsFail", null)
            outMsg.put("procOutLink", procLink)

            render(outMsg as JSON)
        } else {

            Sql sql = new Sql(dataSource)
            String uuid = UUID.randomUUID().toString()
            for (Object obj : c.keySet()) {

                Map inrMapQu = c.get(obj)

                List lstObj = new ArrayList()

                lstObj.add(currentUserId)

                if (isUIDNeeded) {
                    int uuifond = FIXED_PARAMs_sl_by.indexOf("IBCS_UUID_OITH")
                    if (uuifond != -1) {
                        FIXED_PARAMs_sl_by.set(uuifond, uuid)
                    }
                }

                lstObj.addAll(FIXED_PARAMs_sl_by)

                for (Object jkk : QU_PARAMs_sl_by) {
                    lstObj.add(inrMapQu.get(jkk))
                }

                lstObj.add(Sql.out(Sql.INTEGER.type))
                lstObj.add(Sql.VARCHAR)

                try {

                    //	Thread th=new Thread(new Runnable(){
                    //	public void run(){
                    println("ibx-423 porcTitle: " + procTitle + " param: " + lstObj)
                    sql.call("{call " + procTitle + "}",
                            lstObj,
                            { result1, result2 ->
                                if (result1.toString().toInteger() == 1) {
                                    countsPass++
                                }
                            })
                    //	}
                    //	});
                    //th.start()

                } catch (Exception ex) {
                    countsFail++

                    errMsgShow = errMsgShow + strErrOk(ex.toString()) + "<br>"
                    errMsg = errMsg + ex + "<br>"
                }
            }

//            try {
//                sql.close()
//                println("ibx-425 sql closed")
//            } catch (Exception ee) {
//                println("err sql close: " + runById + " error: " + ee)
//            }

            outMsg.put("errMsg", errMsgShow + "<br><br>Must be off: " + "<br>" + errMsg)

            outMsg.put("countsPass", countsPass)
            outMsg.put("countsFail", countsFail)
            outMsg.put("procOutLink", null)

            render(outMsg as JSON)
        }
    }

    String strErrOk(String hhh) {
        try {
            int innx = hhh.indexOf(":", hhh.indexOf("ORA-"))
            int innb = hhh.indexOf("ORA-", innx)
            String sss = hhh.substring(innx + 2, innb - 1)
            return sss
        } catch (Exception ee) {
            return "mac: ERR: " + ee + ": " + hhh
        }
    }

    def getProcObj() {
        Connection conn = sessionFactory.getCurrentSession().connection()
        if (procObj == null) {
            procObj = new Proc(conn, (Long) springSecurityService.getCurrentUserId())
            return procObj
        }
        procObj.setConn(conn)
        return procObj
    }
}


