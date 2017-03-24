package org.reflection.hr

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Transactional(readOnly = true)
class HrStaffEducationInfoController {

    static allowedMethods = [save: "POST", update: "PUT"]

    def springSecurityService, dateParseFormat, currentDate, currentUser

    def beforeInterceptor = {
        currentDate     = new Date()
        currentUser     = springSecurityService.getCurrentUser()
        dateParseFormat = new SimpleDateFormat(grailsApplication.config.format.dtp.date)
    }

    //def index(Integer max) {
        //params.max = Math.min(max ?: 10, 100)
    def index() {
        [hrStaffEducationInfoInstanceList: HrStaffEducationInfo.list(params), hrStaffEducationInfoInstanceCount: HrStaffEducationInfo.count()]
    }

    def create() {
        [hrStaffEducationInfoInstance : new HrStaffEducationInfo(params)]
    }

    @Transactional
     save(HrStaffEducationInfo hrStaffEducationInfoInstance) {
        if (hrStaffEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-HrStaffEducationInfo-L21 : Record not found...!");
            redirect(action: "create")
        }

        //hrStaffEducationInfoInstance.createdBy = currentUser;
        //hrStaffEducationInfoInstance.validate();
        if (hrStaffEducationInfoInstance.hasErrors()) {
            flash.error = "Error-Save-HrStaffEducationInfo-L27 : " + hrStaffEducationInfoInstance.errors
            redirect(action: "create", hrStaffEducationInfoInstance: hrStaffEducationInfoInstance)
        }

        try {
            hrStaffEducationInfoInstance.save flush:true
        }
        catch (Exception e) {
            flash.error = "Error-Save-HrStaffEducationInfo-L36 : " + e
            redirect(action: "create", hrStaffEducationInfoInstance: hrStaffEducationInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "hrStaffEducationInfo.pageTitle.label", default: "HrStaffEducationInfo"), hrStaffEducationInfoInstance.id])
                redirect hrStaffEducationInfoInstance
            }
            '*' { respond hrStaffEducationInfoInstance, [status: CREATED] }
        }
    }

    def show(HrStaffEducationInfo hrStaffEducationInfoInstance) {
        [hrStaffEducationInfoInstance : hrStaffEducationInfoInstance]
    }

    def edit(HrStaffEducationInfo hrStaffEducationInfoInstance) {
        [hrStaffEducationInfoInstance : hrStaffEducationInfoInstance]
    }

    @Transactional
     update(HrStaffEducationInfo hrStaffEducationInfoInstance) {
        if (hrStaffEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-HrStaffEducationInfo-L61 : Record not found...!");
            redirect(action: "update")
        }

        //hrStaffEducationInfoInstance.modifiedBy = currentUser;
        //hrStaffEducationInfoInstance.modifiedDate = currentDate;
        //hrStaffEducationInfoInstance.validate();
        if (hrStaffEducationInfoInstance.hasErrors()) {
            flash.error = "Error-Update-HrStaffEducationInfo-L67 : " + hrStaffEducationInfoInstance.errors
            redirect(action: "update", hrStaffEducationInfoInstance: hrStaffEducationInfoInstance)
        }

        try {
            hrStaffEducationInfoInstance.save flush:true
        } catch (Exception e) {
            flash.error = "Error-Update-HrStaffEducationInfo-L75 : " + e
            redirect(action: "update", hrStaffEducationInfoInstance: hrStaffEducationInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "hrStaffEducationInfo.pageTitle.label", default: "HrStaffEducationInfo"), hrStaffEducationInfoInstance.id])
                redirect hrStaffEducationInfoInstance
            }
            '*'{ respond hrStaffEducationInfoInstance, [status: OK] }
        }
    }

    @Transactional
     delete(HrStaffEducationInfo hrStaffEducationInfoInstance) {

        if (hrStaffEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-HrStaffEducationInfo-L93 : Record not found...!");
            redirect(action: "index")
        }

        try {
            hrStaffEducationInfoInstance.delete flush:true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-HrStaffEducationInfo-L106 : " + e
            redirect(action: "index")
        }
    }
}
