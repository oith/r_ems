package org.reflection.adm

import java.text.SimpleDateFormat
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Transactional(readOnly = true)
class AdmRptFormatController {

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
        [admRptFormatInstanceList: AdmRptFormat.list(params), admRptFormatInstanceCount: AdmRptFormat.count()]
    }

    def create() {
        [admRptFormatInstance : new AdmRptFormat(params)]
    }

    @Transactional
    save(AdmRptFormat admRptFormatInstance) {
        if (admRptFormatInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-AdmRptFormat-L21 : Record not found...!")
            redirect(action: "create")
        }

        //admRptFormatInstance.createdBy = currentUser
        //admRptFormatInstance.validate()
        if (admRptFormatInstance.hasErrors()) {
            flash.error = "Error-Save-AdmRptFormat-L27 : " + admRptFormatInstance.errors
            redirect(action: "create", admRptFormatInstance: admRptFormatInstance)
        }

        try {
            admRptFormatInstance.save flush:true
        }
        catch (Exception e) {
            flash.error = "Error-Save-AdmRptFormat-L36 : " + e
            redirect(action: "create", admRptFormatInstance: admRptFormatInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "admRptFormat.pageTitle.label", default: "AdmRptFormat"), admRptFormatInstance.id])
                redirect admRptFormatInstance
            }
            '*' { respond admRptFormatInstance, [status: CREATED] }
        }
    }

    def show(AdmRptFormat admRptFormatInstance) {
        [admRptFormatInstance : admRptFormatInstance]
    }

    def edit(AdmRptFormat admRptFormatInstance) {
        [admRptFormatInstance : admRptFormatInstance]
    }

    @Transactional
    update(AdmRptFormat admRptFormatInstance) {
        if (admRptFormatInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-AdmRptFormat-L61 : Record not found...!")
            redirect(action: "update")
        }

        //admRptFormatInstance.modifiedBy = currentUser
        //admRptFormatInstance.modifiedDate = currentDate
        //admRptFormatInstance.validate()
        if (admRptFormatInstance.hasErrors()) {
            flash.error = "Error-Update-AdmRptFormat-L67 : " + admRptFormatInstance.errors
            redirect(action: "update", admRptFormatInstance: admRptFormatInstance)
        }

        try {
            admRptFormatInstance.save flush:true
        } catch (Exception e) {
            flash.error = "Error-Update-AdmRptFormat-L75 : " + e
            redirect(action: "update", admRptFormatInstance: admRptFormatInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "admRptFormat.pageTitle.label", default: "AdmRptFormat"), admRptFormatInstance.id])
                redirect admRptFormatInstance
            }
            '*'{ respond admRptFormatInstance, [status: OK] }
        }
    }

    @Transactional
    delete(AdmRptFormat admRptFormatInstance) {

        if (admRptFormatInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-AdmRptFormat-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            admRptFormatInstance.delete flush:true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-AdmRptFormat-L106 : " + e
            redirect(action: "index")
        }
    }
}
