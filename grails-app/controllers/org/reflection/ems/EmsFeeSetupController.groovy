package org.reflection.ems

import java.text.SimpleDateFormat
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Transactional(readOnly = true)
class EmsFeeSetupController {

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
        [emsFeeSetupInstanceList: EmsFeeSetup.list(params), emsFeeSetupInstanceCount: EmsFeeSetup.count()]
    }

    def create() {
        [emsFeeSetupInstance : new EmsFeeSetup(params)]
    }

    @Transactional
    save(EmsFeeSetup emsFeeSetupInstance) {
        if (emsFeeSetupInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsFeeSetup-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsFeeSetupInstance.createdBy = currentUser
        //emsFeeSetupInstance.validate()
        if (emsFeeSetupInstance.hasErrors()) {
            flash.error = "Error-Save-EmsFeeSetup-L27 : " + emsFeeSetupInstance.errors
            redirect(action: "create", emsFeeSetupInstance: emsFeeSetupInstance)
        }

        try {
            emsFeeSetupInstance.save flush:true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsFeeSetup-L36 : " + e
            redirect(action: "create", emsFeeSetupInstance: emsFeeSetupInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsFeeSetup.pageTitle.label", default: "EmsFeeSetup"), emsFeeSetupInstance.id])
                redirect emsFeeSetupInstance
            }
            '*' { respond emsFeeSetupInstance, [status: CREATED] }
        }
    }

    def show(EmsFeeSetup emsFeeSetupInstance) {
        [emsFeeSetupInstance : emsFeeSetupInstance]
    }

    def edit(EmsFeeSetup emsFeeSetupInstance) {
        [emsFeeSetupInstance : emsFeeSetupInstance]
    }

    @Transactional
    update(EmsFeeSetup emsFeeSetupInstance) {
        if (emsFeeSetupInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsFeeSetup-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsFeeSetupInstance.modifiedBy = currentUser
        //emsFeeSetupInstance.modifiedDate = currentDate
        //emsFeeSetupInstance.validate()
        if (emsFeeSetupInstance.hasErrors()) {
            flash.error = "Error-Update-EmsFeeSetup-L67 : " + emsFeeSetupInstance.errors
            redirect(action: "update", emsFeeSetupInstance: emsFeeSetupInstance)
        }

        try {
            emsFeeSetupInstance.save flush:true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsFeeSetup-L75 : " + e
            redirect(action: "update", emsFeeSetupInstance: emsFeeSetupInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsFeeSetup.pageTitle.label", default: "EmsFeeSetup"), emsFeeSetupInstance.id])
                redirect emsFeeSetupInstance
            }
            '*'{ respond emsFeeSetupInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsFeeSetup emsFeeSetupInstance) {

        if (emsFeeSetupInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsFeeSetup-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsFeeSetupInstance.delete flush:true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsFeeSetup-L106 : " + e
            redirect(action: "index")
        }
    }
}
