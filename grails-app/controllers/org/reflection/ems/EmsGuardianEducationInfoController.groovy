package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsGuardianEducationInfoController {

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
        [emsGuardianEducationInfoInstanceList: EmsGuardianEducationInfo.list(params), emsGuardianEducationInfoInstanceCount: EmsGuardianEducationInfo.count()]
    }

    def create() {
        [emsGuardianEducationInfoInstance: new EmsGuardianEducationInfo(params)]
    }

    @Transactional
    save(EmsGuardianEducationInfo emsGuardianEducationInfoInstance) {
        if (emsGuardianEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsGuardianEducationInfo-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsGuardianEducationInfoInstance.createdBy = currentUser
        //emsGuardianEducationInfoInstance.validate()
        if (emsGuardianEducationInfoInstance.hasErrors()) {
            flash.error = "Error-Save-EmsGuardianEducationInfo-L27 : " + emsGuardianEducationInfoInstance.errors
            redirect(action: "create", emsGuardianEducationInfoInstance: emsGuardianEducationInfoInstance)
        }

        try {
            emsGuardianEducationInfoInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsGuardianEducationInfo-L36 : " + e
            redirect(action: "create", emsGuardianEducationInfoInstance: emsGuardianEducationInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsGuardianEducationInfo.pageTitle.label", default: "EmsGuardianEducationInfo"), emsGuardianEducationInfoInstance.id])
                redirect emsGuardianEducationInfoInstance
            }
            '*' { respond emsGuardianEducationInfoInstance, [status: CREATED] }
        }
    }

    def show(EmsGuardianEducationInfo emsGuardianEducationInfoInstance) {
        [emsGuardianEducationInfoInstance: emsGuardianEducationInfoInstance]
    }

    def edit(EmsGuardianEducationInfo emsGuardianEducationInfoInstance) {
        [emsGuardianEducationInfoInstance: emsGuardianEducationInfoInstance]
    }

    @Transactional
    update(EmsGuardianEducationInfo emsGuardianEducationInfoInstance) {
        if (emsGuardianEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsGuardianEducationInfo-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsGuardianEducationInfoInstance.modifiedBy = currentUser
        //emsGuardianEducationInfoInstance.modifiedDate = currentDate
        //emsGuardianEducationInfoInstance.validate()
        if (emsGuardianEducationInfoInstance.hasErrors()) {
            flash.error = "Error-Update-EmsGuardianEducationInfo-L67 : " + emsGuardianEducationInfoInstance.errors
            redirect(action: "update", emsGuardianEducationInfoInstance: emsGuardianEducationInfoInstance)
        }

        try {
            emsGuardianEducationInfoInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsGuardianEducationInfo-L75 : " + e
            redirect(action: "update", emsGuardianEducationInfoInstance: emsGuardianEducationInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsGuardianEducationInfo.pageTitle.label", default: "EmsGuardianEducationInfo"), emsGuardianEducationInfoInstance.id])
                redirect emsGuardianEducationInfoInstance
            }
            '*' { respond emsGuardianEducationInfoInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsGuardianEducationInfo emsGuardianEducationInfoInstance) {

        if (emsGuardianEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsGuardianEducationInfo-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsGuardianEducationInfoInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsGuardianEducationInfo-L106 : " + e
            redirect(action: "index")
        }
    }
}
