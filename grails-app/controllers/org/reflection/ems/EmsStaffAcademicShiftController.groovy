package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStaffAcademicShiftController {

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
        [emsStaffAcademicShiftInstanceList: EmsStaffAcademicShift.list(params), emsStaffAcademicShiftInstanceCount: EmsStaffAcademicShift.count()]
    }

    def create() {
        [emsStaffAcademicShiftInstance: new EmsStaffAcademicShift(params)]
    }

    @Transactional
    save(EmsStaffAcademicShift emsStaffAcademicShiftInstance) {
        if (emsStaffAcademicShiftInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStaffAcademicShift-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsStaffAcademicShiftInstance.createdBy = currentUser
        //emsStaffAcademicShiftInstance.validate()
        if (emsStaffAcademicShiftInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStaffAcademicShift-L27 : " + emsStaffAcademicShiftInstance.errors
            redirect(action: "create", emsStaffAcademicShiftInstance: emsStaffAcademicShiftInstance)
        }

        try {
            emsStaffAcademicShiftInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStaffAcademicShift-L36 : " + e
            redirect(action: "create", emsStaffAcademicShiftInstance: emsStaffAcademicShiftInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStaffAcademicShift.pageTitle.label", default: "EmsStaffAcademicShift"), emsStaffAcademicShiftInstance.id])
                redirect emsStaffAcademicShiftInstance
            }
            '*' { respond emsStaffAcademicShiftInstance, [status: CREATED] }
        }
    }

    def show(EmsStaffAcademicShift emsStaffAcademicShiftInstance) {
        [emsStaffAcademicShiftInstance: emsStaffAcademicShiftInstance]
    }

    def edit(EmsStaffAcademicShift emsStaffAcademicShiftInstance) {
        [emsStaffAcademicShiftInstance: emsStaffAcademicShiftInstance]
    }

    @Transactional
    update(EmsStaffAcademicShift emsStaffAcademicShiftInstance) {
        if (emsStaffAcademicShiftInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStaffAcademicShift-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsStaffAcademicShiftInstance.modifiedBy = currentUser
        //emsStaffAcademicShiftInstance.modifiedDate = currentDate
        //emsStaffAcademicShiftInstance.validate()
        if (emsStaffAcademicShiftInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStaffAcademicShift-L67 : " + emsStaffAcademicShiftInstance.errors
            redirect(action: "update", emsStaffAcademicShiftInstance: emsStaffAcademicShiftInstance)
        }

        try {
            emsStaffAcademicShiftInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStaffAcademicShift-L75 : " + e
            redirect(action: "update", emsStaffAcademicShiftInstance: emsStaffAcademicShiftInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStaffAcademicShift.pageTitle.label", default: "EmsStaffAcademicShift"), emsStaffAcademicShiftInstance.id])
                redirect emsStaffAcademicShiftInstance
            }
            '*' { respond emsStaffAcademicShiftInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsStaffAcademicShift emsStaffAcademicShiftInstance) {

        if (emsStaffAcademicShiftInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStaffAcademicShift-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsStaffAcademicShiftInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStaffAcademicShift-L106 : " + e
            redirect(action: "index")
        }
    }

}
