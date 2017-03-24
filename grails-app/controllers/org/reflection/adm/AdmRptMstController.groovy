package org.reflection.adm
import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AdmRptMstController {

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
        [admRptMstInstanceList: AdmRptMst.list(params), admRptMstInstanceCount: AdmRptMst.count()]
    }

    def create() {
        [admRptMstInstance: new AdmRptMst(params)]
    }

    @Transactional
    save(AdmRptMst admRptMstInstance) {
        if (admRptMstInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-AdmRptMst-L21 : Record not found...!")
            redirect(action: "create")
        }

        //admRptMstInstance.createdBy = currentUser
        //admRptMstInstance.validate()
        if (admRptMstInstance.hasErrors()) {
            flash.error = "Error-Save-AdmRptMst-L27 : " + admRptMstInstance.errors
            redirect(action: "create", admRptMstInstance: admRptMstInstance)
        }

        try {
            admRptMstInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-AdmRptMst-L36 : " + e
            redirect(action: "create", admRptMstInstance: admRptMstInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "admRptMst.pageTitle.label", default: "AdmRptMst"), admRptMstInstance.id])
                redirect admRptMstInstance
            }
            '*' { respond admRptMstInstance, [status: CREATED] }
        }
    }

    def show(AdmRptMst admRptMstInstance) {
        [admRptMstInstance: admRptMstInstance]
    }

    def edit(AdmRptMst admRptMstInstance) {
        [admRptMstInstance: admRptMstInstance]
    }

    @Transactional
    update(AdmRptMst admRptMstInstance) {
        if (admRptMstInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-AdmRptMst-L61 : Record not found...!")
            redirect(action: "update")
        }

        //admRptMstInstance.modifiedBy = currentUser
        //admRptMstInstance.modifiedDate = currentDate
        //admRptMstInstance.validate()
        if (admRptMstInstance.hasErrors()) {
            flash.error = "Error-Update-AdmRptMst-L67 : " + admRptMstInstance.errors
            redirect(action: "update", admRptMstInstance: admRptMstInstance)
        }

        try {
            admRptMstInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-AdmRptMst-L75 : " + e
            redirect(action: "update", admRptMstInstance: admRptMstInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "admRptMst.pageTitle.label", default: "AdmRptMst"), admRptMstInstance.id])
                redirect admRptMstInstance
            }
            '*' { respond admRptMstInstance, [status: OK] }
        }
    }

    @Transactional
    delete(AdmRptMst admRptMstInstance) {

        if (admRptMstInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-AdmRptMst-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            admRptMstInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-AdmRptMst-L106 : " + e
            redirect(action: "index")
        }
    }
}
