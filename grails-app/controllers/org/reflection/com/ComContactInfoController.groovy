package org.reflection.com

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComContactInfoController {

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
        [comContactInfoInstanceList: ComContactInfo.list(params), comContactInfoInstanceCount: ComContactInfo.count()]
    }

    def create() {
        [comContactInfoInstance: new ComContactInfo(params)]
    }

    @Transactional
    save(ComContactInfo comContactInfoInstance) {
        if (comContactInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-ComContactInfo-L21 : Record not found...!")
            redirect(action: "create")
            return
        }

        //comContactInfoInstance.createdBy = currentUser
        //comContactInfoInstance.validate()
        if (comContactInfoInstance.hasErrors()) {
            flash.error = "Error-Save-ComContactInfo-L27 : " + comContactInfoInstance.errors
            redirect(action: "create", comContactInfoInstance: comContactInfoInstance)
            return
        }

        try {
            comContactInfoInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-ComContactInfo-L36 : " + e
            redirect(action: "create", comContactInfoInstance: comContactInfoInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "comContactInfo.pageTitle.label", default: "ComContactInfo"), comContactInfoInstance.id])
                redirect comContactInfoInstance
            }
            '*' { respond comContactInfoInstance, [status: CREATED] }
        }
    }

    def show(ComContactInfo comContactInfoInstance) {
        [comContactInfoInstance: comContactInfoInstance]
    }

    def edit(ComContactInfo comContactInfoInstance) {
        [comContactInfoInstance: comContactInfoInstance]
    }

    @Transactional
    update(ComContactInfo comContactInfoInstance) {
        if (comContactInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-ComContactInfo-L61 : Record not found...!")
            redirect(action: "update")
            return
        }

        //comContactInfoInstance.modifiedBy = currentUser
        //comContactInfoInstance.modifiedDate = currentDate
        //comContactInfoInstance.validate()
        if (comContactInfoInstance.hasErrors()) {
            flash.error = "Error-Update-ComContactInfo-L67 : " + comContactInfoInstance.errors
            redirect(action: "update", comContactInfoInstance: comContactInfoInstance)
            return
        }

        try {
            comContactInfoInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-ComContactInfo-L75 : " + e
            redirect(action: "update", comContactInfoInstance: comContactInfoInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "comContactInfo.pageTitle.label", default: "ComContactInfo"), comContactInfoInstance.id])
                redirect comContactInfoInstance
            }
            '*' { respond comContactInfoInstance, [status: OK] }
        }
    }

    @Transactional
    delete(ComContactInfo comContactInfoInstance) {

        if (comContactInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-ComContactInfo-L93 : Record not found...!")
            redirect(action: "index")
            return
        }

        try {
            comContactInfoInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
            return
        }
        catch (Exception e) {
            flash.error = "Error-Delete-ComContactInfo-L106 : " + e
            redirect(action: "index")
            return
        }
    }
}
