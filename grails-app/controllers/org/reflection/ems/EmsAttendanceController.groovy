package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsAttendanceController {

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
        [emsAttendanceInstanceList: EmsAttendance.list(params), emsAttendanceInstanceCount: EmsAttendance.count()]
    }

    def create() {
        [emsAttendanceInstance: new EmsAttendance(params)]
    }

    @Transactional
    save(EmsAttendance emsAttendanceInstance) {
        if (emsAttendanceInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsAttendance-L21 : Record not found...!")
            redirect(action: "create")
        }

        bindData(emsAttendanceInstance, ["attnDate"])
        emsAttendanceInstance.attnDate = params.attnDate ? dateParseFormat.parse(params.attnDate) : null

        //emsAttendanceInstance.createdBy = currentUser
        emsAttendanceInstance.validate()
        if (emsAttendanceInstance.hasErrors()) {
            flash.error = "Error-Save-EmsAttendance-L27 : " + emsAttendanceInstance.errors
            redirect(action: "create", emsAttendanceInstance: emsAttendanceInstance)
        }

        try {
            emsAttendanceInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsAttendance-L36 : " + e
            redirect(action: "create", emsAttendanceInstance: emsAttendanceInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsAttendance.pageTitle.label", default: "EmsAttendance"), emsAttendanceInstance.id])
                redirect emsAttendanceInstance
            }
            '*' { respond emsAttendanceInstance, [status: CREATED] }
        }
    }

    def show(EmsAttendance emsAttendanceInstance) {
        [emsAttendanceInstance: emsAttendanceInstance]
    }

    def edit(EmsAttendance emsAttendanceInstance) {
        [emsAttendanceInstance: emsAttendanceInstance]
    }

    @Transactional
    update(EmsAttendance emsAttendanceInstance) {
        if (emsAttendanceInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsAttendance-L61 : Record not found...!")
            redirect(action: "update")
        }

        bindData(emsAttendanceInstance, ["attnDate"])
        emsAttendanceInstance.attnDate = params.attnDate ? dateParseFormat.parse(params.attnDate) : null

        //emsAttendanceInstance.modifiedBy = currentUser
        //emsAttendanceInstance.modifiedDate = currentDate
        emsAttendanceInstance.validate()
        if (emsAttendanceInstance.hasErrors()) {
            flash.error = "Error-Update-EmsAttendance-L67 : " + emsAttendanceInstance.errors
            redirect(action: "update", emsAttendanceInstance: emsAttendanceInstance)
        }

        try {
            emsAttendanceInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsAttendance-L75 : " + e
            redirect(action: "update", emsAttendanceInstance: emsAttendanceInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsAttendance.pageTitle.label", default: "EmsAttendance"), emsAttendanceInstance.id])
                redirect emsAttendanceInstance
            }
            '*' { respond emsAttendanceInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsAttendance emsAttendanceInstance) {

        if (emsAttendanceInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsAttendance-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsAttendanceInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsAttendance-L106 : " + e
            redirect(action: "index")
        }
    }
}
