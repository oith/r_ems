package org.reflection.hr

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class HrStaffAdditionalInfoController {

    static allowedMethods = [save: "POST", update: "PUT"]

    def springSecurityService, dateParseFormat, currentDate, currentUser

    def beforeInterceptor = {
        currentDate = new Date()
        currentUser = springSecurityService.getCurrentUser()
        dateParseFormat = new SimpleDateFormat(grailsApplication.config.format.dtp.date)
    }

    //def index(Integer max) {
    //params.max = Math.min(max ?: 10, 100)
    def index() {
        [hrStaffAdditionalInfoInstanceList: HrStaffAdditionalInfo.list(params), hrStaffAdditionalInfoInstanceCount: HrStaffAdditionalInfo.count()]
    }

    def create() {
        [hrStaffAdditionalInfoInstance: new HrStaffAdditionalInfo(params)]
    }

    @Transactional
     save(HrStaffAdditionalInfo hrStaffAdditionalInfoInstance) {
        if (hrStaffAdditionalInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-HrStaffAdditionalInfo-L21 : Record not found...!");
            redirect(action: "create")
        }

        //hrStaffAdditionalInfoInstance.createdBy = currentUser;
        //hrStaffAdditionalInfoInstance.validate();
        if (hrStaffAdditionalInfoInstance.hasErrors()) {
            flash.error = "Error-Save-HrStaffAdditionalInfo-L27 : " + hrStaffAdditionalInfoInstance.errors
            redirect(action: "create", hrStaffAdditionalInfoInstance: hrStaffAdditionalInfoInstance)
        }

        try {
            hrStaffAdditionalInfoInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-HrStaffAdditionalInfo-L36 : " + e
            redirect(action: "create", hrStaffAdditionalInfoInstance: hrStaffAdditionalInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "hrStaffAdditionalInfo.pageTitle.label", default: "HrStaffAdditionalInfo"), hrStaffAdditionalInfoInstance.id])
                redirect hrStaffAdditionalInfoInstance
            }
            '*' { respond hrStaffAdditionalInfoInstance, [status: CREATED] }
        }
    }

    def show(HrStaffAdditionalInfo hrStaffAdditionalInfoInstance) {
        [hrStaffAdditionalInfoInstance: hrStaffAdditionalInfoInstance]
    }

    def edit(HrStaffAdditionalInfo hrStaffAdditionalInfoInstance) {
        [hrStaffAdditionalInfoInstance: hrStaffAdditionalInfoInstance]
    }

    @Transactional
     update(HrStaffAdditionalInfo hrStaffAdditionalInfoInstance) {
        if (hrStaffAdditionalInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-HrStaffAdditionalInfo-L61 : Record not found...!");
            redirect(action: "update")
        }

        //hrStaffAdditionalInfoInstance.modifiedBy = currentUser;
        //hrStaffAdditionalInfoInstance.modifiedDate = currentDate;
        //hrStaffAdditionalInfoInstance.validate();
        if (hrStaffAdditionalInfoInstance.hasErrors()) {
            flash.error = "Error-Update-HrStaffAdditionalInfo-L67 : " + hrStaffAdditionalInfoInstance.errors
            redirect(action: "update", hrStaffAdditionalInfoInstance: hrStaffAdditionalInfoInstance)
        }

        try {
            hrStaffAdditionalInfoInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-HrStaffAdditionalInfo-L75 : " + e
            redirect(action: "update", hrStaffAdditionalInfoInstance: hrStaffAdditionalInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "hrStaffAdditionalInfo.pageTitle.label", default: "HrStaffAdditionalInfo"), hrStaffAdditionalInfoInstance.id])
                redirect hrStaffAdditionalInfoInstance
            }
            '*' { respond hrStaffAdditionalInfoInstance, [status: OK] }
        }
    }

    @Transactional
     delete(HrStaffAdditionalInfo hrStaffAdditionalInfoInstance) {

        if (hrStaffAdditionalInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-HrStaffAdditionalInfo-L93 : Record not found...!");
            redirect(action: "index")
        }

        try {
            hrStaffAdditionalInfoInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-HrStaffAdditionalInfo-L106 : " + e
            redirect(action: "index")
        }
    }
}
