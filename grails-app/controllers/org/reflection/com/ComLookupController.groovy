package org.reflection.com

import java.text.SimpleDateFormat
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Transactional(readOnly = true)
class ComLookupController {

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
        [comLookupInstanceList: ComLookup.list(params), comLookupInstanceCount: ComLookup.count()]
    }

    def create() {
        [comLookupInstance : new ComLookup(params)]
    }

    @Transactional
    save(ComLookup comLookupInstance) {
        if (comLookupInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-ComLookup-L21 : Record not found...!")
            redirect(action: "create")
        }

        comLookupInstance.createdBy = currentUser
        comLookupInstance.validate()
        if (comLookupInstance.hasErrors()) {
            flash.error = "Error-Save-ComLookup-L27 : " + comLookupInstance.errors
            redirect(action: "create", comLookupInstance: comLookupInstance)
        }

        try {
            comLookupInstance.save flush:true
        }
        catch (Exception e) {
            flash.error = "Error-Save-ComLookup-L36 : " + e
            redirect(action: "create", comLookupInstance: comLookupInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "comLookup.pageTitle.label", default: "ComLookup"), comLookupInstance.id])
                redirect comLookupInstance
            }
            '*' { respond comLookupInstance, [status: CREATED] }
        }
    }

    def show(ComLookup comLookupInstance) {
        [comLookupInstance : comLookupInstance]
    }

    def edit(ComLookup comLookupInstance) {
        [comLookupInstance : comLookupInstance]
    }

    @Transactional
    update(ComLookup comLookupInstance) {
        if (comLookupInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-ComLookup-L61 : Record not found...!")
            redirect(action: "update")
        }

        //comLookupInstance.modifiedBy = currentUser
        //comLookupInstance.modifiedDate = currentDate
        //comLookupInstance.validate()
        if (comLookupInstance.hasErrors()) {
            flash.error = "Error-Update-ComLookup-L67 : " + comLookupInstance.errors
            redirect(action: "update", comLookupInstance: comLookupInstance)
        }

        try {
            comLookupInstance.save flush:true
        } catch (Exception e) {
            flash.error = "Error-Update-ComLookup-L75 : " + e
            redirect(action: "update", comLookupInstance: comLookupInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "comLookup.pageTitle.label", default: "ComLookup"), comLookupInstance.id])
                redirect comLookupInstance
            }
            '*'{ respond comLookupInstance, [status: OK] }
        }
    }

    @Transactional
    delete(ComLookup comLookupInstance) {

        if (comLookupInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-ComLookup-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            comLookupInstance.delete flush:true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-ComLookup-L106 : " + e
            redirect(action: "index")
        }
    }
}
