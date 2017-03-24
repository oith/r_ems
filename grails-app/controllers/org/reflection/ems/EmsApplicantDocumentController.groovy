package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsApplicantDocumentController {

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
        [emsApplicantDocumentInstanceList: EmsApplicantDocument.list(params), emsApplicantDocumentInstanceCount: EmsApplicantDocument.count()]
    }

    def create() {
        [emsApplicantDocumentInstance: new EmsApplicantDocument(params)]
    }

    @Transactional
    save(EmsApplicantDocument emsApplicantDocumentInstance) {
        if (emsApplicantDocumentInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsApplicantDocument-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsApplicantDocumentInstance.createdBy = currentUser
        //emsApplicantDocumentInstance.validate()
        if (emsApplicantDocumentInstance.hasErrors()) {
            flash.error = "Error-Save-EmsApplicantDocument-L27 : " + emsApplicantDocumentInstance.errors
            redirect(action: "create", emsApplicantDocumentInstance: emsApplicantDocumentInstance)
        }

        try {
            emsApplicantDocumentInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsApplicantDocument-L36 : " + e
            redirect(action: "create", emsApplicantDocumentInstance: emsApplicantDocumentInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsApplicantDocument.pageTitle.label", default: "EmsApplicantDocument"), emsApplicantDocumentInstance.id])
                redirect emsApplicantDocumentInstance
            }
            '*' { respond emsApplicantDocumentInstance, [status: CREATED] }
        }
    }

    def show(EmsApplicantDocument emsApplicantDocumentInstance) {
        [emsApplicantDocumentInstance: emsApplicantDocumentInstance]
    }

    def edit(EmsApplicantDocument emsApplicantDocumentInstance) {
        [emsApplicantDocumentInstance: emsApplicantDocumentInstance]
    }

    @Transactional
    update(EmsApplicantDocument emsApplicantDocumentInstance) {
        if (emsApplicantDocumentInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsApplicantDocument-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsApplicantDocumentInstance.modifiedBy = currentUser
        //emsApplicantDocumentInstance.modifiedDate = currentDate
        //emsApplicantDocumentInstance.validate()
        if (emsApplicantDocumentInstance.hasErrors()) {
            flash.error = "Error-Update-EmsApplicantDocument-L67 : " + emsApplicantDocumentInstance.errors
            redirect(action: "update", emsApplicantDocumentInstance: emsApplicantDocumentInstance)
        }

        try {
            emsApplicantDocumentInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsApplicantDocument-L75 : " + e
            redirect(action: "update", emsApplicantDocumentInstance: emsApplicantDocumentInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsApplicantDocument.pageTitle.label", default: "EmsApplicantDocument"), emsApplicantDocumentInstance.id])
                redirect emsApplicantDocumentInstance
            }
            '*' { respond emsApplicantDocumentInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsApplicantDocument emsApplicantDocumentInstance) {

        if (emsApplicantDocumentInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsApplicantDocument-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsApplicantDocumentInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsApplicantDocument-L106 : " + e
            redirect(action: "index")
        }
    }
}
