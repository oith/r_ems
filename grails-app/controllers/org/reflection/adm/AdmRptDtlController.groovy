package org.reflection.adm
import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AdmRptDtlController {

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
        [admRptDtlInstanceList: AdmRptDtl.list(params), admRptDtlInstanceCount: AdmRptDtl.count()]
    }

    def create() {
        [admRptDtlInstance: new AdmRptDtl(params)]
    }

    @Transactional
    save(AdmRptDtl admRptDtlInstance) {
        if (admRptDtlInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-AdmRptDtl-L21 : Record not found...!")
            redirect(action: "create")
        }

        //admRptDtlInstance.createdBy = currentUser
        //admRptDtlInstance.validate()
        if (admRptDtlInstance.hasErrors()) {
            flash.error = "Error-Save-AdmRptDtl-L27 : " + admRptDtlInstance.errors
            redirect(action: "create", admRptDtlInstance: admRptDtlInstance)
        }

        try {
            admRptDtlInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-AdmRptDtl-L36 : " + e
            redirect(action: "create", admRptDtlInstance: admRptDtlInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "admRptDtl.pageTitle.label", default: "AdmRptDtl"), admRptDtlInstance.id])
                redirect admRptDtlInstance
            }
            '*' { respond admRptDtlInstance, [status: CREATED] }
        }
    }

    def show(AdmRptDtl admRptDtlInstance) {
        [admRptDtlInstance: admRptDtlInstance]
    }

    def edit(AdmRptDtl admRptDtlInstance) {
        [admRptDtlInstance: admRptDtlInstance]
    }

    @Transactional
    update(AdmRptDtl admRptDtlInstance) {
        if (admRptDtlInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-AdmRptDtl-L61 : Record not found...!")
            redirect(action: "update")
        }

        //admRptDtlInstance.modifiedBy = currentUser
        //admRptDtlInstance.modifiedDate = currentDate
        //admRptDtlInstance.validate()
        if (admRptDtlInstance.hasErrors()) {
            flash.error = "Error-Update-AdmRptDtl-L67 : " + admRptDtlInstance.errors
            redirect(action: "update", admRptDtlInstance: admRptDtlInstance)
        }

        try {
            admRptDtlInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-AdmRptDtl-L75 : " + e
            redirect(action: "update", admRptDtlInstance: admRptDtlInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "admRptDtl.pageTitle.label", default: "AdmRptDtl"), admRptDtlInstance.id])
                redirect admRptDtlInstance
            }
            '*' { respond admRptDtlInstance, [status: OK] }
        }
    }

    @Transactional
    delete(AdmRptDtl admRptDtlInstance) {
        if (admRptDtlInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-AdmRptDtl-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            admRptDtlInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-AdmRptDtl-L106 : " + e
            redirect(action: "index")
        }
    }
}
