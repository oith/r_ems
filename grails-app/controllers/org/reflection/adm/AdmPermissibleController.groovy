package org.reflection.adm
import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AdmPermissibleController {

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
        [admPermissibleInstanceList: AdmPermissible.list(params), admPermissibleInstanceCount: AdmPermissible.count()]
    }

    def create() {
        [admPermissibleInstance: new AdmPermissible(params)]
    }

    @Transactional
    def save(AdmPermissible admPermissibleInstance) {
        if (admPermissibleInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-AdmPermissible-L21 : Record not found...!")
            redirect(action: "create")
            return
        }

        //admPermissibleInstance.createdBy = currentUser
        //admPermissibleInstance.validate()
        if (admPermissibleInstance.hasErrors()) {
            flash.error = "Error-Save-AdmPermissible-L27 : " + admPermissibleInstance.errors
            redirect(action: "create", admPermissibleInstance: admPermissibleInstance)
            return
        }

        try {
            admPermissibleInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-AdmPermissible-L36 : " + e
            redirect(action: "create", admPermissibleInstance: admPermissibleInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "admPermissible.pageTitle.label", default: "AdmPermissible"), admPermissibleInstance.id])
                redirect admPermissibleInstance
            }
            '*' { respond admPermissibleInstance, [status: CREATED] }
        }
    }

    def show(AdmPermissible admPermissibleInstance) {
        [admPermissibleInstance: admPermissibleInstance]
    }

    def edit(AdmPermissible admPermissibleInstance) {
        [admPermissibleInstance: admPermissibleInstance]
    }

    @Transactional
    def update(AdmPermissible admPermissibleInstance) {
        if (admPermissibleInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-AdmPermissible-L61 : Record not found...!")
            redirect(action: "update")
            return
        }

        //admPermissibleInstance.modifiedBy = currentUser
        //admPermissibleInstance.modifiedDate = currentDate
        //admPermissibleInstance.validate()
        if (admPermissibleInstance.hasErrors()) {
            flash.error = "Error-Update-AdmPermissible-L67 : " + admPermissibleInstance.errors
            redirect(action: "update", admPermissibleInstance: admPermissibleInstance)
            return
        }

        try {
            admPermissibleInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-AdmPermissible-L75 : " + e
            redirect(action: "update", admPermissibleInstance: admPermissibleInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "admPermissible.pageTitle.label", default: "AdmPermissible"), admPermissibleInstance.id])
                redirect admPermissibleInstance
            }
            '*' { respond admPermissibleInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AdmPermissible admPermissibleInstance) {

        if (admPermissibleInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-AdmPermissible-L93 : Record not found...!")
            redirect(action: "index")
            return
        }

        try {
            admPermissibleInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-AdmPermissible-L106 : " + e
            redirect(action: "index")
        }
    }
}
