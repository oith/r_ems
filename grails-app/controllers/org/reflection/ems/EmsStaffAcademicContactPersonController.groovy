package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStaffAcademicContactPersonController {

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
        [emsStaffAcademicContactPersonInstanceList: EmsStaffAcademicContactPerson.list(params), emsStaffAcademicContactPersonInstanceCount: EmsStaffAcademicContactPerson.count()]
    }

    def create() {
        [emsStaffAcademicContactPersonInstance: new EmsStaffAcademicContactPerson(params)]
    }

    @Transactional
    save(EmsStaffAcademicContactPerson emsStaffAcademicContactPersonInstance) {
        if (emsStaffAcademicContactPersonInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStaffAcademicContactPerson-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsStaffAcademicContactPersonInstance.createdBy = currentUser
        //emsStaffAcademicContactPersonInstance.validate()
        if (emsStaffAcademicContactPersonInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStaffAcademicContactPerson-L27 : " + emsStaffAcademicContactPersonInstance.errors
            redirect(action: "create", emsStaffAcademicContactPersonInstance: emsStaffAcademicContactPersonInstance)
        }

        try {
            emsStaffAcademicContactPersonInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStaffAcademicContactPerson-L36 : " + e
            redirect(action: "create", emsStaffAcademicContactPersonInstance: emsStaffAcademicContactPersonInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStaffAcademicContactPerson.pageTitle.label", default: "EmsStaffAcademicContactPerson"), emsStaffAcademicContactPersonInstance.id])
                redirect emsStaffAcademicContactPersonInstance
            }
            '*' { respond emsStaffAcademicContactPersonInstance, [status: CREATED] }
        }
    }

    def show(EmsStaffAcademicContactPerson emsStaffAcademicContactPersonInstance) {
        [emsStaffAcademicContactPersonInstance: emsStaffAcademicContactPersonInstance]
    }

    def edit(EmsStaffAcademicContactPerson emsStaffAcademicContactPersonInstance) {
        [emsStaffAcademicContactPersonInstance: emsStaffAcademicContactPersonInstance]
    }

    @Transactional
    update(EmsStaffAcademicContactPerson emsStaffAcademicContactPersonInstance) {
        if (emsStaffAcademicContactPersonInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStaffAcademicContactPerson-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsStaffAcademicContactPersonInstance.modifiedBy = currentUser
        //emsStaffAcademicContactPersonInstance.modifiedDate = currentDate
        //emsStaffAcademicContactPersonInstance.validate()
        if (emsStaffAcademicContactPersonInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStaffAcademicContactPerson-L67 : " + emsStaffAcademicContactPersonInstance.errors
            redirect(action: "update", emsStaffAcademicContactPersonInstance: emsStaffAcademicContactPersonInstance)
        }

        try {
            emsStaffAcademicContactPersonInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStaffAcademicContactPerson-L75 : " + e
            redirect(action: "update", emsStaffAcademicContactPersonInstance: emsStaffAcademicContactPersonInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStaffAcademicContactPerson.pageTitle.label", default: "EmsStaffAcademicContactPerson"), emsStaffAcademicContactPersonInstance.id])
                redirect emsStaffAcademicContactPersonInstance
            }
            '*' { respond emsStaffAcademicContactPersonInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsStaffAcademicContactPerson emsStaffAcademicContactPersonInstance) {

        if (emsStaffAcademicContactPersonInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStaffAcademicContactPerson-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsStaffAcademicContactPersonInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStaffAcademicContactPerson-L106 : " + e
            redirect(action: "index")
        }
    }
}
