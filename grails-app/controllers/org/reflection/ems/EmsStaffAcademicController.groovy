package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStaffAcademicController {

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
        [emsStaffAcademicInstanceList: EmsStaffAcademic.list(params), emsStaffAcademicInstanceCount: EmsStaffAcademic.count()]
    }

    def create() {
        [emsStaffAcademicInstance: new EmsStaffAcademic(params)]
    }

    @Transactional
    save(EmsStaffAcademic emsStaffAcademicInstance) {
        if (emsStaffAcademicInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStaffAcademic-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsStaffAcademicInstance.createdBy = currentUser
        //emsStaffAcademicInstance.validate()
        if (emsStaffAcademicInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStaffAcademic-L27 : " + emsStaffAcademicInstance.errors
            redirect(action: "create", emsStaffAcademicInstance: emsStaffAcademicInstance)
        }

        try {
            emsStaffAcademicInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStaffAcademic-L36 : " + e
            redirect(action: "create", emsStaffAcademicInstance: emsStaffAcademicInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStaffAcademic.pageTitle.label", default: "EmsStaffAcademic"), emsStaffAcademicInstance.id])
                redirect emsStaffAcademicInstance
            }
            '*' { respond emsStaffAcademicInstance, [status: CREATED] }
        }
    }

    def show(EmsStaffAcademic emsStaffAcademicInstance) {
        [emsStaffAcademicInstance: emsStaffAcademicInstance]
    }

    def edit(EmsStaffAcademic emsStaffAcademicInstance) {
        [emsStaffAcademicInstance: emsStaffAcademicInstance]
    }

    @Transactional
    update(EmsStaffAcademic emsStaffAcademicInstance) {
        if (emsStaffAcademicInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStaffAcademic-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsStaffAcademicInstance.modifiedBy = currentUser
        //emsStaffAcademicInstance.modifiedDate = currentDate
        //emsStaffAcademicInstance.validate()
        if (emsStaffAcademicInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStaffAcademic-L67 : " + emsStaffAcademicInstance.errors
            redirect(action: "update", emsStaffAcademicInstance: emsStaffAcademicInstance)
        }

        try {
            emsStaffAcademicInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStaffAcademic-L75 : " + e
            redirect(action: "update", emsStaffAcademicInstance: emsStaffAcademicInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStaffAcademic.pageTitle.label", default: "EmsStaffAcademic"), emsStaffAcademicInstance.id])
                redirect emsStaffAcademicInstance
            }
            '*' { respond emsStaffAcademicInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsStaffAcademic emsStaffAcademicInstance) {

        if (emsStaffAcademicInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStaffAcademic-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsStaffAcademicInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStaffAcademic-L106 : " + e
            redirect(action: "index")
        }
    }
}
