package org.reflection.com

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComContactPersonController {

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
        [comContactPersonInstanceList: ComContactPerson.list(params), comContactPersonInstanceCount: ComContactPerson.count()]
    }

    def create() {
        [comContactPersonInstance: new ComContactPerson(params)]
    }

    @Transactional
    save(ComContactPerson comContactPersonInstance) {
        if (comContactPersonInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-ComContactPerson-L21 : Record not found...!")
            redirect(action: "create")
            return
        }

        bindData(comContactPersonInstance, ["dob"])
        comContactPersonInstance.dob = params.dob ? dateParseFormat.parse(params.dob) : null

        //comContactPersonInstance.createdBy = currentUser
        comContactPersonInstance.validate()
        if (comContactPersonInstance.hasErrors()) {
            flash.error = "Error-Save-ComContactPerson-L27 : " + comContactPersonInstance.errors
            redirect(action: "create", comContactPersonInstance: comContactPersonInstance)
            return
        }

        try {
            comContactPersonInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-ComContactPerson-L36 : " + e
            redirect(action: "create", comContactPersonInstance: comContactPersonInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "comContactPerson.pageTitle.label", default: "ComContactPerson"), comContactPersonInstance.id])
                redirect comContactPersonInstance
            }
            '*' { respond comContactPersonInstance, [status: CREATED] }
        }
    }

    def show(ComContactPerson comContactPersonInstance) {
        [comContactPersonInstance: comContactPersonInstance]
    }

    def edit(ComContactPerson comContactPersonInstance) {
        [comContactPersonInstance: comContactPersonInstance]
    }

    @Transactional
    update(ComContactPerson comContactPersonInstance) {
        if (comContactPersonInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-ComContactPerson-L61 : Record not found...!")
            redirect(action: "update")
            return
        }

        bindData(comContactPersonInstance, ["dob"])
        comContactPersonInstance.dob = params.dob ? dateParseFormat.parse(params.dob) : null

        //comContactPersonInstance.modifiedBy = currentUser
        //comContactPersonInstance.modifiedDate = currentDate
        comContactPersonInstance.validate()
        if (comContactPersonInstance.hasErrors()) {
            flash.error = "Error-Update-ComContactPerson-L67 : " + comContactPersonInstance.errors
            redirect(action: "update", comContactPersonInstance: comContactPersonInstance)
            return
        }

        try {
            comContactPersonInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-ComContactPerson-L75 : " + e
            redirect(action: "update", comContactPersonInstance: comContactPersonInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "comContactPerson.pageTitle.label", default: "ComContactPerson"), comContactPersonInstance.id])
                redirect comContactPersonInstance
            }
            '*' { respond comContactPersonInstance, [status: OK] }
        }
    }

    @Transactional
    delete(ComContactPerson comContactPersonInstance) {

        if (comContactPersonInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-ComContactPerson-L93 : Record not found...!")
            redirect(action: "index")
            return
        }

        try {
            comContactPersonInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-ComContactPerson-L106 : " + e
            redirect(action: "index")
        }
    }
}
