package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsMarksController {

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
        [emsMarksInstanceList: EmsMarks.list(params), emsMarksInstanceCount: EmsMarks.count()]
    }

    def create() {
        [emsMarksInstance: new EmsMarks(params)]
    }

    @Transactional
    save(EmsMarks emsMarksInstance) {
        if (emsMarksInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsMarks-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsMarksInstance.createdBy = currentUser
        //emsMarksInstance.validate()
        if (emsMarksInstance.hasErrors()) {
            flash.error = "Error-Save-EmsMarks-L27 : " + emsMarksInstance.errors
            redirect(action: "create", emsMarksInstance: emsMarksInstance)
        }

        try {
            emsMarksInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsMarks-L36 : " + e
            redirect(action: "create", emsMarksInstance: emsMarksInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsMarks.pageTitle.label", default: "EmsMarks"), emsMarksInstance.id])
                redirect emsMarksInstance
            }
            '*' { respond emsMarksInstance, [status: CREATED] }
        }
    }

    def show(EmsMarks emsMarksInstance) {
        [emsMarksInstance: emsMarksInstance]
    }

    def edit(EmsMarks emsMarksInstance) {
        [emsMarksInstance: emsMarksInstance]
    }

    @Transactional
    update(EmsMarks emsMarksInstance) {
        if (emsMarksInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsMarks-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsMarksInstance.modifiedBy = currentUser
        //emsMarksInstance.modifiedDate = currentDate
        //emsMarksInstance.validate()
        if (emsMarksInstance.hasErrors()) {
            flash.error = "Error-Update-EmsMarks-L67 : " + emsMarksInstance.errors
            redirect(action: "update", emsMarksInstance: emsMarksInstance)
        }

        try {
            emsMarksInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsMarks-L75 : " + e
            redirect(action: "update", emsMarksInstance: emsMarksInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsMarks.pageTitle.label", default: "EmsMarks"), emsMarksInstance.id])
                redirect emsMarksInstance
            }
            '*' { respond emsMarksInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsMarks emsMarksInstance) {

        if (emsMarksInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsMarks-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsMarksInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsMarks-L106 : " + e
            redirect(action: "index")
        }
    }
}
