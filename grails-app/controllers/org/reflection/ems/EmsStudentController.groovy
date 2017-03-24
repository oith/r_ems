package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStudentController {

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
        [emsStudentInstanceList: EmsStudent.list(params), emsStudentInstanceCount: EmsStudent.count()]
    }

    def create() {
        [emsStudentInstance: new EmsStudent(params)]
    }

    @Transactional
     save(EmsStudent emsStudentInstance) {
        if (emsStudentInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStudent-L21 : Record not found...!");
            redirect(action: "create")
        }

        //emsStudentInstance.createdBy = currentUser;
        //emsStudentInstance.validate();
        if (emsStudentInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStudent-L27 : " + emsStudentInstance.errors
            redirect(action: "create", emsStudentInstance: emsStudentInstance)
        }

        try {
            emsStudentInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStudent-L36 : " + e
            redirect(action: "create", emsStudentInstance: emsStudentInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStudent.pageTitle.label", default: "EmsStudent"), emsStudentInstance.id])
                redirect emsStudentInstance
            }
            '*' { respond emsStudentInstance, [status: CREATED] }
        }
    }

    def show(EmsStudent emsStudentInstance) {
        [emsStudentInstance: emsStudentInstance]
    }

    def edit(EmsStudent emsStudentInstance) {
        [emsStudentInstance: emsStudentInstance]
    }

    @Transactional
     update(EmsStudent emsStudentInstance) {
        if (emsStudentInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStudent-L61 : Record not found...!");
            redirect(action: "update")
        }

        //emsStudentInstance.modifiedBy = currentUser;
        //emsStudentInstance.modifiedDate = currentDate;
        //emsStudentInstance.validate();
        if (emsStudentInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStudent-L67 : " + emsStudentInstance.errors
            redirect(action: "update", emsStudentInstance: emsStudentInstance)
        }

        try {
            emsStudentInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStudent-L75 : " + e
            redirect(action: "update", emsStudentInstance: emsStudentInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStudent.pageTitle.label", default: "EmsStudent"), emsStudentInstance.id])
                redirect emsStudentInstance
            }
            '*' { respond emsStudentInstance, [status: OK] }
        }
    }

    @Transactional
     delete(EmsStudent emsStudentInstance) {

        if (emsStudentInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStudent-L93 : Record not found...!");
            redirect(action: "index")
        }

        try {
            emsStudentInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStudent-L106 : " + e
            redirect(action: "index")
        }
    }
}
