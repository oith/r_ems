package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStudentGuardianController {

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
        [emsStudentGuardianInstanceList: EmsStudentGuardian.list(params), emsStudentGuardianInstanceCount: EmsStudentGuardian.count()]
    }

    def create() {
        [emsStudentGuardianInstance: new EmsStudentGuardian(params)]
    }

    @Transactional
    save(EmsStudentGuardian emsStudentGuardianInstance) {
        if (emsStudentGuardianInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStudentGuardian-L21 : Record not found...!");
            redirect(action: "create")
        }

        //emsStudentGuardianInstance.createdBy = currentUser;
        //emsStudentGuardianInstance.validate();
        if (emsStudentGuardianInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStudentGuardian-L27 : " + emsStudentGuardianInstance.errors
            redirect(action: "create", emsStudentGuardianInstance: emsStudentGuardianInstance)
        }

        try {
            emsStudentGuardianInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStudentGuardian-L36 : " + e
            redirect(action: "create", emsStudentGuardianInstance: emsStudentGuardianInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStudentGuardian.pageTitle.label", default: "EmsStudentGuardian"), emsStudentGuardianInstance.id])
                redirect emsStudentGuardianInstance
            }
            '*' { respond emsStudentGuardianInstance, [status: CREATED] }
        }
    }

    def show(EmsStudentGuardian emsStudentGuardianInstance) {
        [emsStudentGuardianInstance: emsStudentGuardianInstance]
    }

    def edit(EmsStudentGuardian emsStudentGuardianInstance) {
        [emsStudentGuardianInstance: emsStudentGuardianInstance]
    }

    @Transactional
    update(EmsStudentGuardian emsStudentGuardianInstance) {
        if (emsStudentGuardianInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStudentGuardian-L61 : Record not found...!");
            redirect(action: "update")
        }

        //emsStudentGuardianInstance.modifiedBy = currentUser;
        //emsStudentGuardianInstance.modifiedDate = currentDate;
        //emsStudentGuardianInstance.validate();
        if (emsStudentGuardianInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStudentGuardian-L67 : " + emsStudentGuardianInstance.errors
            redirect(action: "update", emsStudentGuardianInstance: emsStudentGuardianInstance)
        }

        try {
            emsStudentGuardianInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStudentGuardian-L75 : " + e
            redirect(action: "update", emsStudentGuardianInstance: emsStudentGuardianInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStudentGuardian.pageTitle.label", default: "EmsStudentGuardian"), emsStudentGuardianInstance.id])
                redirect emsStudentGuardianInstance
            }
            '*' { respond emsStudentGuardianInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsStudentGuardian emsStudentGuardianInstance) {

        if (emsStudentGuardianInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStudentGuardian-L93 : Record not found...!");
            redirect(action: "index")
        }

        try {
            emsStudentGuardianInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStudentGuardian-L106 : " + e
            redirect(action: "index")
        }
    }
}
