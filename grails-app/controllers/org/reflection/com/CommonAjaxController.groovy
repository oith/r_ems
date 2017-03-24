package org.reflection.com

import java.text.SimpleDateFormat

class CommonAjaxController {

    def springSecurityService,
        commonService,
        fileService,
        authUserService,
        dateParseFormat,
        currentDate,
        currentUser;

    public def beforeInterceptor = {
        currentDate = new Date();
        currentUser = springSecurityService.getCurrentUser();
        dateParseFormat = new SimpleDateFormat(grailsApplication.config.format.dtp.date);
    }

    public String getUserByUserName() {
        if (request.xhr) {
            if (params.userName) {
                render authUserService.getUserAndLocationTypeByUserName(params.userName);
            } else {
                println "NullPointerException --> CommonAjax/getUserByUserName() : with provided userName (" + params.userName + ")";
                render("0");
            }
        }
    }

    public Boolean removeThisFromDb() {
        if (request.xhr) {
            if (params.detailName && params.detailId) {
                return commonService.removeThisFromDb(params.detailName, Long.valueOf(params.detailId));
            }
        }
    }

    public def downloadDoc(String moduleName, String subModuleName, String fileName) {
        File file = fileService.getFile(moduleName, subModuleName, fileName);
        if (file.exists()) {
            response.setContentType("application/octet-stream")
            response.setHeader("Content-disposition", "filename=${file.name}")
            response.outputStream << file.bytes
            return
        }
    }
}
