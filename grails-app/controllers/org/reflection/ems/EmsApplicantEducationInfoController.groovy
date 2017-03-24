package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsApplicantEducationInfoController {

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
        [emsApplicantEducationInfoInstanceList: EmsApplicantEducationInfo.list(params), emsApplicantEducationInfoInstanceCount: EmsApplicantEducationInfo.count()]
    }

    def create() {
        [emsApplicantEducationInfoInstance: new EmsApplicantEducationInfo(params)]
    }

    @Transactional
    save(EmsApplicantEducationInfo emsApplicantEducationInfoInstance) {
        if (emsApplicantEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsApplicantEducationInfo-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsApplicantEducationInfoInstance.createdBy = currentUser
        //emsApplicantEducationInfoInstance.validate()
        if (emsApplicantEducationInfoInstance.hasErrors()) {
            flash.error = "Error-Save-EmsApplicantEducationInfo-L27 : " + emsApplicantEducationInfoInstance.errors
            redirect(action: "create", emsApplicantEducationInfoInstance: emsApplicantEducationInfoInstance)
        }

        try {
            emsApplicantEducationInfoInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsApplicantEducationInfo-L36 : " + e
            redirect(action: "create", emsApplicantEducationInfoInstance: emsApplicantEducationInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsApplicantEducationInfo.pageTitle.label", default: "EmsApplicantEducationInfo"), emsApplicantEducationInfoInstance.id])
                redirect emsApplicantEducationInfoInstance
            }
            '*' { respond emsApplicantEducationInfoInstance, [status: CREATED] }
        }
    }

    def show(EmsApplicantEducationInfo emsApplicantEducationInfoInstance) {
        [emsApplicantEducationInfoInstance: emsApplicantEducationInfoInstance]
    }

    def edit(EmsApplicantEducationInfo emsApplicantEducationInfoInstance) {
        [emsApplicantEducationInfoInstance: emsApplicantEducationInfoInstance]
    }

    @Transactional
    update(EmsApplicantEducationInfo emsApplicantEducationInfoInstance) {
        if (emsApplicantEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsApplicantEducationInfo-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsApplicantEducationInfoInstance.modifiedBy = currentUser
        //emsApplicantEducationInfoInstance.modifiedDate = currentDate
        //emsApplicantEducationInfoInstance.validate()
        if (emsApplicantEducationInfoInstance.hasErrors()) {
            flash.error = "Error-Update-EmsApplicantEducationInfo-L67 : " + emsApplicantEducationInfoInstance.errors
            redirect(action: "update", emsApplicantEducationInfoInstance: emsApplicantEducationInfoInstance)
        }

        try {
            emsApplicantEducationInfoInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsApplicantEducationInfo-L75 : " + e
            redirect(action: "update", emsApplicantEducationInfoInstance: emsApplicantEducationInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsApplicantEducationInfo.pageTitle.label", default: "EmsApplicantEducationInfo"), emsApplicantEducationInfoInstance.id])
                redirect emsApplicantEducationInfoInstance
            }
            '*' { respond emsApplicantEducationInfoInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsApplicantEducationInfo emsApplicantEducationInfoInstance) {

        if (emsApplicantEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsApplicantEducationInfo-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsApplicantEducationInfoInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsApplicantEducationInfo-L106 : " + e
            redirect(action: "index")
        }
    }
}
