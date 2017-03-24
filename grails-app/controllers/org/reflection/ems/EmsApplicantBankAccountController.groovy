package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsApplicantBankAccountController {

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
        [emsApplicantBankAccountInstanceList: EmsApplicantBankAccount.list(params), emsApplicantBankAccountInstanceCount: EmsApplicantBankAccount.count()]
    }

    def create() {
        [emsApplicantBankAccountInstance: new EmsApplicantBankAccount(params)]
    }

    @Transactional
    save(EmsApplicantBankAccount emsApplicantBankAccountInstance) {
        if (emsApplicantBankAccountInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsApplicantBankAccount-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsApplicantBankAccountInstance.createdBy = currentUser
        //emsApplicantBankAccountInstance.validate()
        if (emsApplicantBankAccountInstance.hasErrors()) {
            flash.error = "Error-Save-EmsApplicantBankAccount-L27 : " + emsApplicantBankAccountInstance.errors
            redirect(action: "create", emsApplicantBankAccountInstance: emsApplicantBankAccountInstance)
        }

        try {
            emsApplicantBankAccountInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsApplicantBankAccount-L36 : " + e
            redirect(action: "create", emsApplicantBankAccountInstance: emsApplicantBankAccountInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsApplicantBankAccount.pageTitle.label", default: "EmsApplicantBankAccount"), emsApplicantBankAccountInstance.id])
                redirect emsApplicantBankAccountInstance
            }
            '*' { respond emsApplicantBankAccountInstance, [status: CREATED] }
        }
    }

    def show(EmsApplicantBankAccount emsApplicantBankAccountInstance) {
        [emsApplicantBankAccountInstance: emsApplicantBankAccountInstance]
    }

    def edit(EmsApplicantBankAccount emsApplicantBankAccountInstance) {
        [emsApplicantBankAccountInstance: emsApplicantBankAccountInstance]
    }

    @Transactional
    update(EmsApplicantBankAccount emsApplicantBankAccountInstance) {
        if (emsApplicantBankAccountInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsApplicantBankAccount-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsApplicantBankAccountInstance.modifiedBy = currentUser
        //emsApplicantBankAccountInstance.modifiedDate = currentDate
        //emsApplicantBankAccountInstance.validate()
        if (emsApplicantBankAccountInstance.hasErrors()) {
            flash.error = "Error-Update-EmsApplicantBankAccount-L67 : " + emsApplicantBankAccountInstance.errors
            redirect(action: "update", emsApplicantBankAccountInstance: emsApplicantBankAccountInstance)
        }

        try {
            emsApplicantBankAccountInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsApplicantBankAccount-L75 : " + e
            redirect(action: "update", emsApplicantBankAccountInstance: emsApplicantBankAccountInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsApplicantBankAccount.pageTitle.label", default: "EmsApplicantBankAccount"), emsApplicantBankAccountInstance.id])
                redirect emsApplicantBankAccountInstance
            }
            '*' { respond emsApplicantBankAccountInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsApplicantBankAccount emsApplicantBankAccountInstance) {

        if (emsApplicantBankAccountInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsApplicantBankAccount-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsApplicantBankAccountInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsApplicantBankAccount-L106 : " + e
            redirect(action: "index")
        }
    }
}
