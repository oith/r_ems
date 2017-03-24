package org.reflection.adm
import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AdmParamController {

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
        [admParamInstanceList: AdmParam.list(params), admParamInstanceCount: AdmParam.count()]
    }

    def create() {
        [admParamInstance: new AdmParam(params)]
    }

    @Transactional
    save(AdmParam admParamInstance) {
        if (admParamInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-AdmParam-L21 : Record not found...!")
            redirect(action: "create")
        }

        //admParamInstance.createdBy = currentUser
        //admParamInstance.validate()
        if (admParamInstance.hasErrors()) {
            flash.error = "Error-Save-AdmParam-L27 : " + admParamInstance.errors
            redirect(action: "create", admParamInstance: admParamInstance)
        }

        try {
            admParamInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-AdmParam-L36 : " + e
            redirect(action: "create", admParamInstance: admParamInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "admParam.pageTitle.label", default: "AdmParam"), admParamInstance.id])
                redirect admParamInstance
            }
            '*' { respond admParamInstance, [status: CREATED] }
        }
    }

    def show(AdmParam admParamInstance) {
        [admParamInstance: admParamInstance]
    }

    def edit(AdmParam admParamInstance) {
        [admParamInstance: admParamInstance]
    }

    @Transactional
    update(AdmParam admParamInstance) {
        if (admParamInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-AdmParam-L61 : Record not found...!")
            redirect(action: "update")
        }

        //admParamInstance.modifiedBy = currentUser
        //admParamInstance.modifiedDate = currentDate
        //admParamInstance.validate()
        if (admParamInstance.hasErrors()) {
            flash.error = "Error-Update-AdmParam-L67 : " + admParamInstance.errors
            redirect(action: "update", admParamInstance: admParamInstance)
        }

        try {
            admParamInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-AdmParam-L75 : " + e
            redirect(action: "update", admParamInstance: admParamInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "admParam.pageTitle.label", default: "AdmParam"), admParamInstance.id])
                redirect admParamInstance
            }
            '*' { respond admParamInstance, [status: OK] }
        }
    }

    @Transactional
    delete(AdmParam admParamInstance) {
        if (admParamInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-AdmParam-L93 : Record not found...!")
            redirect(action: "index")
        }
        try {
            admParamInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-AdmParam-L106 : " + e
            redirect(action: "index")
        }
    }
}
