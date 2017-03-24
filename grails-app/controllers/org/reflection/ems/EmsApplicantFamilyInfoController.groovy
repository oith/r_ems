package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsApplicantFamilyInfoController {

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
        [emsApplicantFamilyInfoInstanceList: EmsApplicantFamilyInfo.list(params), emsApplicantFamilyInfoInstanceCount: EmsApplicantFamilyInfo.count()]
    }

    def create() {
        [emsApplicantFamilyInfoInstance: new EmsApplicantFamilyInfo(params)]
    }

    @Transactional
    save(EmsApplicantFamilyInfo emsApplicantFamilyInfoInstance) {
        if (emsApplicantFamilyInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsApplicantFamilyInfo-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsApplicantFamilyInfoInstance.createdBy = currentUser
        //emsApplicantFamilyInfoInstance.validate()
        if (emsApplicantFamilyInfoInstance.hasErrors()) {
            flash.error = "Error-Save-EmsApplicantFamilyInfo-L27 : " + emsApplicantFamilyInfoInstance.errors
            redirect(action: "create", emsApplicantFamilyInfoInstance: emsApplicantFamilyInfoInstance)
        }

        try {
            emsApplicantFamilyInfoInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsApplicantFamilyInfo-L36 : " + e
            redirect(action: "create", emsApplicantFamilyInfoInstance: emsApplicantFamilyInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsApplicantFamilyInfo.pageTitle.label", default: "EmsApplicantFamilyInfo"), emsApplicantFamilyInfoInstance.id])
                redirect emsApplicantFamilyInfoInstance
            }
            '*' { respond emsApplicantFamilyInfoInstance, [status: CREATED] }
        }
    }

    def show(EmsApplicantFamilyInfo emsApplicantFamilyInfoInstance) {
        [emsApplicantFamilyInfoInstance: emsApplicantFamilyInfoInstance]
    }

    def edit(EmsApplicantFamilyInfo emsApplicantFamilyInfoInstance) {
        [emsApplicantFamilyInfoInstance: emsApplicantFamilyInfoInstance]
    }

    @Transactional
    update(EmsApplicantFamilyInfo emsApplicantFamilyInfoInstance) {
        if (emsApplicantFamilyInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsApplicantFamilyInfo-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsApplicantFamilyInfoInstance.modifiedBy = currentUser
        //emsApplicantFamilyInfoInstance.modifiedDate = currentDate
        //emsApplicantFamilyInfoInstance.validate()
        if (emsApplicantFamilyInfoInstance.hasErrors()) {
            flash.error = "Error-Update-EmsApplicantFamilyInfo-L67 : " + emsApplicantFamilyInfoInstance.errors
            redirect(action: "update", emsApplicantFamilyInfoInstance: emsApplicantFamilyInfoInstance)
        }

        try {
            emsApplicantFamilyInfoInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsApplicantFamilyInfo-L75 : " + e
            redirect(action: "update", emsApplicantFamilyInfoInstance: emsApplicantFamilyInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsApplicantFamilyInfo.pageTitle.label", default: "EmsApplicantFamilyInfo"), emsApplicantFamilyInfoInstance.id])
                redirect emsApplicantFamilyInfoInstance
            }
            '*' { respond emsApplicantFamilyInfoInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsApplicantFamilyInfo emsApplicantFamilyInfoInstance) {
        if (emsApplicantFamilyInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsApplicantFamilyInfo-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsApplicantFamilyInfoInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsApplicantFamilyInfo-L106 : " + e
            redirect(action: "index")
        }
    }
}
