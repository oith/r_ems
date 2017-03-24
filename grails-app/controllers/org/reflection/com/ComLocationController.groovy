package org.reflection.com

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComLocationController {

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
        [comLocationInstanceList: ComLocation.list(params), comLocationInstanceCount: ComLocation.count()]
    }

    def create() {
        [comLocationInstance: new ComLocation(params)]
    }

    @Transactional
    save(ComLocation comLocationInstance) {
        if (comLocationInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-ComLocation-L21 : Record not found...!")
            redirect(action: "create")
        }

        //comLocationInstance.createdBy = currentUser
        //comLocationInstance.validate()
        if (comLocationInstance.hasErrors()) {
            flash.error = "Error-Save-ComLocation-L27 : " + comLocationInstance.errors
            redirect(action: "create", comLocationInstance: comLocationInstance)
        }

        try {
            comLocationInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-ComLocation-L36 : " + e
            redirect(action: "create", comLocationInstance: comLocationInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "comLocation.pageTitle.label", default: "ComLocation"), comLocationInstance.id])
                redirect comLocationInstance
            }
            '*' { respond comLocationInstance, [status: CREATED] }
        }
    }

    def show(ComLocation comLocationInstance) {
        [comLocationInstance: comLocationInstance]
    }

    def edit(ComLocation comLocationInstance) {
        [comLocationInstance: comLocationInstance]
    }

    @Transactional
    update(ComLocation comLocationInstance) {
        if (comLocationInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-ComLocation-L61 : Record not found...!")
            redirect(action: "update")
        }

        //comLocationInstance.modifiedBy = currentUser
        //comLocationInstance.modifiedDate = currentDate
        //comLocationInstance.validate()
        if (comLocationInstance.hasErrors()) {
            flash.error = "Error-Update-ComLocation-L67 : " + comLocationInstance.errors
            redirect(action: "update", comLocationInstance: comLocationInstance)
        }

        try {
            comLocationInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-ComLocation-L75 : " + e
            redirect(action: "update", comLocationInstance: comLocationInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "comLocation.pageTitle.label", default: "ComLocation"), comLocationInstance.id])
                redirect comLocationInstance
            }
            '*' { respond comLocationInstance, [status: OK] }
        }
    }

    @Transactional
    delete(ComLocation comLocationInstance) {

        if (comLocationInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-ComLocation-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            comLocationInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-ComLocation-L106 : " + e
            redirect(action: "index")
        }
    }
}
