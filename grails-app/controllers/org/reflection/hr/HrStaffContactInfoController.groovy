package org.reflection.hr

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class HrStaffContactInfoController {

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
        [hrStaffContactInfoInstanceList: HrStaffContactInfo.list(params), hrStaffContactInfoInstanceCount: HrStaffContactInfo.count()]
    }

    def create() {
        [hrStaffContactInfoInstance: new HrStaffContactInfo(params)]
    }

    @Transactional
     save(HrStaffContactInfo hrStaffContactInfoInstance) {
        if (hrStaffContactInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-HrStaffContactInfo-L21 : Record not found...!");
            redirect(action: "create")
        }

        //hrStaffContactInfoInstance.createdBy = currentUser;
        //hrStaffContactInfoInstance.validate();
        if (hrStaffContactInfoInstance.hasErrors()) {
            flash.error = "Error-Save-HrStaffContactInfo-L27 : " + hrStaffContactInfoInstance.errors
            redirect(action: "create", hrStaffContactInfoInstance: hrStaffContactInfoInstance)
        }

        try {
            hrStaffContactInfoInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-HrStaffContactInfo-L36 : " + e
            redirect(action: "create", hrStaffContactInfoInstance: hrStaffContactInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "hrStaffContactInfo.pageTitle.label", default: "HrStaffContactInfo"), hrStaffContactInfoInstance.id])
                redirect hrStaffContactInfoInstance
            }
            '*' { respond hrStaffContactInfoInstance, [status: CREATED] }
        }
    }

    def show(HrStaffContactInfo hrStaffContactInfoInstance) {
        [hrStaffContactInfoInstance: hrStaffContactInfoInstance]
    }

    def edit(HrStaffContactInfo hrStaffContactInfoInstance) {
        [hrStaffContactInfoInstance: hrStaffContactInfoInstance]
    }

    @Transactional
     update(HrStaffContactInfo hrStaffContactInfoInstance) {
        if (hrStaffContactInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-HrStaffContactInfo-L61 : Record not found...!");
            redirect(action: "update")
        }

        //hrStaffContactInfoInstance.modifiedBy = currentUser;
        //hrStaffContactInfoInstance.modifiedDate = currentDate;
        //hrStaffContactInfoInstance.validate();
        if (hrStaffContactInfoInstance.hasErrors()) {
            flash.error = "Error-Update-HrStaffContactInfo-L67 : " + hrStaffContactInfoInstance.errors
            redirect(action: "update", hrStaffContactInfoInstance: hrStaffContactInfoInstance)
        }

        try {
            hrStaffContactInfoInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-HrStaffContactInfo-L75 : " + e
            redirect(action: "update", hrStaffContactInfoInstance: hrStaffContactInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "hrStaffContactInfo.pageTitle.label", default: "HrStaffContactInfo"), hrStaffContactInfoInstance.id])
                redirect hrStaffContactInfoInstance
            }
            '*' { respond hrStaffContactInfoInstance, [status: OK] }
        }
    }

    @Transactional
     delete(HrStaffContactInfo hrStaffContactInfoInstance) {

        if (hrStaffContactInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-HrStaffContactInfo-L93 : Record not found...!");
            redirect(action: "index")
        }

        try {
            hrStaffContactInfoInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-HrStaffContactInfo-L106 : " + e
            redirect(action: "index")
        }
    }
}
