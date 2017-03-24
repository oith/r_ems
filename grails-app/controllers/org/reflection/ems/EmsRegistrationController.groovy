package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsRegistrationController {

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
        [emsRegistrationInstanceList: EmsRegistration.list(params), emsRegistrationInstanceCount: EmsRegistration.count()]
    }

    def create() {
        [emsRegistrationInstance: new EmsRegistration(params)]
    }

    @Transactional
    save(EmsRegistration emsRegistrationInstance) {
        if (emsRegistrationInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsRegistration-L21 : Record not found...!")
            redirect(action: "create")
        }

        bindData(emsRegistrationInstance, ["admissionDate"])
        emsRegistrationInstance.admissionDate = params.admissionDate ? dateParseFormat.parse(params.admissionDate) : null

        //emsRegistrationInstance.createdBy = currentUser
        emsRegistrationInstance.validate()
        if (emsRegistrationInstance.hasErrors()) {
            flash.error = "Error-Save-EmsRegistration-L27 : " + emsRegistrationInstance.errors
            redirect(action: "create", emsRegistrationInstance: emsRegistrationInstance)
        }

        try {
            emsRegistrationInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsRegistration-L36 : " + e
            redirect(action: "create", emsRegistrationInstance: emsRegistrationInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsRegistration.pageTitle.label", default: "EmsRegistration"), emsRegistrationInstance.id])
                redirect emsRegistrationInstance
            }
            '*' { respond emsRegistrationInstance, [status: CREATED] }
        }
    }

    def show(EmsRegistration emsRegistrationInstance) {
        [emsRegistrationInstance: emsRegistrationInstance]
    }

    def edit(EmsRegistration emsRegistrationInstance) {
        [emsRegistrationInstance: emsRegistrationInstance]
    }

    @Transactional
    update(EmsRegistration emsRegistrationInstance) {
        if (emsRegistrationInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsRegistration-L61 : Record not found...!")
            redirect(action: "update")
        }

        bindData(emsRegistrationInstance, ["admissionDate"])
        emsRegistrationInstance.admissionDate = params.admissionDate ? dateParseFormat.parse(params.admissionDate) : null

        //emsRegistrationInstance.modifiedBy = currentUser
        //emsRegistrationInstance.modifiedDate = currentDate
        emsRegistrationInstance.validate()
        if (emsRegistrationInstance.hasErrors()) {
            flash.error = "Error-Update-EmsRegistration-L67 : " + emsRegistrationInstance.errors
            redirect(action: "update", emsRegistrationInstance: emsRegistrationInstance)
        }

        try {
            emsRegistrationInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsRegistration-L75 : " + e
            redirect(action: "update", emsRegistrationInstance: emsRegistrationInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsRegistration.pageTitle.label", default: "EmsRegistration"), emsRegistrationInstance.id])
                redirect emsRegistrationInstance
            }
            '*' { respond emsRegistrationInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsRegistration emsRegistrationInstance) {

        if (emsRegistrationInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsRegistration-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsRegistrationInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsRegistration-L106 : " + e
            redirect(action: "index")
        }
    }

}
