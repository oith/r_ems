package org.reflection.adm
import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AdmProcStsController {

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
        [admProcStsInstanceList: AdmProcSts.list(params), admProcStsInstanceCount: AdmProcSts.count()]
    }

    def create() {
        [admProcStsInstance: new AdmProcSts(params)]
    }

    @Transactional
    save(AdmProcSts admProcStsInstance) {
        if (admProcStsInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-AdmProcSts-L21 : Record not found...!")
            redirect(action: "create")
        }

        bindData(admProcStsInstance, ["endTime", "startTime"])
        admProcStsInstance.endTime = params.endTime ? dateParseFormat.parse(params.endTime) : null
        admProcStsInstance.startTime = params.startTime ? dateParseFormat.parse(params.startTime) : null

        //admProcStsInstance.createdBy = currentUser
        admProcStsInstance.validate()
        if (admProcStsInstance.hasErrors()) {
            flash.error = "Error-Save-AdmProcSts-L27 : " + admProcStsInstance.errors
            redirect(action: "create", admProcStsInstance: admProcStsInstance)
        }

        try {
            admProcStsInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-AdmProcSts-L36 : " + e
            redirect(action: "create", admProcStsInstance: admProcStsInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "admProcSts.pageTitle.label", default: "AdmProcSts"), admProcStsInstance.id])
                redirect admProcStsInstance
            }
            '*' { respond admProcStsInstance, [status: CREATED] }
        }
    }

    def show(AdmProcSts admProcStsInstance) {
        [admProcStsInstance: admProcStsInstance]
    }

    def edit(AdmProcSts admProcStsInstance) {
        [admProcStsInstance: admProcStsInstance]
    }

    @Transactional
    update(AdmProcSts admProcStsInstance) {
        if (admProcStsInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-AdmProcSts-L61 : Record not found...!")
            redirect(action: "update")
        }
        bindData(admProcStsInstance, ["endTime", "startTime"])
        admProcStsInstance.endTime = params.endTime ? dateParseFormat.parse(params.endTime) : null
        admProcStsInstance.startTime = params.startTime ? dateParseFormat.parse(params.startTime) : null

        //admProcStsInstance.modifiedBy = currentUser
        //admProcStsInstance.modifiedDate = currentDate
        admProcStsInstance.validate()
        if (admProcStsInstance.hasErrors()) {
            flash.error = "Error-Update-AdmProcSts-L67 : " + admProcStsInstance.errors
            redirect(action: "update", admProcStsInstance: admProcStsInstance)
        }

        try {
            admProcStsInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-AdmProcSts-L75 : " + e
            redirect(action: "update", admProcStsInstance: admProcStsInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "admProcSts.pageTitle.label", default: "AdmProcSts"), admProcStsInstance.id])
                redirect admProcStsInstance
            }
            '*' { respond admProcStsInstance, [status: OK] }
        }
    }

    @Transactional
    delete(AdmProcSts admProcStsInstance) {

        if (admProcStsInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-AdmProcSts-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            admProcStsInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-AdmProcSts-L106 : " + e
            redirect(action: "index")
        }
    }
}
