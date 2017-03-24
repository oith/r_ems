package org.reflection.com

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComHandleErrorController {

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
        [comHandleErrorInstanceList: ComHandleError.list(params), comHandleErrorInstanceCount: ComHandleError.count()]
    }

    def create() {
        [comHandleErrorInstance: new ComHandleError(params)]
    }

    @Transactional
    save(ComHandleError comHandleErrorInstance) {
        if (comHandleErrorInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-ComHandleError-L21 : Record not found...!")
            redirect(action: "create")
            return
        }

        bindData(comHandleErrorInstance, ["errorDate"])
        comHandleErrorInstance.errorDate = params.errorDate ? dateParseFormat.parse(params.errorDate) : null

        //comHandleErrorInstance.createdBy = currentUser
        comHandleErrorInstance.validate()
        if (comHandleErrorInstance.hasErrors()) {
            flash.error = "Error-Save-ComHandleError-L27 : " + comHandleErrorInstance.errors
            redirect(action: "create", comHandleErrorInstance: comHandleErrorInstance)
            return
        }

        try {
            comHandleErrorInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-ComHandleError-L36 : " + e
            redirect(action: "create", comHandleErrorInstance: comHandleErrorInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "comHandleError.pageTitle.label", default: "ComHandleError"), comHandleErrorInstance.id])
                redirect comHandleErrorInstance
            }
            '*' { respond comHandleErrorInstance, [status: CREATED] }
        }
    }

    def show(ComHandleError comHandleErrorInstance) {
        [comHandleErrorInstance: comHandleErrorInstance]
    }

    def edit(ComHandleError comHandleErrorInstance) {
        [comHandleErrorInstance: comHandleErrorInstance]
    }

    @Transactional
    update(ComHandleError comHandleErrorInstance) {
        if (comHandleErrorInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-ComHandleError-L61 : Record not found...!")
            redirect(action: "update")
            return
        }

        bindData(comHandleErrorInstance, ["errorDate"])
        comHandleErrorInstance.errorDate = params.errorDate ? dateParseFormat.parse(params.errorDate) : null

        //comHandleErrorInstance.modifiedBy = currentUser
        //comHandleErrorInstance.modifiedDate = currentDate
        comHandleErrorInstance.validate()
        if (comHandleErrorInstance.hasErrors()) {
            flash.error = "Error-Update-ComHandleError-L67 : " + comHandleErrorInstance.errors
            redirect(action: "update", comHandleErrorInstance: comHandleErrorInstance)
            return
        }

        try {
            comHandleErrorInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-ComHandleError-L75 : " + e
            redirect(action: "update", comHandleErrorInstance: comHandleErrorInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "comHandleError.pageTitle.label", default: "ComHandleError"), comHandleErrorInstance.id])
                redirect comHandleErrorInstance
            }
            '*' { respond comHandleErrorInstance, [status: OK] }
        }
    }

    @Transactional
    delete(ComHandleError comHandleErrorInstance) {

        if (comHandleErrorInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-ComHandleError-L93 : Record not found...!")
            redirect(action: "index")
            return
        }

        try {
            comHandleErrorInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-ComHandleError-L106 : " + e
            redirect(action: "index")
        }
    }
}
