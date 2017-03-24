package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsApplicantController {

    static allowedMethods = [save: "POST", update: "PUT"]

    def springSecurityService,
        commonService,
        dateParseFormat,
        currentDate,
        currentUser

    def beforeInterceptor = {
        currentDate = new Date()
        currentUser = springSecurityService.getCurrentUser()
        dateParseFormat = new SimpleDateFormat(grailsApplication.config.format.dtp.date)
    }

    //def index(Integer max) {
    //params.max = Math.min(max ?: 10, 100)
    def index() {
        [emsApplicantInstanceList: EmsApplicant.list(params), emsApplicantInstanceCount: EmsApplicant.count()]
    }

    def create() {
        [emsApplicantInstance: new EmsApplicant(params), bloodGroupList: commonService.getBloodGroupList()]
    }

    @Transactional
    save(EmsApplicant emsApplicantInstance) {
        if (emsApplicantInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsApplicant-L21 : Record not found...!")
            redirect(action: "create")
        }

        bindData(emsApplicantInstance, ["dob", "admissionDate"])

        emsApplicantInstance.dob            = params.dob ? dateParseFormat.parse(params.dob) : null
        emsApplicantInstance.admissionDate  = params.admissionDate ? dateParseFormat.parse(params.admissionDate) : null

        //emsApplicantInstance.createdBy = currentUser
        emsApplicantInstance.validate()
        if (emsApplicantInstance.hasErrors()) {
            flash.error = "Error-Save-EmsApplicant-L27 : " + emsApplicantInstance.errors
            redirect(action: "create", emsApplicantInstance: emsApplicantInstance)
        }

        try {
            emsApplicantInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsApplicant-L36 : " + e
            redirect(action: "create", emsApplicantInstance: emsApplicantInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsApplicant.pageTitle.label", default: "EmsApplicant"), emsApplicantInstance.id])
                redirect emsApplicantInstance
            }
            '*' { respond emsApplicantInstance, [status: CREATED] }
        }
    }

    def show(EmsApplicant emsApplicantInstance) {
        [emsApplicantInstance: emsApplicantInstance]
    }

    def edit(EmsApplicant emsApplicantInstance) {
        [emsApplicantInstance: emsApplicantInstance, bloodGroupList: commonService.getBloodGroupList()]
    }

    @Transactional
    update(EmsApplicant emsApplicantInstance) {
        if (emsApplicantInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsApplicant-L61 : Record not found...!")
            redirect(action: "update")
        }

        bindData(emsApplicantInstance, ["dob", "admissionDate"])

        emsApplicantInstance.dob            = params.dob ? dateParseFormat.parse(params.dob) : null
        emsApplicantInstance.admissionDate  = params.admissionDate ? dateParseFormat.parse(params.admissionDate) : null

        //emsApplicantInstance.modifiedBy = currentUser
        //emsApplicantInstance.modifiedDate = currentDate
        emsApplicantInstance.validate()
        if (emsApplicantInstance.hasErrors()) {
            flash.error = "Error-Update-EmsApplicant-L67 : " + emsApplicantInstance.errors
            redirect(action: "update", emsApplicantInstance: emsApplicantInstance)
        }

        try {
            emsApplicantInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsApplicant-L75 : " + e
            redirect(action: "update", emsApplicantInstance: emsApplicantInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsApplicant.pageTitle.label", default: "EmsApplicant"), emsApplicantInstance.id])
                redirect emsApplicantInstance
            }
            '*' { respond emsApplicantInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsApplicant emsApplicantInstance) {

        if (emsApplicantInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsApplicant-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsApplicantInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsApplicant-L106 : " + e
            redirect(action: "index")
        }
    }
}
