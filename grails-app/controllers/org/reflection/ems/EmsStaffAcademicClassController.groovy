package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStaffAcademicClassController {

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
        [emsStaffAcademicClassInstanceList: EmsStaffAcademicClass.list(params), emsStaffAcademicClassInstanceCount: EmsStaffAcademicClass.count()]
    }

    def create() {
        [emsStaffAcademicClassInstance: new EmsStaffAcademicClass(params)]
    }

    @Transactional
    save(EmsStaffAcademicClass emsStaffAcademicClassInstance) {
        if (emsStaffAcademicClassInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStaffAcademicClass-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsStaffAcademicClassInstance.createdBy = currentUser
        //emsStaffAcademicClassInstance.validate()
        if (emsStaffAcademicClassInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStaffAcademicClass-L27 : " + emsStaffAcademicClassInstance.errors
            redirect(action: "create", emsStaffAcademicClassInstance: emsStaffAcademicClassInstance)
        }

        try {
            emsStaffAcademicClassInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStaffAcademicClass-L36 : " + e
            redirect(action: "create", emsStaffAcademicClassInstance: emsStaffAcademicClassInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStaffAcademicClass.pageTitle.label", default: "EmsStaffAcademicClass"), emsStaffAcademicClassInstance.id])
                redirect emsStaffAcademicClassInstance
            }
            '*' { respond emsStaffAcademicClassInstance, [status: CREATED] }
        }
    }

    def show(EmsStaffAcademicClass emsStaffAcademicClassInstance) {
        [emsStaffAcademicClassInstance: emsStaffAcademicClassInstance]
    }

    def edit(EmsStaffAcademicClass emsStaffAcademicClassInstance) {
        [emsStaffAcademicClassInstance: emsStaffAcademicClassInstance]
    }

    @Transactional
    update(EmsStaffAcademicClass emsStaffAcademicClassInstance) {
        if (emsStaffAcademicClassInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStaffAcademicClass-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsStaffAcademicClassInstance.modifiedBy = currentUser
        //emsStaffAcademicClassInstance.modifiedDate = currentDate
        //emsStaffAcademicClassInstance.validate()
        if (emsStaffAcademicClassInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStaffAcademicClass-L67 : " + emsStaffAcademicClassInstance.errors
            redirect(action: "update", emsStaffAcademicClassInstance: emsStaffAcademicClassInstance)
        }

        try {
            emsStaffAcademicClassInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStaffAcademicClass-L75 : " + e
            redirect(action: "update", emsStaffAcademicClassInstance: emsStaffAcademicClassInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStaffAcademicClass.pageTitle.label", default: "EmsStaffAcademicClass"), emsStaffAcademicClassInstance.id])
                redirect emsStaffAcademicClassInstance
            }
            '*' { respond emsStaffAcademicClassInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsStaffAcademicClass emsStaffAcademicClassInstance) {

        if (emsStaffAcademicClassInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStaffAcademicClass-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsStaffAcademicClassInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStaffAcademicClass-L106 : " + e
            redirect(action: "index")
        }
    }
}
