package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsApplicantBranchPreferenceController {

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
        [emsApplicantBranchPreferenceInstanceList: EmsApplicantBranchPreference.list(params), emsApplicantBranchPreferenceInstanceCount: EmsApplicantBranchPreference.count()]
    }

    def create() {
        [emsApplicantBranchPreferenceInstance: new EmsApplicantBranchPreference(params)]
    }

    @Transactional
    save(EmsApplicantBranchPreference emsApplicantBranchPreferenceInstance) {
        if (emsApplicantBranchPreferenceInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsApplicantBranchPreference-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsApplicantBranchPreferenceInstance.createdBy = currentUser
        //emsApplicantBranchPreferenceInstance.validate()
        if (emsApplicantBranchPreferenceInstance.hasErrors()) {
            flash.error = "Error-Save-EmsApplicantBranchPreference-L27 : " + emsApplicantBranchPreferenceInstance.errors
            redirect(action: "create", emsApplicantBranchPreferenceInstance: emsApplicantBranchPreferenceInstance)
        }

        try {
            emsApplicantBranchPreferenceInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsApplicantBranchPreference-L36 : " + e
            redirect(action: "create", emsApplicantBranchPreferenceInstance: emsApplicantBranchPreferenceInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsApplicantBranchPreference.pageTitle.label", default: "EmsApplicantBranchPreference"), emsApplicantBranchPreferenceInstance.id])
                redirect emsApplicantBranchPreferenceInstance
            }
            '*' { respond emsApplicantBranchPreferenceInstance, [status: CREATED] }
        }
    }

    def show(EmsApplicantBranchPreference emsApplicantBranchPreferenceInstance) {
        [emsApplicantBranchPreferenceInstance: emsApplicantBranchPreferenceInstance]
    }

    def edit(EmsApplicantBranchPreference emsApplicantBranchPreferenceInstance) {
        [emsApplicantBranchPreferenceInstance: emsApplicantBranchPreferenceInstance]
    }

    @Transactional
    update(EmsApplicantBranchPreference emsApplicantBranchPreferenceInstance) {
        if (emsApplicantBranchPreferenceInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsApplicantBranchPreference-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsApplicantBranchPreferenceInstance.modifiedBy = currentUser
        //emsApplicantBranchPreferenceInstance.modifiedDate = currentDate
        //emsApplicantBranchPreferenceInstance.validate()
        if (emsApplicantBranchPreferenceInstance.hasErrors()) {
            flash.error = "Error-Update-EmsApplicantBranchPreference-L67 : " + emsApplicantBranchPreferenceInstance.errors
            redirect(action: "update", emsApplicantBranchPreferenceInstance: emsApplicantBranchPreferenceInstance)
        }

        try {
            emsApplicantBranchPreferenceInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsApplicantBranchPreference-L75 : " + e
            redirect(action: "update", emsApplicantBranchPreferenceInstance: emsApplicantBranchPreferenceInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsApplicantBranchPreference.pageTitle.label", default: "EmsApplicantBranchPreference"), emsApplicantBranchPreferenceInstance.id])
                redirect emsApplicantBranchPreferenceInstance
            }
            '*' { respond emsApplicantBranchPreferenceInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsApplicantBranchPreference emsApplicantBranchPreferenceInstance) {

        if (emsApplicantBranchPreferenceInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsApplicantBranchPreference-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsApplicantBranchPreferenceInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsApplicantBranchPreference-L106 : " + e
            redirect(action: "index")
        }
    }
}
