package org.reflection.adm
import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AdmProcMstController {

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
        [admProcMstInstanceList: AdmProcMst.list(params), admProcMstInstanceCount: AdmProcMst.count()]
    }

    def create() {
        [admProcMstInstance: new AdmProcMst(params)]
    }

    @Transactional
    save(AdmProcMst admProcMstInstance) {
        if (admProcMstInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-AdmProcMst-L21 : Record not found...!")
            redirect(action: "create")
        }

        //admProcMstInstance.createdBy = currentUser
        //admProcMstInstance.validate()
        if (admProcMstInstance.hasErrors()) {
            flash.error = "Error-Save-AdmProcMst-L27 : " + admProcMstInstance.errors
            redirect(action: "create", admProcMstInstance: admProcMstInstance)
        }

        try {
            admProcMstInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-AdmProcMst-L36 : " + e
            redirect(action: "create", admProcMstInstance: admProcMstInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "admProcMst.pageTitle.label", default: "AdmProcMst"), admProcMstInstance.id])
                redirect admProcMstInstance
            }
            '*' { respond admProcMstInstance, [status: CREATED] }
        }
    }

    def show(AdmProcMst admProcMstInstance) {
        [admProcMstInstance: admProcMstInstance]
    }

    def edit(AdmProcMst admProcMstInstance) {
        [admProcMstInstance: admProcMstInstance]
    }

    @Transactional
    def update(AdmProcMst admProcMstInstance) {
        if (admProcMstInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-AdmProcMst-L61 : Record not found...!")
            redirect(action: "update")
        }

        //admProcMstInstance.modifiedBy = currentUser
        //admProcMstInstance.modifiedDate = currentDate
        //admProcMstInstance.validate()
        if (admProcMstInstance.hasErrors()) {
            flash.error = "Error-Update-AdmProcMst-L67 : " + admProcMstInstance.errors
            redirect(action: "update", admProcMstInstance: admProcMstInstance)
        }

        try {
            admProcMstInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-AdmProcMst-L75 : " + e
            redirect(action: "update", admProcMstInstance: admProcMstInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "admProcMst.pageTitle.label", default: "AdmProcMst"), admProcMstInstance.id])
                redirect admProcMstInstance
            }
            '*' { respond admProcMstInstance, [status: OK] }
        }
    }

    @Transactional
    delete(AdmProcMst admProcMstInstance) {

        if (admProcMstInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-AdmProcMst-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            admProcMstInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-AdmProcMst-L106 : " + e
            redirect(action: "index")
        }
    }
}
