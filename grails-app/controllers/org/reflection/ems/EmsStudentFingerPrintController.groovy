package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStudentFingerPrintController {

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
        [emsStudentFingerPrintInstanceList: EmsStudentFingerPrint.list(params), emsStudentFingerPrintInstanceCount: EmsStudentFingerPrint.count()]
    }

    def create() {
        [emsStudentFingerPrintInstance: new EmsStudentFingerPrint(params)]
    }

    @Transactional
    save(EmsStudentFingerPrint emsStudentFingerPrintInstance) {
        if (emsStudentFingerPrintInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStudentFingerPrint-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsStudentFingerPrintInstance.createdBy = currentUser;
        //emsStudentFingerPrintInstance.validate();
        if (emsStudentFingerPrintInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStudentFingerPrint-L27 : " + emsStudentFingerPrintInstance.errors
            redirect(action: "create", emsStudentFingerPrintInstance: emsStudentFingerPrintInstance)
        }

        try {
            emsStudentFingerPrintInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStudentFingerPrint-L36 : " + e
            redirect(action: "create", emsStudentFingerPrintInstance: emsStudentFingerPrintInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStudentFingerPrint.pageTitle.label", default: "EmsStudentFingerPrint"), emsStudentFingerPrintInstance.id])
                redirect emsStudentFingerPrintInstance
            }
            '*' { respond emsStudentFingerPrintInstance, [status: CREATED] }
        }
    }

    def show(EmsStudentFingerPrint emsStudentFingerPrintInstance) {
        [emsStudentFingerPrintInstance: emsStudentFingerPrintInstance]
    }

    def edit(EmsStudentFingerPrint emsStudentFingerPrintInstance) {
        [emsStudentFingerPrintInstance: emsStudentFingerPrintInstance]
    }

    @Transactional
    update(EmsStudentFingerPrint emsStudentFingerPrintInstance) {
        if (emsStudentFingerPrintInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStudentFingerPrint-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsStudentFingerPrintInstance.modifiedBy = currentUser;
        //emsStudentFingerPrintInstance.modifiedDate = currentDate;
        //emsStudentFingerPrintInstance.validate();
        if (emsStudentFingerPrintInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStudentFingerPrint-L67 : " + emsStudentFingerPrintInstance.errors
            redirect(action: "update", emsStudentFingerPrintInstance: emsStudentFingerPrintInstance)
        }

        try {
            emsStudentFingerPrintInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStudentFingerPrint-L75 : " + e
            redirect(action: "update", emsStudentFingerPrintInstance: emsStudentFingerPrintInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStudentFingerPrint.pageTitle.label", default: "EmsStudentFingerPrint"), emsStudentFingerPrintInstance.id])
                redirect emsStudentFingerPrintInstance
            }
            '*' { respond emsStudentFingerPrintInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsStudentFingerPrint emsStudentFingerPrintInstance) {

        if (emsStudentFingerPrintInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStudentFingerPrint-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsStudentFingerPrintInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStudentFingerPrint-L106 : " + e
            redirect(action: "index")
        }
    }
}
