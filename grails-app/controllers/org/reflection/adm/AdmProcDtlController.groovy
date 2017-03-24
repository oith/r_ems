package org.reflection.adm
import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AdmProcDtlController {

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
        [admProcDtlInstanceList: AdmProcDtl.list(params), admProcDtlInstanceCount: AdmProcDtl.count()]
    }

    def create() {
        [admProcDtlInstance: new AdmProcDtl(params)]
    }

    @Transactional
    save(AdmProcDtl admProcDtlInstance) {
        if (admProcDtlInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-AdmProcDtl-L21 : Record not found...!")
            redirect(action: "create")
        }

        //admProcDtlInstance.createdBy = currentUser
        //admProcDtlInstance.validate()
        if (admProcDtlInstance.hasErrors()) {
            flash.error = "Error-Save-AdmProcDtl-L27 : " + admProcDtlInstance.errors
            redirect(action: "create", admProcDtlInstance: admProcDtlInstance)
        }

        try {
            admProcDtlInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-AdmProcDtl-L36 : " + e
            redirect(action: "create", admProcDtlInstance: admProcDtlInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "admProcDtl.pageTitle.label", default: "AdmProcDtl"), admProcDtlInstance.id])
                redirect admProcDtlInstance
            }
            '*' { respond admProcDtlInstance, [status: CREATED] }
        }
    }

    def show(AdmProcDtl admProcDtlInstance) {
        [admProcDtlInstance: admProcDtlInstance]
    }

    def edit(AdmProcDtl admProcDtlInstance) {
        [admProcDtlInstance: admProcDtlInstance]
    }

    @Transactional
    update(AdmProcDtl admProcDtlInstance) {
        if (admProcDtlInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-AdmProcDtl-L61 : Record not found...!")
            redirect(action: "update")
        }

        //admProcDtlInstance.modifiedBy = currentUser
        //admProcDtlInstance.modifiedDate = currentDate
        //admProcDtlInstance.validate()
        if (admProcDtlInstance.hasErrors()) {
            flash.error = "Error-Update-AdmProcDtl-L67 : " + admProcDtlInstance.errors
            redirect(action: "update", admProcDtlInstance: admProcDtlInstance)
        }

        try {
            admProcDtlInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-AdmProcDtl-L75 : " + e
            redirect(action: "update", admProcDtlInstance: admProcDtlInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "admProcDtl.pageTitle.label", default: "AdmProcDtl"), admProcDtlInstance.id])
                redirect admProcDtlInstance
            }
            '*' { respond admProcDtlInstance, [status: OK] }
        }
    }

    @Transactional
    delete(AdmProcDtl admProcDtlInstance) {

        if (admProcDtlInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-AdmProcDtl-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            admProcDtlInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-AdmProcDtl-L106 : " + e
            redirect(action: "index")
        }
    }
}
