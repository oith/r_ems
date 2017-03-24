package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsPreAdmissionController {

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
        [emsPreAdmissionInstanceList: EmsPreAdmission.list(params), emsPreAdmissionInstanceCount: EmsPreAdmission.count()]
    }

    def create() {
        [emsPreAdmissionInstance: new EmsPreAdmission(params)]
    }

    @Transactional
    save(EmsPreAdmission emsPreAdmissionInstance) {
        if (emsPreAdmissionInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsPreAdmission-L21 : Record not found...!")
            redirect(action: "create")
        }

        bindData(emsPreAdmissionInstance, ["applicationDate"])
        emsPreAdmissionInstance.applicationDate = dateParseFormat.parse(params.applicationDate)

        //emsPreAdmissionInstance.createdBy = currentUser
        emsPreAdmissionInstance.validate()
        if (emsPreAdmissionInstance.hasErrors()) {
            flash.error = "Error-Save-EmsPreAdmission-L27 : " + emsPreAdmissionInstance.errors
            redirect(action: "create", emsPreAdmissionInstance: emsPreAdmissionInstance)
        }

        try {
            emsPreAdmissionInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsPreAdmission-L36 : " + e
            redirect(action: "create", emsPreAdmissionInstance: emsPreAdmissionInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsPreAdmission.pageTitle.label", default: "EmsPreAdmission"), emsPreAdmissionInstance.id])
                redirect emsPreAdmissionInstance
            }
            '*' { respond emsPreAdmissionInstance, [status: CREATED] }
        }
    }

    def show(EmsPreAdmission emsPreAdmissionInstance) {
        [emsPreAdmissionInstance: emsPreAdmissionInstance]
    }

    def edit(EmsPreAdmission emsPreAdmissionInstance) {
        [emsPreAdmissionInstance: emsPreAdmissionInstance]
    }

    @Transactional
    update(EmsPreAdmission emsPreAdmissionInstance) {
        if (emsPreAdmissionInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsPreAdmission-L61 : Record not found...!")
            redirect(action: "update")
        }

        bindData(emsPreAdmissionInstance, ["applicationDate"])
        emsPreAdmissionInstance.applicationDate = dateParseFormat.parse(params.applicationDate)

        //emsPreAdmissionInstance.modifiedBy = currentUser
        //emsPreAdmissionInstance.modifiedDate = currentDate
        emsPreAdmissionInstance.validate()
        if (emsPreAdmissionInstance.hasErrors()) {
            flash.error = "Error-Update-EmsPreAdmission-L67 : " + emsPreAdmissionInstance.errors
            redirect(action: "update", emsPreAdmissionInstance: emsPreAdmissionInstance)
        }

        try {
            emsPreAdmissionInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsPreAdmission-L75 : " + e
            redirect(action: "update", emsPreAdmissionInstance: emsPreAdmissionInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsPreAdmission.pageTitle.label", default: "EmsPreAdmission"), emsPreAdmissionInstance.id])
                redirect emsPreAdmissionInstance
            }
            '*' { respond emsPreAdmissionInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsPreAdmission emsPreAdmissionInstance) {

        if (emsPreAdmissionInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsPreAdmission-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsPreAdmissionInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsPreAdmission-L106 : " + e
            redirect(action: "index")
        }
    }
}
