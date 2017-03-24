package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStudentAttendanceController {

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
        [emsStudentAttendanceInstanceList: EmsStudentAttendance.list(params), emsStudentAttendanceInstanceCount: EmsStudentAttendance.count()]
    }

    def create() {
        [emsStudentAttendanceInstance: new EmsStudentAttendance(params)]
    }

    @Transactional
    save(EmsStudentAttendance emsStudentAttendanceInstance) {
        if (emsStudentAttendanceInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStudentAttendance-L21 : Record not found...!")
            redirect(action: "create")
        }

        bindData(emsStudentAttendanceInstance, ["attendanceDate"])
        emsStudentAttendanceInstance.attendanceDate = params.attendanceDate ? dateParseFormat.parse(params.attendanceDate) : null

        //emsStudentAttendanceInstance.createdBy = currentUser;
        //emsStudentAttendanceInstance.validate();
        if (emsStudentAttendanceInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStudentAttendance-L27 : " + emsStudentAttendanceInstance.errors
            redirect(action: "create", emsStudentAttendanceInstance: emsStudentAttendanceInstance)
        }

        try {
            emsStudentAttendanceInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStudentAttendance-L36 : " + e
            redirect(action: "create", emsStudentAttendanceInstance: emsStudentAttendanceInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStudentAttendance.pageTitle.label", default: "EmsStudentAttendance"), emsStudentAttendanceInstance.id])
                redirect emsStudentAttendanceInstance
            }
            '*' { respond emsStudentAttendanceInstance, [status: CREATED] }
        }
    }

    def show(EmsStudentAttendance emsStudentAttendanceInstance) {
        [emsStudentAttendanceInstance: emsStudentAttendanceInstance]
    }

    def edit(EmsStudentAttendance emsStudentAttendanceInstance) {
        [emsStudentAttendanceInstance: emsStudentAttendanceInstance]
    }

    @Transactional
    update(EmsStudentAttendance emsStudentAttendanceInstance) {
        if (emsStudentAttendanceInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStudentAttendance-L61 : Record not found...!")
            redirect(action: "update")
        }

        bindData(emsStudentAttendanceInstance, ["attendanceDate"])
        emsStudentAttendanceInstance.attendanceDate = params.attendanceDate ? dateParseFormat.parse(params.attendanceDate) : null

        //emsStudentAttendanceInstance.modifiedBy = currentUser;
        //emsStudentAttendanceInstance.modifiedDate = currentDate;
        emsStudentAttendanceInstance.validate()
        if (emsStudentAttendanceInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStudentAttendance-L67 : " + emsStudentAttendanceInstance.errors
            redirect(action: "update", emsStudentAttendanceInstance: emsStudentAttendanceInstance)
        }

        try {
            emsStudentAttendanceInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStudentAttendance-L75 : " + e
            redirect(action: "update", emsStudentAttendanceInstance: emsStudentAttendanceInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStudentAttendance.pageTitle.label", default: "EmsStudentAttendance"), emsStudentAttendanceInstance.id])
                redirect emsStudentAttendanceInstance
            }
            '*' { respond emsStudentAttendanceInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsStudentAttendance emsStudentAttendanceInstance) {

        if (emsStudentAttendanceInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStudentAttendance-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsStudentAttendanceInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStudentAttendance-L106 : " + e
            redirect(action: "index")
        }
    }
}
