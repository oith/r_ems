package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStudentAdultController {

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
        [emsStudentAdultInstanceList: EmsStudentAdult.list(params), emsStudentAdultInstanceCount: EmsStudentAdult.count()]
    }

    def create() {
        [emsStudentAdultInstance: new EmsStudentAdult(params)]
    }

    @Transactional
     save(EmsStudentAdult emsStudentAdultInstance) {
        if (emsStudentAdultInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStudentAdult-L21 : Record not found...!");
            redirect(action: "create")
        }

        //emsStudentAdultInstance.createdBy = currentUser;
        //emsStudentAdultInstance.validate();
        if (emsStudentAdultInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStudentAdult-L27 : " + emsStudentAdultInstance.errors
            redirect(action: "create", emsStudentAdultInstance: emsStudentAdultInstance)
        }

        try {
            emsStudentAdultInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStudentAdult-L36 : " + e
            redirect(action: "create", emsStudentAdultInstance: emsStudentAdultInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStudentAdult.pageTitle.label", default: "EmsStudentAdult"), emsStudentAdultInstance.id])
                redirect emsStudentAdultInstance
            }
            '*' { respond emsStudentAdultInstance, [status: CREATED] }
        }
    }

    def show(EmsStudentAdult emsStudentAdultInstance) {
        [emsStudentAdultInstance: emsStudentAdultInstance]
    }

    def edit(EmsStudentAdult emsStudentAdultInstance) {
        [emsStudentAdultInstance: emsStudentAdultInstance]
    }

    @Transactional
     update(EmsStudentAdult emsStudentAdultInstance) {
        if (emsStudentAdultInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStudentAdult-L61 : Record not found...!");
            redirect(action: "update")
        }

        //emsStudentAdultInstance.modifiedBy = currentUser;
        //emsStudentAdultInstance.modifiedDate = currentDate;
        //emsStudentAdultInstance.validate();
        if (emsStudentAdultInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStudentAdult-L67 : " + emsStudentAdultInstance.errors
            redirect(action: "update", emsStudentAdultInstance: emsStudentAdultInstance)
        }

        try {
            emsStudentAdultInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStudentAdult-L75 : " + e
            redirect(action: "update", emsStudentAdultInstance: emsStudentAdultInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStudentAdult.pageTitle.label", default: "EmsStudentAdult"), emsStudentAdultInstance.id])
                redirect emsStudentAdultInstance
            }
            '*' { respond emsStudentAdultInstance, [status: OK] }
        }
    }

    @Transactional
     delete(EmsStudentAdult emsStudentAdultInstance) {

        if (emsStudentAdultInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStudentAdult-L93 : Record not found...!");
            redirect(action: "index")
        }

        try {
            emsStudentAdultInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStudentAdult-L106 : " + e
            redirect(action: "index")
        }
    }

}
