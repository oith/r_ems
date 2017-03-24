//import org.reflection.auth.AuthLkUserRole
//import org.reflection.auth.AuthMenu
//import org.reflection.auth.AuthRequestMap
//import org.reflection.auth.AuthRole
//import org.reflection.auth.AuthUser

class BootStrap {
    def commonService

    def init = { servletContext ->
        //String  configAttribute = "ROLE_SUPER_ADMIN"
//        def     createdBy       = AuthUser.findByUsername("saif") ?: 2L
        //org.hibernate.engine.spi.CacheImplementor

        String  userGenerator = """
        String password = "123",
               hdCode   = commonService.getHdCode(password) ?: "0000000000000000000000000000000000313233",
               remarks  = "Auto Generated"
        createdBy       = 2L
        AuthUser authUser01 = AuthUser.findByUsername("saif"            ) ?: new AuthUser([createdBy: createdBy, "password": password, hdCode: hdCode, remarks: remarks, "username": "saif"             , "displayName": "Saif Khan"        , "fullName": "Md. Hoshen Mahmud Khan", "phone": "+8801918664994", "email": "saif_hmk@live.com"         ]).save()
        AuthUser authUser02 = AuthUser.findByUsername("mac"             ) ?: new AuthUser([createdBy: createdBy, "password": password, hdCode: hdCode, remarks: remarks, "username": "mac"              , "displayName": "Manik"            , "fullName": "Md. Badiuzzaman Manik" , "phone": "+8801912917834", "email": "manikmonir@gmail.com"      ]).save()
        AuthUser authUser03 = AuthUser.findByUsername("mar"             ) ?: new AuthUser([createdBy: createdBy, "password": password, hdCode: hdCode, remarks: remarks, "username": "mar"              , "displayName": "Anis"             , "fullName": "Md. Anisur Rahman Khan", "phone": "+8801717503780", "email": "anis.object@gmail.com"     ]).save()
        AuthUser authUser04 = AuthUser.findByUsername("dkd"             ) ?: new AuthUser([createdBy: createdBy, "password": password, hdCode: hdCode, remarks: remarks, "username": "dkd"              , "displayName": "Debashis"         , "fullName": "Debashis Kumar Dakua"  , "phone": "+8801715212112", "email": "dakuadebashis1@gmail.com"  ]).save()
        AuthUser authUser05 = AuthUser.findByUsername("aminul"          ) ?: new AuthUser([createdBy: createdBy, "password": password, hdCode: hdCode, remarks: remarks, "username": "aminul"           , "displayName": "Aminul"           , "fullName": "Aminul Islam Khokon"   , "phone": "+8801717522316", "email": "khokonsarkar2020@gmail.com"]).save()
        AuthUser authUser06 = AuthUser.findByUsername("sumon"           ) ?: new AuthUser([createdBy: createdBy, "password": password, hdCode: hdCode, remarks: remarks, "username": "sumon"            , "displayName": "Sumon"            , "fullName": "Sumon"                 , "phone": "+8801912138524", "email": "belayetsumon@gmail.com"    ]).save()
        AuthUser authUser07 = AuthUser.findByUsername("obydul"          ) ?: new AuthUser([createdBy: createdBy, "password": password, hdCode: hdCode, remarks: remarks, "username": "obydul"           , "displayName": "Obydul"           , "fullName": "Md. Obydul Islam"      , "phone": "+8801989091183", "email": ""                          ]).save()
        AuthUser authUser08 = AuthUser.findByUsername("shafiq"          ) ?: new AuthUser([createdBy: createdBy, "password": password, hdCode: hdCode, remarks: remarks, "username": "shafiq"           , "displayName": "Shafiq"           , "fullName": "Md. Shafiqul Islam"    , "phone": "+8801938102355", "email": ""                          ]).save()

        AuthUser authUser11 = AuthUser.findByUsername("admin"           ) ?: new AuthUser([createdBy: createdBy, "password": password, hdCode: hdCode, remarks: remarks, "username": "admin"            , "displayName": "admin"            , "fullName": "admin"                 , "phone": ""              , "email": ""                          ]).save()
        AuthUser authUser12 = AuthUser.findByUsername("principal"       ) ?: new AuthUser([createdBy: createdBy, "password": password, hdCode: hdCode, remarks: remarks, "username": "principal"        , "displayName": "principal"        , "fullName": "principal"             , "phone": ""              , "email": ""                          ]).save()
        AuthUser authUser13 = AuthUser.findByUsername("teacher"         ) ?: new AuthUser([createdBy: createdBy, "password": password, hdCode: hdCode, remarks: remarks, "username": "teacher"          , "displayName": "teacher"          , "fullName": "teacher"               , "phone": ""              , "email": ""                          ]).save()
        AuthUser authUser14 = AuthUser.findByUsername("teacherAssistant") ?: new AuthUser([createdBy: createdBy, "password": password, hdCode: hdCode, remarks: remarks, "username": "Assistant Teacher", "displayName": "Assistant Teacher", "fullName": "Assistant Teacher"     , "phone": ""              , "email": ""                          ]).save()
        AuthUser authUser15 = AuthUser.findByUsername("staff"           ) ?: new AuthUser([createdBy: createdBy, "password": password, hdCode: hdCode, remarks: remarks, "username": "staff"            , "displayName": "staff"            , "fullName": "staff"                 , "phone": ""              , "email": ""                          ]).save()
        AuthUser authUser16 = AuthUser.findByUsername("accountant"      ) ?: new AuthUser([createdBy: createdBy, "password": password, hdCode: hdCode, remarks: remarks, "username": "accountant"       , "displayName": "accountant"       , "fullName": "accountant"            , "phone": ""              , "email": ""                          ]).save()
        AuthUser authUser17 = AuthUser.findByUsername("clark"           ) ?: new AuthUser([createdBy: createdBy, "password": password, hdCode: hdCode, remarks: remarks, "username": "clark"            , "displayName": "clark"            , "fullName": "clark"                 , "phone": ""              , "email": ""                          ]).save()
        AuthUser authUser18 = AuthUser.findByUsername("guardian"        ) ?: new AuthUser([createdBy: createdBy, "password": password, hdCode: hdCode, remarks: remarks, "username": "guardian"         , "displayName": "guardian"         , "fullName": "guardian"              , "phone": ""              , "email": ""                          ]).save()
        AuthUser authUser19 = AuthUser.findByUsername("student"         ) ?: new AuthUser([createdBy: createdBy, "password": password, hdCode: hdCode, remarks: remarks, "username": "student"          , "displayName": "student"          , "fullName": "student"               , "phone": ""              , "email": ""                          ]).save()

        """

        String roleGenerator = """
        createdBy           = AuthUser.findByUsername("saif")
        AuthRole authRole01 = AuthRole.findByAuthority("ROLE_SUPER_ADMIN"      ) ?: new AuthRole([authority: "ROLE_SUPER_ADMIN"      , createdBy: createdBy]).save()
        AuthRole authRole11 = AuthRole.findByAuthority("ROLE_ADMIN"            ) ?: new AuthRole([authority: "ROLE_ADMIN"            , createdBy: createdBy]).save()
        AuthRole authRole12 = AuthRole.findByAuthority("ROLE_PRINCIPAL"        ) ?: new AuthRole([authority: "ROLE_PRINCIPAL"        , createdBy: createdBy]).save()
        AuthRole authRole13 = AuthRole.findByAuthority("ROLE_TEACHER"          ) ?: new AuthRole([authority: "ROLE_TEACHER"          , createdBy: createdBy]).save()
        AuthRole authRole14 = AuthRole.findByAuthority("ROLE_TEACHER_ASSISTANT") ?: new AuthRole([authority: "ROLE_TEACHER_ASSISTANT", createdBy: createdBy]).save()
        AuthRole authRole15 = AuthRole.findByAuthority("ROLE_STAFF"            ) ?: new AuthRole([authority: "ROLE_STAFF"            , createdBy: createdBy]).save()
        AuthRole authRole16 = AuthRole.findByAuthority("ROLE_ACCOUNTANT"       ) ?: new AuthRole([authority: "ROLE_ACCOUNTANT"       , createdBy: createdBy]).save()
        AuthRole authRole17 = AuthRole.findByAuthority("ROLE_CLARK"            ) ?: new AuthRole([authority: "ROLE_CLARK"            , createdBy: createdBy]).save()
        AuthRole authRole18 = AuthRole.findByAuthority("ROLE_GUARDIAN"         ) ?: new AuthRole([authority: "ROLE_GUARDIAN"         , createdBy: createdBy]).save()
        AuthRole authRole19 = AuthRole.findByAuthority("ROLE_STUDENT"          ) ?: new AuthRole([authority: "ROLE_STUDENT"          , createdBy: createdBy]).save()

        """

        String userLkRoleGenerator = """
        
        AuthLkUserRole authLkUserRole01 = AuthLkUserRole.findByAuthUserAndAuthRole(authUser01, authRole01) ?: new AuthLkUserRole([authUser: authUser01, authRole: authRole01]).save()
        AuthLkUserRole authLkUserRole02 = AuthLkUserRole.findByAuthUserAndAuthRole(authUser02, authRole01) ?: new AuthLkUserRole([authUser: authUser02, authRole: authRole01]).save()
        AuthLkUserRole authLkUserRole03 = AuthLkUserRole.findByAuthUserAndAuthRole(authUser03, authRole01) ?: new AuthLkUserRole([authUser: authUser03, authRole: authRole01]).save()
        AuthLkUserRole authLkUserRole04 = AuthLkUserRole.findByAuthUserAndAuthRole(authUser04, authRole01) ?: new AuthLkUserRole([authUser: authUser04, authRole: authRole01]).save()
        AuthLkUserRole authLkUserRole05 = AuthLkUserRole.findByAuthUserAndAuthRole(authUser05, authRole01) ?: new AuthLkUserRole([authUser: authUser05, authRole: authRole01]).save()
        AuthLkUserRole authLkUserRole06 = AuthLkUserRole.findByAuthUserAndAuthRole(authUser06, authRole01) ?: new AuthLkUserRole([authUser: authUser06, authRole: authRole01]).save()
        AuthLkUserRole authLkUserRole07 = AuthLkUserRole.findByAuthUserAndAuthRole(authUser07, authRole01) ?: new AuthLkUserRole([authUser: authUser07, authRole: authRole01]).save()
        AuthLkUserRole authLkUserRole08 = AuthLkUserRole.findByAuthUserAndAuthRole(authUser08, authRole01) ?: new AuthLkUserRole([authUser: authUser08, authRole: authRole01]).save()

        AuthLkUserRole authLkUserRole11 = AuthLkUserRole.findByAuthUserAndAuthRole(authUser11, authRole11) ?: new AuthLkUserRole([authUser: authUser11, authRole: authRole11]).save()
        AuthLkUserRole authLkUserRole12 = AuthLkUserRole.findByAuthUserAndAuthRole(authUser12, authRole12) ?: new AuthLkUserRole([authUser: authUser12, authRole: authRole12]).save()
        AuthLkUserRole authLkUserRole13 = AuthLkUserRole.findByAuthUserAndAuthRole(authUser13, authRole13) ?: new AuthLkUserRole([authUser: authUser13, authRole: authRole13]).save()
        AuthLkUserRole authLkUserRole14 = AuthLkUserRole.findByAuthUserAndAuthRole(authUser14, authRole14) ?: new AuthLkUserRole([authUser: authUser14, authRole: authRole14]).save()
        AuthLkUserRole authLkUserRole15 = AuthLkUserRole.findByAuthUserAndAuthRole(authUser15, authRole15) ?: new AuthLkUserRole([authUser: authUser15, authRole: authRole15]).save()
        AuthLkUserRole authLkUserRole16 = AuthLkUserRole.findByAuthUserAndAuthRole(authUser16, authRole16) ?: new AuthLkUserRole([authUser: authUser16, authRole: authRole16]).save()
        AuthLkUserRole authLkUserRole17 = AuthLkUserRole.findByAuthUserAndAuthRole(authUser17, authRole17) ?: new AuthLkUserRole([authUser: authUser17, authRole: authRole17]).save()
        AuthLkUserRole authLkUserRole18 = AuthLkUserRole.findByAuthUserAndAuthRole(authUser18, authRole18) ?: new AuthLkUserRole([authUser: authUser18, authRole: authRole18]).save()
        AuthLkUserRole authLkUserRole19 = AuthLkUserRole.findByAuthUserAndAuthRole(authUser19, authRole19) ?: new AuthLkUserRole([authUser: authUser19, authRole: authRole19]).save()

        """

        String requestMapGenerator = """

        configAttribute = "permitAll"
        for (String url in [
                '/assets/**'     , '/resources/**'  , '/**/favicon.ico',
                '/**/js/**'      , '/**/css/**'     , '/**/images/**'  ,
                '/login'         , '/login.*'       , '/login/**'      ,
                '/logout'        , '/logout.*'      , '/logout/**'
        ]) {
            AuthRequestMap.findByUrl(url) ?: new AuthRequestMap([configAttribute: configAttribute, url: url, createdBy: createdBy]).save()
        }

        configAttribute = "ROLE_SUPER_ADMIN"
        AuthRequestMap.findByUrl('/#availableController') ?: new AuthRequestMap([configAttribute: configAttribute, url: '/#availableController', createdBy: createdBy]).save()

        configAttribute = "IS_AUTHENTICATED_FULLY"
        for (String url in [
                '/'                , '/index'           , '/list.gsp',
                '/property/show/**', '/property/edit/**', '/property/update/**',
        ]) {
            AuthRequestMap.findByUrl(url) ?: new AuthRequestMap([configAttribute: configAttribute, url: url, createdBy: createdBy]).save()
        }

        configAttribute = "ROLE_SUPER_ADMIN,ROLE_ADMIN,ROLE_PRINCIPAL,ROLE_TEACHER,ROLE_TEACHER_ASSISTANT"
        for (String url in [
            "/_AdmDynRpt/index",
            "/_AdmDynRpt/getDynamicContent",
            "/_AdmDynRpt/search",
            "/_AdmDynRpt/getProcesses",
            "/_AdmDynRpt/getProcObj",
            "/_AdmProc/index",
            "/_AdmProc/getProcess",
            "/_AdmProc/getDynamicContent",
            "/_AdmProc/search",
            "/_AdmProc/getPropValue",
            "/_AdmProc/executeProcess",
            "/_AdmProc/strErrOk",
            "/_AdmProc/getProcObj",
            "/_AdmProcSts/show",
            "/_AdmRpt/index",
            "/_AdmRpt/getReport",
            "/_AdmRpt/getDynamicContent",
            "/_AdmRpt/generateReport",
            "/_AdmRpt/logged",
            "/_AdmRpt/loadReport",
            "/_AdmRptUpload/index",
            "/_AdmRptUpload/upload",
            "/_CatalinaFileReader/index",
            "/_FileUploader/index",
            "/_FileUploader/downloadFile",
            "/_FileUploader/doUpload",
            "/_FileUploader/PAYROLL_ADJUSTMENT",
            "/_FileUploader/INCENTIVE_ALLOWANCE",
            "/_FileUploader/ANNUAL_LEAVE",
            "/_FileUploader/INC_DEC_ADJUSTMENT",
            "/_FileUploader/commonMessage",
            "/_FileUploader/getExcelDataMap",
            "/_FileUploader/getMyPowerfulHandler",
            "/_MasterReport/index",
            "/_MasterReport/getDbText",
            "/_MasterReport/getDynTab",
            "/_MasterReport/getQueryString",
            "/#adm",
            "/#auth",
            "/#com",
            "/#ems",
            "/#hr",
            "/#admLogReportCall",
            "/#admParam",
            "/#admPermissible",
            "/#admProcMst",
            "/#admProcSts",
            "/#admRptFormat",
            "/#admRptMst",
            "/#authHome",
            "/#authLandingPage",
            "/#authLkUserRole",
            "/#authMenu",
            "/#authRequestMap",
            "/#authRole",
            "/#authUser",
            "/#authUserProperty",
            "/#comBank",
            "/#comBranch",
            "/#comContactInfo",
            "/#comContactPerson",
            "/#comDepartment",
            "/#comDesignation",
            "/#comEducationInfo",
            "/#comFamilyInfo",
            "/#comHandleError",
            "/#comJobHistory",
            "/#comLocation",
            "/#comLookup",
            "/#commonAjax",
            "/#comThrowable",
            "/#comTraining",
            "/#file",
            "/#emsApplicant",
            "/#emsAttendance",
            "/#emsFeeCollection",
            "/#emsFeeSetup",
            "/#emsGuardian",
            "/#emsGuardianEducationInfo",
            "/#emsLeaveApp",
            "/#emsMarks",
            "/#emsPreAdmission",
            "/#emsRegistration",
            "/#emsStaffAcademic",
            "/#emsStudentAdult",
            "/#emsStudentAttendance",
            "/#emsStudent",
            "/#emsStudentGuardian",
            "/#hrStaff"
        ]) {
            AuthRequestMap.findByUrl(url) ?: new AuthRequestMap([configAttribute: configAttribute, url: url, createdBy: createdBy]).save()
        }
        
        for (String controllerName in [
            "admLogReportCall",
            "admParam",
            "admPermissible",
            "admProcDtl",
            "admProcMst",
            "admProcSts",
            "admRptDtl",
            "admRptFormat",
            "admRptMst",
            "authHome",
            "authLandingPage",
            "authLkUserRole",
            "authMenu",
            "authRequestMap",
            "authRole",
            "authUser",
            "authUserProperty",
            "comAdditionalInfo",
            "comBank",
            "comBranch",
            "comContactInfo",
            "comContactPerson",
            "comDepartment",
            "comDesignation",
            "comEducationInfo",
            "comFamilyInfo",
            "comHandleError",
            "comJobHistory",
            "comLocation",
            "comLookup",
            "commonAjax",
            "comThrowable",
            "comTraining",
            "file",
            "emsApplicantBankAccount",
            "emsApplicantBranchPreference",
            "emsApplicant",
            "emsApplicantDocument",
            "emsApplicantEducationInfo",
            "emsApplicantFamilyInfo",
            "emsAttendance",
            "emsFeeCollection",
            "emsFeeSetup",
            "emsGuardianContactInfo",
            "emsGuardian",
            "emsGuardianEducationInfo",
            "emsGuardianJobHistory",
            "emsLeaveApp",
            "emsMarks",
            "emsPreAdmission",
            "emsRegistration",
            "emsStaffAcademicBranch",
            "emsStaffAcademicClass",
            "emsStaffAcademicContactInfo",
            "emsStaffAcademicContactPerson",
            "emsStaffAcademic",
            "emsStaffAcademicEducationInfo",
            "emsStaffAcademicJobHistory",
            "emsStaffAcademicLanguage",
            "emsStaffAcademicShift",
            "emsStaffAcademicSubject",
            "emsStaffAcademicTraining",
            "emsStaffAcademicTypeEducation",
            "emsStudentAdult",
            "emsStudentAttendance",
            "emsStudent",
            "emsStudentEducationInfo",
            "emsStudentFamilyInfo",
            "emsStudentFingerPrint",
            "emsStudentGuardian",
            "hrStaffAdditionalInfo",
            "hrStaffContactInfo",
            "hrStaffContactPerson",
            "hrStaff",
            "hrStaffEducationInfo",
            "hrStaffJobHistory",
            "hrStaffLanguage",
            "hrStaffTraining"
        ]) {
            for (String method in ['/index', '/create', '/save', '/show/**', '/edit/**', '/update/**', '/delete/**']) {
                AuthRequestMap.findByUrl("/" + controllerName + method) ?: new AuthRequestMap([configAttribute: configAttribute, url: "/" + controllerName + method, createdBy: createdBy]).save()
            }
        }
        """

        String menuGenerator = """

        //Menu : "/#settings"
        AuthMenu  _00000 = AuthMenu.findByUrl('/#settings'                      ) ?: new AuthMenu([parentMenu:    null, url: '/#settings'                       , title: 'Settings'                     , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-cog'                             ]).save()
        AuthMenu  _01000 = AuthMenu.findByUrl('/#authMenu'                      ) ?: new AuthMenu([parentMenu:  _00000, url: '/#authMenu'                       , title: 'Menu'                         , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'               ]).save()
        AuthMenu  _01100 = AuthMenu.findByUrl('/authMenu/index'                 ) ?: new AuthMenu([parentMenu:  _01000, url: '/authMenu/index'                  , title: 'Menu - List'                  , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'           ]).save()
        AuthMenu  _01200 = AuthMenu.findByUrl('/authMenu/create'                ) ?: new AuthMenu([parentMenu:  _01000, url: '/authMenu/create'                 , title: 'Menu - Create'                , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'           ]).save()
        AuthMenu  _02000 = AuthMenu.findByUrl('/#personnel'                     ) ?: new AuthMenu([parentMenu:  _00000, url: '/#personnel'                      , title: 'Personnel'                    , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'               ]).save()
        AuthMenu  _02100 = AuthMenu.findByUrl('/#authUser'                      ) ?: new AuthMenu([parentMenu:  _02000, url: '/#authUser'                       , title: 'User'                         , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'               ]).save()
        AuthMenu  _02110 = AuthMenu.findByUrl('/authUser/index'                 ) ?: new AuthMenu([parentMenu:  _02100, url: '/authUser/index'                  , title: 'User - List'                  , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'           ]).save()
        AuthMenu  _02120 = AuthMenu.findByUrl('/authUser/create'                ) ?: new AuthMenu([parentMenu:  _02100, url: '/authUser/create'                 , title: 'User - Create'                , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'           ]).save()
        AuthMenu  _02210 = AuthMenu.findByUrl('/#authRole'                      ) ?: new AuthMenu([parentMenu:  _02000, url: '/#authRole'                       , title: 'Role'                         , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'               ]).save()
        AuthMenu  _02211 = AuthMenu.findByUrl('/authRole/index'                 ) ?: new AuthMenu([parentMenu:  _02210, url: '/authRole/index'                  , title: 'Role - List'                  , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'           ]).save()
        AuthMenu  _02212 = AuthMenu.findByUrl('/authRole/create'                ) ?: new AuthMenu([parentMenu:  _02210, url: '/authRole/create'                 , title: 'Role - Create'                , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'           ]).save()
        AuthMenu  _02300 = AuthMenu.findByUrl('/#personnelApproval'             ) ?: new AuthMenu([parentMenu:  _02000, url: '/#personnelApproval'              , title: 'Approval'                     , sortOrder: 15, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'               ]).save()
        AuthMenu  _02310 = AuthMenu.findByUrl('/#approvalProcess'               ) ?: new AuthMenu([parentMenu:  _02300, url: '/#approvalProcess'                , title: 'Approval Process'             , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'               ]).save()
        AuthMenu  _02311 = AuthMenu.findByUrl('/approvalProcess/index'          ) ?: new AuthMenu([parentMenu:  _02310, url: '/approvalProcess/index'           , title: 'AP - List'                    , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'           ]).save()
        AuthMenu  _02312 = AuthMenu.findByUrl('/approvalProcess/create'         ) ?: new AuthMenu([parentMenu:  _02310, url: '/approvalProcess/create'          , title: 'AP - Create'                  , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'           ]).save()
        AuthMenu  _02320 = AuthMenu.findByUrl('/#approvalGroup'                 ) ?: new AuthMenu([parentMenu:  _02300, url: '/#approvalGroup'                  , title: 'Approval Group'               , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'               ]).save()
        AuthMenu  _02321 = AuthMenu.findByUrl('/approvalGroup/index'            ) ?: new AuthMenu([parentMenu:  _02320, url: '/approvalGroup/index'             , title: 'AG - List'                    , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'           ]).save()
        AuthMenu  _02322 = AuthMenu.findByUrl('/approvalGroup/create'           ) ?: new AuthMenu([parentMenu:  _02320, url: '/approvalGroup/create'            , title: 'AG - Create'                  , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'           ]).save()
        AuthMenu  _02330 = AuthMenu.findByUrl('/#approvalStatus'                ) ?: new AuthMenu([parentMenu:  _02300, url: '/#approvalStatus'                 , title: 'Approval Status'              , sortOrder: 15, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'               ]).save()
        AuthMenu  _02331 = AuthMenu.findByUrl('/approvalStatus/index'           ) ?: new AuthMenu([parentMenu:  _02330, url: '/approvalStatus/index'            , title: 'AS - List'                    , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'           ]).save()
        AuthMenu  _02332 = AuthMenu.findByUrl('/approvalStatus/create'          ) ?: new AuthMenu([parentMenu:  _02330, url: '/approvalStatus/create'           , title: 'AS - Create'                  , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'           ]).save()
        AuthMenu  _02400 = AuthMenu.findByUrl('/#landingPage'                   ) ?: new AuthMenu([parentMenu:  _02000, url: '/#landingPage'                    , title: 'Landing Page'                 , sortOrder: 20, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'               ]).save()
        AuthMenu  _02410 = AuthMenu.findByUrl('/landingPage/index'              ) ?: new AuthMenu([parentMenu:  _02400, url: '/landingPage/index'               , title: 'Landing Page - List'          , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'           ]).save()
        AuthMenu  _02420 = AuthMenu.findByUrl('/landingPage/create'             ) ?: new AuthMenu([parentMenu:  _02400, url: '/landingPage/create'              , title: 'Landing Page - Create'        , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'           ]).save()
        AuthMenu  _03000 = AuthMenu.findByUrl('/#mapping'                       ) ?: new AuthMenu([parentMenu:  _00000, url: '/#mapping'                        , title: 'Mapping'                      , sortOrder: 15, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'               ]).save()
        AuthMenu  _03100 = AuthMenu.findByUrl('/#authLkUserRole'                ) ?: new AuthMenu([parentMenu:  _03000, url: '/#authLkUserRole'                 , title: 'User & Role'                  , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'               ]).save()
        AuthMenu  _03110 = AuthMenu.findByUrl('/authLkUserRole/index'           ) ?: new AuthMenu([parentMenu:  _03100, url: '/authLkUserRole/index'            , title: 'User & Role - List'           , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'           ]).save()
        AuthMenu  _03120 = AuthMenu.findByUrl('/authLkUserRole/create'          ) ?: new AuthMenu([parentMenu:  _03100, url: '/authLkUserRole/create'           , title: 'User & Role - Create'         , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'           ]).save()
        AuthMenu  _03200 = AuthMenu.findByUrl('/#authRequestMap'                ) ?: new AuthMenu([parentMenu:  _03000, url: '/#authRequestMap'                 , title: 'Request & Role'               , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'               ]).save()
        AuthMenu  _03210 = AuthMenu.findByUrl('/authRequestMap/index'           ) ?: new AuthMenu([parentMenu:  _03200, url: '/authRequestMap/index'            , title: 'Request & Role - List'        , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'           ]).save()
        AuthMenu  _03220 = AuthMenu.findByUrl('/authRequestMap/create'          ) ?: new AuthMenu([parentMenu:  _03200, url: '/authRequestMap/create'           , title: 'Request & Role - Crete'       , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'           ]).save()
        AuthMenu  _03300 = AuthMenu.findByUrl('/#mappingApproval'               ) ?: new AuthMenu([parentMenu:  _03000, url: '/#mappingApproval'                , title: 'Approval'                     , sortOrder: 15, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'               ]).save()
        AuthMenu  _03310 = AuthMenu.findByUrl('/#approvalGroupMember'           ) ?: new AuthMenu([parentMenu:  _03300, url: '/#approvalGroupMember'            , title: 'AG & Member'                  , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'               ]).save()
        AuthMenu  _03311 = AuthMenu.findByUrl('/approvalGroupMember/index'      ) ?: new AuthMenu([parentMenu:  _03310, url: '/approvalGroupMember/index'       , title: 'AG & Member - List'           , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'           ]).save()
        AuthMenu  _03312 = AuthMenu.findByUrl('/approvalGroupMember/create'     ) ?: new AuthMenu([parentMenu:  _03310, url: '/approvalGroupMember/create'      , title: 'AG & Member - Create'         , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'           ]).save()
        AuthMenu  _03320 = AuthMenu.findByUrl('/#approvalGroupStatus'           ) ?: new AuthMenu([parentMenu:  _03300, url: '/#approvalGroupStatus'            , title: 'AG & AS'                      , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'               ]).save()
        AuthMenu  _03321 = AuthMenu.findByUrl('/approvalGroupStatus/index'      ) ?: new AuthMenu([parentMenu:  _03320, url: '/approvalGroupStatus/index'       , title: 'AG & AS - List'               , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'           ]).save()
        AuthMenu  _03322 = AuthMenu.findByUrl('/approvalGroupStatus/create'     ) ?: new AuthMenu([parentMenu:  _03320, url: '/approvalGroupStatus/create'      , title: 'AG & AS - Create'             , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'           ]).save()
        AuthMenu  _03400 = AuthMenu.findByUrl('/#userLkLoc'                     ) ?: new AuthMenu([parentMenu:  _03000, url: '/#userLkLoc'                      , title: 'User & Location'              , sortOrder: 20, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'               ]).save()
        AuthMenu  _03410 = AuthMenu.findByUrl('/userLkLoc/index'                ) ?: new AuthMenu([parentMenu:  _03400, url: '/userLkLoc/index'                 , title: 'User & Location - List'       , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'           ]).save()
        AuthMenu  _03420 = AuthMenu.findByUrl('/userLkLoc/create'               ) ?: new AuthMenu([parentMenu:  _03400, url: '/userLkLoc/create'                , title: 'User & Location - Create'     , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'           ]).save()
        //Menu : "/#configuration"
        AuthMenu  _10000 = AuthMenu.findByUrl('/#configuration'                 ) ?: new AuthMenu([parentMenu:   null , url: '/#configuration'                  , title: 'Configuration'                , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-cogs'                     ]).save()
        AuthMenu  _11000 = AuthMenu.findByUrl('/#property'                      ) ?: new AuthMenu([parentMenu:  _10000, url: '/#property'                       , title: 'Property'                     , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'        ]).save()
        AuthMenu  _11100 = AuthMenu.findByUrl('/property/index'                 ) ?: new AuthMenu([parentMenu:  _11000, url: '/property/index'                  , title: 'List'                         , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'    ]).save()
        AuthMenu  _11200 = AuthMenu.findByUrl('/property/create'                ) ?: new AuthMenu([parentMenu:  _11000, url: '/property/create'                 , title: 'Create'                       , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'    ]).save()
        AuthMenu  _12000 = AuthMenu.findByUrl('/#lookup'                        ) ?: new AuthMenu([parentMenu:  _10000, url: '/#lookup'                         , title: 'Lookup'                       , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'        ]).save()
        AuthMenu  _12100 = AuthMenu.findByUrl('/lookup/index'                   ) ?: new AuthMenu([parentMenu:  _12000, url: '/lookup/index'                    , title: 'List'                         , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'    ]).save()
        AuthMenu  _12200 = AuthMenu.findByUrl('/lookup/create'                  ) ?: new AuthMenu([parentMenu:  _12000, url: '/lookup/create'                   , title: 'Create'                       , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'    ]).save()
        AuthMenu  _13000 = AuthMenu.findByUrl('/#department'                    ) ?: new AuthMenu([parentMenu:  _10000, url: '/#department'                     , title: 'Department'                   , sortOrder: 15, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'        ]).save()
        AuthMenu  _13100 = AuthMenu.findByUrl('/department/index'               ) ?: new AuthMenu([parentMenu:  _13000, url: '/department/index'                , title: 'List'                         , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'    ]).save()
        AuthMenu  _13200 = AuthMenu.findByUrl('/department/create'              ) ?: new AuthMenu([parentMenu:  _13000, url: '/department/create'               , title: 'Create'                       , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'    ]).save()
        AuthMenu  _14000 = AuthMenu.findByUrl('/#designation'                   ) ?: new AuthMenu([parentMenu:  _10000, url: '/#designation'                    , title: 'Designation'                  , sortOrder: 20, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'        ]).save()
        AuthMenu  _14100 = AuthMenu.findByUrl('/designation/index'              ) ?: new AuthMenu([parentMenu:  _14000, url: '/designation/index'               , title: 'List'                         , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'    ]).save()
        AuthMenu  _14200 = AuthMenu.findByUrl('/designation/create'             ) ?: new AuthMenu([parentMenu:  _14000, url: '/designation/create'              , title: 'Create'                       , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'    ]).save()
        AuthMenu  _15000 = AuthMenu.findByUrl('/#calendar'                      ) ?: new AuthMenu([parentMenu:  _10000, url: '/#calendar'                       , title: 'Calender'                     , sortOrder: 25, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'        ]).save()
        AuthMenu  _15100 = AuthMenu.findByUrl('/calendar/index'                 ) ?: new AuthMenu([parentMenu:  _15000, url: '/calendar/index'                  , title: 'List'                         , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'    ]).save()
        AuthMenu  _15200 = AuthMenu.findByUrl('/calendar/create'                ) ?: new AuthMenu([parentMenu:  _15000, url: '/calendar/create'                 , title: 'Create'                       , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'    ]).save()
        AuthMenu  _16000 = AuthMenu.findByUrl('/#uom'                           ) ?: new AuthMenu([parentMenu:  _10000, url: '/#uom'                            , title: 'Unit Of Measurement'          , sortOrder: 30, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'        ]).save()
        AuthMenu  _16100 = AuthMenu.findByUrl('/uom/index'                      ) ?: new AuthMenu([parentMenu:  _16000, url: '/uom/index'                       , title: 'List'                         , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'    ]).save()
        AuthMenu  _16200 = AuthMenu.findByUrl('/uom/create'                     ) ?: new AuthMenu([parentMenu:  _16000, url: '/uom/create'                      , title: 'Create'                       , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'    ]).save()
        AuthMenu  _17000 = AuthMenu.findByUrl('/#quarter'                       ) ?: new AuthMenu([parentMenu:  _10000, url: '/#quarter'                        , title: 'Quarter'                      , sortOrder: 35, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'        ]).save()
        AuthMenu  _17100 = AuthMenu.findByUrl('/quarter/index'                  ) ?: new AuthMenu([parentMenu:  _17000, url: '/quarter/index'                   , title: 'Quarter - List'               , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'    ]).save()
        AuthMenu  _17200 = AuthMenu.findByUrl('/quarter/create'                 ) ?: new AuthMenu([parentMenu:  _17000, url: '/quarter/create'                  , title: 'Quarter - Create'             , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'    ]).save()
        AuthMenu  _19000 = AuthMenu.findByUrl('/#location'                      ) ?: new AuthMenu([parentMenu:  _10000, url: '/#location'                       , title: 'Location'                     , sortOrder: 45, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'        ]).save()
        AuthMenu  _19100 = AuthMenu.findByUrl('/#division'                      ) ?: new AuthMenu([parentMenu:  _19000, url: '/#division'                       , title: 'Division'                     , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'        ]).save()
        AuthMenu  _19110 = AuthMenu.findByUrl('/division/index'                 ) ?: new AuthMenu([parentMenu:  _19100, url: '/division/index'                  , title: 'Division - List'              , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'    ]).save()
        AuthMenu  _19120 = AuthMenu.findByUrl('/division/create'                ) ?: new AuthMenu([parentMenu:  _19100, url: '/division/create'                 , title: 'Division - Create'            , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'    ]).save()
        AuthMenu  _19200 = AuthMenu.findByUrl('/#district'                      ) ?: new AuthMenu([parentMenu:  _19000, url: '/#district'                       , title: 'District'                     , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'        ]).save()
        AuthMenu  _19210 = AuthMenu.findByUrl('/district/index'                 ) ?: new AuthMenu([parentMenu:  _19200, url: '/district/index'                  , title: 'District - List'              , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'    ]).save()
        AuthMenu  _19220 = AuthMenu.findByUrl('/district/create'                ) ?: new AuthMenu([parentMenu:  _19200, url: '/district/create'                 , title: 'District - Create'            , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'    ]).save()
        AuthMenu  _19300 = AuthMenu.findByUrl('/#upazila'                       ) ?: new AuthMenu([parentMenu:  _19000, url: '/#upazila'                        , title: 'Upazila'                      , sortOrder: 15, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'        ]).save()
        AuthMenu  _19310 = AuthMenu.findByUrl('/upazila/index'                  ) ?: new AuthMenu([parentMenu:  _19300, url: '/upazila/index'                   , title: 'Upazila - List'               , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'    ]).save()
        AuthMenu  _19320 = AuthMenu.findByUrl('/upazila/create'                 ) ?: new AuthMenu([parentMenu:  _19300, url: '/upazila/create'                  , title: 'Upazila - Create'             , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'    ]).save()
        AuthMenu  _19400 = AuthMenu.findByUrl('/#unionParishad'                 ) ?: new AuthMenu([parentMenu:  _19000, url: '/#unionParishad'                  , title: 'Union Parishad'               , sortOrder: 20, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'        ]).save()
        AuthMenu  _19410 = AuthMenu.findByUrl('/unionParishad/index'            ) ?: new AuthMenu([parentMenu:  _19400, url: '/unionParishad/index'             , title: 'Union Parishad - List'        , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'    ]).save()
        AuthMenu  _19420 = AuthMenu.findByUrl('/unionParishad/create'           ) ?: new AuthMenu([parentMenu:  _19400, url: '/unionParishad/create'            , title: 'Union Parishad - Create'      , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'    ]).save()
        AuthMenu  _19500 = AuthMenu.findByUrl('/#ward'                          ) ?: new AuthMenu([parentMenu:  _19000, url: '/#ward'                           , title: 'Ward'                         , sortOrder: 25, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'        ]).save()
        AuthMenu  _19510 = AuthMenu.findByUrl('/ward/index'                     ) ?: new AuthMenu([parentMenu:  _19500, url: '/ward/index'                      , title: 'Ward - List'                  , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'    ]).save()
        AuthMenu  _19520 = AuthMenu.findByUrl('/ward/create'                    ) ?: new AuthMenu([parentMenu:  _19500, url: '/ward/create'                     , title: 'Ward - Create'                , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'    ]).save()
        AuthMenu  _19600 = AuthMenu.findByUrl('/#locationType'                  ) ?: new AuthMenu([parentMenu:  _19000, url: '/#locationType'                   , title: 'Location Type'                , sortOrder: 30, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'        ]).save()
        AuthMenu  _19610 = AuthMenu.findByUrl('/locationType/index'             ) ?: new AuthMenu([parentMenu:  _19600, url: '/locationType/index'              , title: 'Location Type - List'         , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'    ]).save()
        AuthMenu  _19620 = AuthMenu.findByUrl('/locationType/create'            ) ?: new AuthMenu([parentMenu:  _19600, url: '/locationType/create'             , title: 'Location Type - Create'       , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'    ]).save()
        //       /#adm
        AuthMenu _100000 = AuthMenu.findByUrl("/#adm"                           ) ?: new AuthMenu([parentMenu:    null, url: "/#adm"                            , title: "Admin"                        , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _110000 = AuthMenu.findByUrl("/admLogReportCall/index"         ) ?: new AuthMenu([parentMenu: _100000, url: "/admLogReportCall/index"          , title: "Log Report Call"              , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _120000 = AuthMenu.findByUrl("/#admParam"                      ) ?: new AuthMenu([parentMenu: _100000, url: "/#admParam"                       , title: "Parameters"                   , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _121000 = AuthMenu.findByUrl("/admParam/index"                 ) ?: new AuthMenu([parentMenu: _120000, url: "/admParam/index"                  , title: "Parameter - Index"            , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _122000 = AuthMenu.findByUrl("/admParam/create"                ) ?: new AuthMenu([parentMenu: _120000, url: "/admParam/create"                 , title: "Parameter - Create"           , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _130000 = AuthMenu.findByUrl("/#admPermissible/"               ) ?: new AuthMenu([parentMenu: _100000, url: "/#admPermissible/"                , title: "Permissible"                  , sortOrder: 15, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _131000 = AuthMenu.findByUrl("/admPermissible/index"           ) ?: new AuthMenu([parentMenu: _130000, url: "/admPermissible/index"            , title: "Permissible - Index"          , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _132000 = AuthMenu.findByUrl("/admPermissible/create"          ) ?: new AuthMenu([parentMenu: _130000, url: "/admPermissible/create"           , title: "Permissible - Create"         , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _140000 = AuthMenu.findByUrl("/#admProcMst"                    ) ?: new AuthMenu([parentMenu: _100000, url: "/#admProcMst"                     , title: "Process Master"               , sortOrder: 20, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _141000 = AuthMenu.findByUrl("/admProcMst/index"               ) ?: new AuthMenu([parentMenu: _140000, url: "/admProcMst/index"                , title: "Process Master - Index"       , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _142000 = AuthMenu.findByUrl("/admProcMst/create"              ) ?: new AuthMenu([parentMenu: _140000, url: "/admProcMst/create"               , title: "Process Master - Create"      , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _150000 = AuthMenu.findByUrl("/#admProcSts"                    ) ?: new AuthMenu([parentMenu: _100000, url: "/#admProcSts"                     , title: "Process Status"               , sortOrder: 25, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _151000 = AuthMenu.findByUrl("/admProcSts/index"               ) ?: new AuthMenu([parentMenu: _150000, url: "/admProcSts/index"                , title: "Process Status - Index"       , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _152000 = AuthMenu.findByUrl("/admProcSts/create"              ) ?: new AuthMenu([parentMenu: _150000, url: "/admProcSts/create"               , title: "Process Status - Create"      , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _160000 = AuthMenu.findByUrl("/#admRptMst"                     ) ?: new AuthMenu([parentMenu: _100000, url: "/#admRptMst"                      , title: "Report Master"                , sortOrder: 30, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _161000 = AuthMenu.findByUrl("/admRptMst/index"                ) ?: new AuthMenu([parentMenu: _160000, url: "/admRptMst/index"                 , title: "Report Master - Index"        , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _162000 = AuthMenu.findByUrl("/admRptMst/create"               ) ?: new AuthMenu([parentMenu: _160000, url: "/admRptMst/create"                , title: "Report Master - Create"       , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        //       /#com
        AuthMenu _200000 = AuthMenu.findByUrl("/#com"                           ) ?: new AuthMenu([parentMenu:    null, url: "/#com"                            , title: "Common"                       , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _202000 = AuthMenu.findByUrl("/#comBank"                       ) ?: new AuthMenu([parentMenu: _200000, url: "/#comBank"                        , title: "Bank"                         , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _202100 = AuthMenu.findByUrl("/comBank/index"                  ) ?: new AuthMenu([parentMenu: _202000, url: "/comBank/index"                   , title: "Bank - Index"                 , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _202200 = AuthMenu.findByUrl("/comBank/create"                 ) ?: new AuthMenu([parentMenu: _202000, url: "/comBank/create"                  , title: "Bank - Create"                , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _203000 = AuthMenu.findByUrl("/#comBranch"                     ) ?: new AuthMenu([parentMenu: _200000, url: "/#comBranch"                      , title: "Branch"                       , sortOrder: 15, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _203100 = AuthMenu.findByUrl("/comBranch/index"                ) ?: new AuthMenu([parentMenu: _203000, url: "/comBranch/index"                 , title: "Branch - Index"               , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _203200 = AuthMenu.findByUrl("/comBranch/create"               ) ?: new AuthMenu([parentMenu: _203000, url: "/comBranch/create"                , title: "Branch - Create"              , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _206000 = AuthMenu.findByUrl("/#comDepartment"                 ) ?: new AuthMenu([parentMenu: _200000, url: "/#comDepartment"                  , title: "Department"                   , sortOrder: 30, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _206100 = AuthMenu.findByUrl("/comDepartment/index"            ) ?: new AuthMenu([parentMenu: _206000, url: "/comDepartment/index"             , title: "Department - Index"           , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _206200 = AuthMenu.findByUrl("/comDepartment/create"           ) ?: new AuthMenu([parentMenu: _206000, url: "/comDepartment/create"            , title: "Department - Create"          , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _207000 = AuthMenu.findByUrl("/#comDesignation"                ) ?: new AuthMenu([parentMenu: _200000, url: "/#comDesignation"                 , title: "Designation"                  , sortOrder: 35, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _207100 = AuthMenu.findByUrl("/comDesignation/index"           ) ?: new AuthMenu([parentMenu: _207000, url: "/comDesignation/index"            , title: "Designation - Index"          , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _207200 = AuthMenu.findByUrl("/comDesignation/create"          ) ?: new AuthMenu([parentMenu: _207000, url: "/comDesignation/create"           , title: "Designation - Create"         , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _211000 = AuthMenu.findByUrl("/#comHandleError"                ) ?: new AuthMenu([parentMenu: _200000, url: "/#comHandleError"                 , title: "Handle Error"                 , sortOrder: 50, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _211100 = AuthMenu.findByUrl("/comHandleError/index"           ) ?: new AuthMenu([parentMenu: _211000, url: "/comHandleError/index"            , title: "Handle Error - Index"         , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _211200 = AuthMenu.findByUrl("/comHandleError/create"          ) ?: new AuthMenu([parentMenu: _211000, url: "/comHandleError/create"           , title: "Handle Error - Create"        , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _213000 = AuthMenu.findByUrl("/#comLandingPage"                ) ?: new AuthMenu([parentMenu: _200000, url: "/#comLandingPage"                 , title: "Landing Page"                 , sortOrder: 60, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _213100 = AuthMenu.findByUrl("/comLandingPage/index"           ) ?: new AuthMenu([parentMenu: _213000, url: "/comLandingPage/index"            , title: "Landing Page - Index"         , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _213200 = AuthMenu.findByUrl("/comLandingPage/create"          ) ?: new AuthMenu([parentMenu: _213000, url: "/comLandingPage/create"           , title: "Landing Page - Create"        , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _215000 = AuthMenu.findByUrl("/#comLocation"                   ) ?: new AuthMenu([parentMenu: _200000, url: "/#comLocation"                    , title: "Location"                     , sortOrder: 70, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _215100 = AuthMenu.findByUrl("/comLocation/index"              ) ?: new AuthMenu([parentMenu: _215000, url: "/comLocation/index"               , title: "Location - Index"             , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _215200 = AuthMenu.findByUrl("/comLocation/create"             ) ?: new AuthMenu([parentMenu: _215000, url: "/comLocation/create"              , title: "Location - Create"            , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _216000 = AuthMenu.findByUrl("/#comLookup"                     ) ?: new AuthMenu([parentMenu: _200000, url: "/#comLookup"                      , title: "Lookup"                       , sortOrder: 75, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _216100 = AuthMenu.findByUrl("/comLookup/index"                ) ?: new AuthMenu([parentMenu: _216000, url: "/comLookup/index"                 , title: "Lookup - Index"               , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _216200 = AuthMenu.findByUrl("/comLookup/create"               ) ?: new AuthMenu([parentMenu: _216000, url: "/comLookup/create"                , title: "Lookup - Create"              , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _218000 = AuthMenu.findByUrl("/#comProperty"                   ) ?: new AuthMenu([parentMenu: _200000, url: "/#comProperty"                    , title: "Property"                     , sortOrder: 85, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _218100 = AuthMenu.findByUrl("/comProperty/index"              ) ?: new AuthMenu([parentMenu: _218000, url: "/comProperty/index"               , title: "Property - Index"             , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _218200 = AuthMenu.findByUrl("/comProperty/create"             ) ?: new AuthMenu([parentMenu: _218000, url: "/comProperty/create"              , title: "Property - Create"            , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        //       /#ems
        AuthMenu _300000 = AuthMenu.findByUrl("/#ems"                           ) ?: new AuthMenu([parentMenu:    null, url: "/#ems"                            , title: "EMS"                          , sortOrder: 15, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _301000 = AuthMenu.findByUrl("/#emsApplicant"                  ) ?: new AuthMenu([parentMenu: _300000, url: "/#emsApplicant"                   , title: "Applicant"                    , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _301100 = AuthMenu.findByUrl("/emsApplicant/index"             ) ?: new AuthMenu([parentMenu: _301000, url: "/emsApplicant/index"              , title: "Applicant - Index"            , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _301200 = AuthMenu.findByUrl("/emsApplicant/create"            ) ?: new AuthMenu([parentMenu: _301000, url: "/emsApplicant/create"             , title: "Applicant - Create"           , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _302000 = AuthMenu.findByUrl("/#emsAttendance"                 ) ?: new AuthMenu([parentMenu: _300000, url: "/#emsAttendance"                  , title: "Attendance"                   , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _302100 = AuthMenu.findByUrl("/emsAttendance/index"            ) ?: new AuthMenu([parentMenu: _302000, url: "/emsAttendance/index"             , title: "Attendance - Index"           , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _302200 = AuthMenu.findByUrl("/emsAttendance/create"           ) ?: new AuthMenu([parentMenu: _302000, url: "/emsAttendance/create"            , title: "Attendance - Create"          , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _303000 = AuthMenu.findByUrl("/#emsFeeCollection"              ) ?: new AuthMenu([parentMenu: _300000, url: "/#emsFeeCollection"               , title: "Fee Collection"               , sortOrder: 15, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _303100 = AuthMenu.findByUrl("/emsFeeCollection/index"         ) ?: new AuthMenu([parentMenu: _303000, url: "/emsFeeCollection/index"          , title: "Fee Collection - Index"       , sortOrder: 15, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _303200 = AuthMenu.findByUrl("/emsFeeCollection/create"        ) ?: new AuthMenu([parentMenu: _303000, url: "/emsFeeCollection/create"         , title: "Fee Collection - Create"      , sortOrder: 15, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _304000 = AuthMenu.findByUrl("/#emsGuardian"                   ) ?: new AuthMenu([parentMenu: _300000, url: "/#emsGuardian"                    , title: "Guardian"                     , sortOrder: 20, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _304100 = AuthMenu.findByUrl("/emsGuardian/index"              ) ?: new AuthMenu([parentMenu: _304000, url: "/emsGuardian/index"               , title: "Guardian - Index"             , sortOrder: 20, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _304200 = AuthMenu.findByUrl("/emsGuardian/create"             ) ?: new AuthMenu([parentMenu: _304000, url: "/emsGuardian/create"              , title: "Guardian - Create"            , sortOrder: 20, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _305000 = AuthMenu.findByUrl("/#emsLeaveApp"                   ) ?: new AuthMenu([parentMenu: _300000, url: "/#emsLeaveApp"                    , title: "Student Leave App"            , sortOrder: 25, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _305100 = AuthMenu.findByUrl("/emsLeaveApp/index"              ) ?: new AuthMenu([parentMenu: _305000, url: "/emsLeaveApp/index"               , title: "Student Leave App - Index"    , sortOrder: 25, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _305200 = AuthMenu.findByUrl("/emsLeaveApp/create"             ) ?: new AuthMenu([parentMenu: _305000, url: "/emsLeaveApp/create"              , title: "Student Leave App - Create"   , sortOrder: 25, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _306000 = AuthMenu.findByUrl("/#emsMarks"                      ) ?: new AuthMenu([parentMenu: _300000, url: "/#emsMarks"                       , title: "Marks"                        , sortOrder: 30, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _306100 = AuthMenu.findByUrl("/emsMarks/index"                 ) ?: new AuthMenu([parentMenu: _306000, url: "/emsMarks/index"                  , title: "Marks - Index"                , sortOrder: 30, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _306200 = AuthMenu.findByUrl("/emsMarks/create"                ) ?: new AuthMenu([parentMenu: _306000, url: "/emsMarks/create"                 , title: "Marks - Create"               , sortOrder: 30, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _307000 = AuthMenu.findByUrl("/#emsPreAdmission"               ) ?: new AuthMenu([parentMenu: _300000, url: "/#emsPreAdmission"                , title: "Pre Admission"                , sortOrder: 35, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _307100 = AuthMenu.findByUrl("/emsPreAdmission/index"          ) ?: new AuthMenu([parentMenu: _307000, url: "/emsPreAdmission/index"           , title: "Pre Admission - Index"        , sortOrder: 35, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _307200 = AuthMenu.findByUrl("/emsPreAdmission/create"         ) ?: new AuthMenu([parentMenu: _307000, url: "/emsPreAdmission/create"          , title: "Pre Admission - Create"       , sortOrder: 35, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _308000 = AuthMenu.findByUrl("/#emsRegistration"               ) ?: new AuthMenu([parentMenu: _300000, url: "/#emsRegistration"                , title: "Registration"                 , sortOrder: 40, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _308100 = AuthMenu.findByUrl("/emsRegistration/index"          ) ?: new AuthMenu([parentMenu: _308000, url: "/emsRegistration/index"           , title: "Registration - Index"         , sortOrder: 40, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _308200 = AuthMenu.findByUrl("/emsRegistration/create"         ) ?: new AuthMenu([parentMenu: _308000, url: "/emsRegistration/create"          , title: "Registration - Create"        , sortOrder: 40, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _309000 = AuthMenu.findByUrl("/#emsStaffAcademic"              ) ?: new AuthMenu([parentMenu: _300000, url: "/#emsStaffAcademic"               , title: "Staff Academic"               , sortOrder: 45, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _309100 = AuthMenu.findByUrl("/emsStaffAcademic/index"         ) ?: new AuthMenu([parentMenu: _309000, url: "/emsStaffAcademic/index"          , title: "Staff Academic - Index"       , sortOrder: 45, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _309200 = AuthMenu.findByUrl("/emsStaffAcademic/create"        ) ?: new AuthMenu([parentMenu: _309000, url: "/emsStaffAcademic/create"         , title: "Staff Academic - Create"      , sortOrder: 45, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _310000 = AuthMenu.findByUrl("/#emsStudent"                    ) ?: new AuthMenu([parentMenu: _300000, url: "/#emsStudent"                     , title: "Student"                      , sortOrder: 50, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _310100 = AuthMenu.findByUrl("/emsStudent/index"               ) ?: new AuthMenu([parentMenu: _310000, url: "/emsStudent/index"                , title: "Student - Index"              , sortOrder: 50, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _310200 = AuthMenu.findByUrl("/emsStudent/create"              ) ?: new AuthMenu([parentMenu: _310000, url: "/emsStudent/create"               , title: "Student - Create"             , sortOrder: 50, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _311000 = AuthMenu.findByUrl("/#emsStudentAdult"               ) ?: new AuthMenu([parentMenu: _300000, url: "/#emsStudentAdult"                , title: "Student Adult"                , sortOrder: 55, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _311100 = AuthMenu.findByUrl("/emsStudentAdult/index"          ) ?: new AuthMenu([parentMenu: _311000, url: "/emsStudentAdult/index"           , title: "Student Adult - Index"        , sortOrder: 55, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _311200 = AuthMenu.findByUrl("/emsStudentAdult/create"         ) ?: new AuthMenu([parentMenu: _311000, url: "/emsStudentAdult/create"          , title: "Student Adult - Create"       , sortOrder: 55, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _312000 = AuthMenu.findByUrl("/#emsStudentAttendance"          ) ?: new AuthMenu([parentMenu: _300000, url: "/#emsStudentAttendance"           , title: "Student Attendance"           , sortOrder: 60, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _312100 = AuthMenu.findByUrl("/emsStudentAttendance/index"     ) ?: new AuthMenu([parentMenu: _312000, url: "/emsStudentAttendance/index"      , title: "Student Attendance - Index"   , sortOrder: 60, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _312200 = AuthMenu.findByUrl("/emsStudentAttendance/create"    ) ?: new AuthMenu([parentMenu: _312000, url: "/emsStudentAttendance/create"     , title: "Student Attendance - Create"  , sortOrder: 60, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        AuthMenu _313000 = AuthMenu.findByUrl("/#emsStudentFingerPrint"         ) ?: new AuthMenu([parentMenu: _300000, url: "/#emsStudentFingerPrint"          , title: "Student Finger Print"         , sortOrder: 65, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _313100 = AuthMenu.findByUrl("/emsStudentFingerPrint/index"    ) ?: new AuthMenu([parentMenu: _313000, url: "/emsStudentFingerPrint/index"     , title: "Student Finger Print - Index" , sortOrder: 65, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _313200 = AuthMenu.findByUrl("/emsStudentFingerPrint/create"   ) ?: new AuthMenu([parentMenu: _313000, url: "/emsStudentFingerPrint/create"    , title: "Student Finger Print - Create", sortOrder: 65, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        //       /#hr
        AuthMenu _400000 = AuthMenu.findByUrl("/#hr"                            ) ?: new AuthMenu([parentMenu:    null, url: "/#hr"                             , title: "HR"                           , sortOrder: 20, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _410000 = AuthMenu.findByUrl("/#hrStaff"                       ) ?: new AuthMenu([parentMenu: _400000, url: "/#hrStaff"                        , title: "Staff"                        , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-red'         ]).save()
        AuthMenu _411000 = AuthMenu.findByUrl("/hrStaff/index"                  ) ?: new AuthMenu([parentMenu: _410000, url: "/hrStaff/index"                   , title: "Staff - Index"                , sortOrder: 05, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-primary'     ]).save()
        AuthMenu _412000 = AuthMenu.findByUrl("/hrStaff/create"                 ) ?: new AuthMenu([parentMenu: _410000, url: "/hrStaff/create"                  , title: "Staff - Create"               , sortOrder: 10, createdBy: createdBy, menuIcon: 'fa fa-circle-o text-success'     ]).save()
        """
    }
    def destroy = {
    }
}

