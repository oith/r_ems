package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsLeaveAppController {

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
        [emsLeaveAppInstanceList: EmsLeaveApp.list(params), emsLeaveAppInstanceCount: EmsLeaveApp.count()]
    }

    def create() {
        [emsLeaveAppInstance: new EmsLeaveApp(params)]
    }

    @Transactional
    save(EmsLeaveApp emsLeaveAppInstance) {
        if (emsLeaveAppInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsLeaveApp-L21 : Record not found...!")
            redirect(action: "create")
        }

        bindData(emsLeaveAppInstance, ["startDate", "endDate"])
        emsLeaveAppInstance.startDate = params.startDate ? dateParseFormat.parse(params.startDate) : null
        emsLeaveAppInstance.endDate = params.endDate ? dateParseFormat.parse(params.endDate) : null

        //emsLeaveAppInstance.createdBy = currentUser
        emsLeaveAppInstance.validate()
        if (emsLeaveAppInstance.hasErrors()) {
            flash.error = "Error-Save-EmsLeaveApp-L27 : " + emsLeaveAppInstance.errors
            redirect(action: "create", emsLeaveAppInstance: emsLeaveAppInstance)
        }

        try {
            emsLeaveAppInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsLeaveApp-L36 : " + e
            redirect(action: "create", emsLeaveAppInstance: emsLeaveAppInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsLeaveApp.pageTitle.label", default: "EmsLeaveApp"), emsLeaveAppInstance.id])
                redirect emsLeaveAppInstance
            }
            '*' { respond emsLeaveAppInstance, [status: CREATED] }
        }
    }

    def show(EmsLeaveApp emsLeaveAppInstance) {
        [emsLeaveAppInstance: emsLeaveAppInstance]
    }

    def edit(EmsLeaveApp emsLeaveAppInstance) {
        [emsLeaveAppInstance: emsLeaveAppInstance]
    }

    @Transactional
    update(EmsLeaveApp emsLeaveAppInstance) {
        if (emsLeaveAppInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsLeaveApp-L61 : Record not found...!")
            redirect(action: "update")
        }

        bindData(emsLeaveAppInstance, ["startDate", "endDate"])
        emsLeaveAppInstance.startDate = params.startDate ? dateParseFormat.parse(params.startDate) : null
        emsLeaveAppInstance.endDate = params.endDate ? dateParseFormat.parse(params.endDate) : null

        //emsLeaveAppInstance.modifiedBy = currentUser
        //emsLeaveAppInstance.modifiedDate = currentDate
        emsLeaveAppInstance.validate()
        if (emsLeaveAppInstance.hasErrors()) {
            flash.error = "Error-Update-EmsLeaveApp-L67 : " + emsLeaveAppInstance.errors
            redirect(action: "update", emsLeaveAppInstance: emsLeaveAppInstance)
        }

        try {
            emsLeaveAppInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsLeaveApp-L75 : " + e
            redirect(action: "update", emsLeaveAppInstance: emsLeaveAppInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsLeaveApp.pageTitle.label", default: "EmsLeaveApp"), emsLeaveAppInstance.id])
                redirect emsLeaveAppInstance
            }
            '*' { respond emsLeaveAppInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsLeaveApp emsLeaveAppInstance) {

        if (emsLeaveAppInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsLeaveApp-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsLeaveAppInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsLeaveApp-L106 : " + e
            redirect(action: "index")
        }
    }
}
