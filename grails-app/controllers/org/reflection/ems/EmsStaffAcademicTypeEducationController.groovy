package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStaffAcademicTypeEducationController {

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
        [emsStaffAcademicTypeEducationInstanceList: EmsStaffAcademicTypeEducation.list(params), emsStaffAcademicTypeEducationInstanceCount: EmsStaffAcademicTypeEducation.count()]
    }

    def create() {
        [emsStaffAcademicTypeEducationInstance: new EmsStaffAcademicTypeEducation(params)]
    }

    @Transactional
    save(EmsStaffAcademicTypeEducation emsStaffAcademicTypeEducationInstance) {
        if (emsStaffAcademicTypeEducationInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStaffAcademicTypeEducation-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsStaffAcademicTypeEducationInstance.createdBy = currentUser
        //emsStaffAcademicTypeEducationInstance.validate()
        if (emsStaffAcademicTypeEducationInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStaffAcademicTypeEducation-L27 : " + emsStaffAcademicTypeEducationInstance.errors
            redirect(action: "create", emsStaffAcademicTypeEducationInstance: emsStaffAcademicTypeEducationInstance)
        }

        try {
            emsStaffAcademicTypeEducationInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStaffAcademicTypeEducation-L36 : " + e
            redirect(action: "create", emsStaffAcademicTypeEducationInstance: emsStaffAcademicTypeEducationInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStaffAcademicTypeEducation.pageTitle.label", default: "EmsStaffAcademicTypeEducation"), emsStaffAcademicTypeEducationInstance.id])
                redirect emsStaffAcademicTypeEducationInstance
            }
            '*' { respond emsStaffAcademicTypeEducationInstance, [status: CREATED] }
        }
    }

    def show(EmsStaffAcademicTypeEducation emsStaffAcademicTypeEducationInstance) {
        [emsStaffAcademicTypeEducationInstance: emsStaffAcademicTypeEducationInstance]
    }

    def edit(EmsStaffAcademicTypeEducation emsStaffAcademicTypeEducationInstance) {
        [emsStaffAcademicTypeEducationInstance: emsStaffAcademicTypeEducationInstance]
    }

    @Transactional
    update(EmsStaffAcademicTypeEducation emsStaffAcademicTypeEducationInstance) {
        if (emsStaffAcademicTypeEducationInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStaffAcademicTypeEducation-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsStaffAcademicTypeEducationInstance.modifiedBy = currentUser
        //emsStaffAcademicTypeEducationInstance.modifiedDate = currentDate
        //emsStaffAcademicTypeEducationInstance.validate()
        if (emsStaffAcademicTypeEducationInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStaffAcademicTypeEducation-L67 : " + emsStaffAcademicTypeEducationInstance.errors
            redirect(action: "update", emsStaffAcademicTypeEducationInstance: emsStaffAcademicTypeEducationInstance)
        }

        try {
            emsStaffAcademicTypeEducationInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStaffAcademicTypeEducation-L75 : " + e
            redirect(action: "update", emsStaffAcademicTypeEducationInstance: emsStaffAcademicTypeEducationInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStaffAcademicTypeEducation.pageTitle.label", default: "EmsStaffAcademicTypeEducation"), emsStaffAcademicTypeEducationInstance.id])
                redirect emsStaffAcademicTypeEducationInstance
            }
            '*' { respond emsStaffAcademicTypeEducationInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsStaffAcademicTypeEducation emsStaffAcademicTypeEducationInstance) {

        if (emsStaffAcademicTypeEducationInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStaffAcademicTypeEducation-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsStaffAcademicTypeEducationInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStaffAcademicTypeEducation-L106 : " + e
            redirect(action: "index")
        }
    }
}
