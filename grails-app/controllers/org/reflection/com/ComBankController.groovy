package org.reflection.com

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComBankController {

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
        [comBankInstanceList: ComBank.list(params), comBankInstanceCount: ComBank.count()]
    }

    def create() {
        [comBankInstance: new ComBank(params)]
    }

    @Transactional
    save(ComBank comBankInstance) {
        if (comBankInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-ComBank-L21 : Record not found...!")
            redirect(action: "create")
            return
        }

        //comBankInstance.createdBy = currentUser
        //comBankInstance.validate()
        if (comBankInstance.hasErrors()) {
            flash.error = "Error-Save-ComBank-L27 : " + comBankInstance.errors
            redirect(action: "create", comBankInstance: comBankInstance)
            return
        }

        try {
            comBankInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-ComBank-L36 : " + e
            redirect(action: "create", comBankInstance: comBankInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "comBank.pageTitle.label", default: "ComBank"), comBankInstance.id])
                redirect comBankInstance
            }
            '*' { respond comBankInstance, [status: CREATED] }
        }
    }

    def show(ComBank comBankInstance) {
        [comBankInstance: comBankInstance]
    }

    def edit(ComBank comBankInstance) {
        [comBankInstance: comBankInstance]
    }

    @Transactional
    update(ComBank comBankInstance) {
        if (comBankInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-ComBank-L61 : Record not found...!")
            redirect(action: "update")
            return
        }

        //comBankInstance.modifiedBy = currentUser
        //comBankInstance.modifiedDate = currentDate
        //comBankInstance.validate()
        if (comBankInstance.hasErrors()) {
            flash.error = "Error-Update-ComBank-L67 : " + comBankInstance.errors
            redirect(action: "update", comBankInstance: comBankInstance)
            return
        }

        try {
            comBankInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-ComBank-L75 : " + e
            redirect(action: "update", comBankInstance: comBankInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "comBank.pageTitle.label", default: "ComBank"), comBankInstance.id])
                redirect comBankInstance
            }
            '*' { respond comBankInstance, [status: OK] }
        }
    }

    @Transactional
    delete(ComBank comBankInstance) {

        if (comBankInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-ComBank-L93 : Record not found...!")
            redirect(action: "index")
            return
        }

        try {
            comBankInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
            return
        }
        catch (Exception e) {
            flash.error = "Error-Delete-ComBank-L106 : " + e
            redirect(action: "index")
            return
        }
    }
}
