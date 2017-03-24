package org.reflection.hr

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class HrStaffLanguageController {

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
        [hrStaffLanguageInstanceList: HrStaffLanguage.list(params), hrStaffLanguageInstanceCount: HrStaffLanguage.count()]
    }

    def create() {
        [hrStaffLanguageInstance: new HrStaffLanguage(params)]
    }

    @Transactional
     save(HrStaffLanguage hrStaffLanguageInstance) {
        if (hrStaffLanguageInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-HrStaffLanguage-L21 : Record not found...!");
            redirect(action: "create")
        }

        //hrStaffLanguageInstance.createdBy = currentUser;
        //hrStaffLanguageInstance.validate();
        if (hrStaffLanguageInstance.hasErrors()) {
            flash.error = "Error-Save-HrStaffLanguage-L27 : " + hrStaffLanguageInstance.errors
            redirect(action: "create", hrStaffLanguageInstance: hrStaffLanguageInstance)
        }

        try {
            hrStaffLanguageInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-HrStaffLanguage-L36 : " + e
            redirect(action: "create", hrStaffLanguageInstance: hrStaffLanguageInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "hrStaffLanguage.pageTitle.label", default: "HrStaffLanguage"), hrStaffLanguageInstance.id])
                redirect hrStaffLanguageInstance
            }
            '*' { respond hrStaffLanguageInstance, [status: CREATED] }
        }
    }

    def show(HrStaffLanguage hrStaffLanguageInstance) {
        [hrStaffLanguageInstance: hrStaffLanguageInstance]
    }

    def edit(HrStaffLanguage hrStaffLanguageInstance) {
        [hrStaffLanguageInstance: hrStaffLanguageInstance]
    }

    @Transactional
     update(HrStaffLanguage hrStaffLanguageInstance) {
        if (hrStaffLanguageInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-HrStaffLanguage-L61 : Record not found...!");
            redirect(action: "update")
        }

        //hrStaffLanguageInstance.modifiedBy = currentUser;
        //hrStaffLanguageInstance.modifiedDate = currentDate;
        //hrStaffLanguageInstance.validate();
        if (hrStaffLanguageInstance.hasErrors()) {
            flash.error = "Error-Update-HrStaffLanguage-L67 : " + hrStaffLanguageInstance.errors
            redirect(action: "update", hrStaffLanguageInstance: hrStaffLanguageInstance)
        }

        try {
            hrStaffLanguageInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-HrStaffLanguage-L75 : " + e
            redirect(action: "update", hrStaffLanguageInstance: hrStaffLanguageInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "hrStaffLanguage.pageTitle.label", default: "HrStaffLanguage"), hrStaffLanguageInstance.id])
                redirect hrStaffLanguageInstance
            }
            '*' { respond hrStaffLanguageInstance, [status: OK] }
        }
    }

    @Transactional
     delete(HrStaffLanguage hrStaffLanguageInstance) {

        if (hrStaffLanguageInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-HrStaffLanguage-L93 : Record not found...!");
            redirect(action: "index")
        }

        try {
            hrStaffLanguageInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-HrStaffLanguage-L106 : " + e
            redirect(action: "index")
        }
    }
}
