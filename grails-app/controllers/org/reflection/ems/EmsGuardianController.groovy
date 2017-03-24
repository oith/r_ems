package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsGuardianController {

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
        [emsGuardianInstanceList: EmsGuardian.list(params), emsGuardianInstanceCount: EmsGuardian.count()]
    }

    def create() {
        [emsGuardianInstance: new EmsGuardian(params)]
    }

    @Transactional
    save(EmsGuardian emsGuardianInstance) {
        if (emsGuardianInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsGuardian-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsGuardianInstance.createdBy = currentUser
        //emsGuardianInstance.validate()
        if (emsGuardianInstance.hasErrors()) {
            flash.error = "Error-Save-EmsGuardian-L27 : " + emsGuardianInstance.errors
            redirect(action: "create", emsGuardianInstance: emsGuardianInstance)
        }

        try {
            emsGuardianInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsGuardian-L36 : " + e
            redirect(action: "create", emsGuardianInstance: emsGuardianInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsGuardian.pageTitle.label", default: "EmsGuardian"), emsGuardianInstance.id])
                redirect emsGuardianInstance
            }
            '*' { respond emsGuardianInstance, [status: CREATED] }
        }
    }

    def show(EmsGuardian emsGuardianInstance) {
        [emsGuardianInstance: emsGuardianInstance]
    }

    def edit(EmsGuardian emsGuardianInstance) {
        [emsGuardianInstance: emsGuardianInstance]
    }

    @Transactional
    update(EmsGuardian emsGuardianInstance) {
        if (emsGuardianInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsGuardian-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsGuardianInstance.modifiedBy = currentUser
        //emsGuardianInstance.modifiedDate = currentDate
        //emsGuardianInstance.validate()
        if (emsGuardianInstance.hasErrors()) {
            flash.error = "Error-Update-EmsGuardian-L67 : " + emsGuardianInstance.errors
            redirect(action: "update", emsGuardianInstance: emsGuardianInstance)
        }

        try {
            emsGuardianInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsGuardian-L75 : " + e
            redirect(action: "update", emsGuardianInstance: emsGuardianInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsGuardian.pageTitle.label", default: "EmsGuardian"), emsGuardianInstance.id])
                redirect emsGuardianInstance
            }
            '*' { respond emsGuardianInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsGuardian emsGuardianInstance) {

        if (emsGuardianInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsGuardian-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsGuardianInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsGuardian-L106 : " + e
            redirect(action: "index")
        }
    }
}
