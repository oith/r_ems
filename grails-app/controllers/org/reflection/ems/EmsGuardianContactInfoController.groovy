package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsGuardianContactInfoController {

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
        [emsGuardianContactInfoInstanceList: EmsGuardianContactInfo.list(params), emsGuardianContactInfoInstanceCount: EmsGuardianContactInfo.count()]
    }

    def create() {
        [emsGuardianContactInfoInstance: new EmsGuardianContactInfo(params)]
    }

    @Transactional
    save(EmsGuardianContactInfo emsGuardianContactInfoInstance) {
        if (emsGuardianContactInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsGuardianContactInfo-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsGuardianContactInfoInstance.createdBy = currentUser
        //emsGuardianContactInfoInstance.validate()
        if (emsGuardianContactInfoInstance.hasErrors()) {
            flash.error = "Error-Save-EmsGuardianContactInfo-L27 : " + emsGuardianContactInfoInstance.errors
            redirect(action: "create", emsGuardianContactInfoInstance: emsGuardianContactInfoInstance)
        }

        try {
            emsGuardianContactInfoInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsGuardianContactInfo-L36 : " + e
            redirect(action: "create", emsGuardianContactInfoInstance: emsGuardianContactInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsGuardianContactInfo.pageTitle.label", default: "EmsGuardianContactInfo"), emsGuardianContactInfoInstance.id])
                redirect emsGuardianContactInfoInstance
            }
            '*' { respond emsGuardianContactInfoInstance, [status: CREATED] }
        }
    }

    def show(EmsGuardianContactInfo emsGuardianContactInfoInstance) {
        [emsGuardianContactInfoInstance: emsGuardianContactInfoInstance]
    }

    def edit(EmsGuardianContactInfo emsGuardianContactInfoInstance) {
        [emsGuardianContactInfoInstance: emsGuardianContactInfoInstance]
    }

    @Transactional
    update(EmsGuardianContactInfo emsGuardianContactInfoInstance) {
        if (emsGuardianContactInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsGuardianContactInfo-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsGuardianContactInfoInstance.modifiedBy = currentUser
        //emsGuardianContactInfoInstance.modifiedDate = currentDate
        //emsGuardianContactInfoInstance.validate()
        if (emsGuardianContactInfoInstance.hasErrors()) {
            flash.error = "Error-Update-EmsGuardianContactInfo-L67 : " + emsGuardianContactInfoInstance.errors
            redirect(action: "update", emsGuardianContactInfoInstance: emsGuardianContactInfoInstance)
        }

        try {
            emsGuardianContactInfoInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsGuardianContactInfo-L75 : " + e
            redirect(action: "update", emsGuardianContactInfoInstance: emsGuardianContactInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsGuardianContactInfo.pageTitle.label", default: "EmsGuardianContactInfo"), emsGuardianContactInfoInstance.id])
                redirect emsGuardianContactInfoInstance
            }
            '*' { respond emsGuardianContactInfoInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsGuardianContactInfo emsGuardianContactInfoInstance) {

        if (emsGuardianContactInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsGuardianContactInfo-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsGuardianContactInfoInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsGuardianContactInfo-L106 : " + e
            redirect(action: "index")
        }
    }
}
