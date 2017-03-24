package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStaffAcademicSubjectController {

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
        [emsStaffAcademicSubjectInstanceList: EmsStaffAcademicSubject.list(params), emsStaffAcademicSubjectInstanceCount: EmsStaffAcademicSubject.count()]
    }

    def create() {
        [emsStaffAcademicSubjectInstance: new EmsStaffAcademicSubject(params)]
    }

    @Transactional
    save(EmsStaffAcademicSubject emsStaffAcademicSubjectInstance) {
        if (emsStaffAcademicSubjectInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStaffAcademicSubject-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsStaffAcademicSubjectInstance.createdBy = currentUser
        //emsStaffAcademicSubjectInstance.validate()
        if (emsStaffAcademicSubjectInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStaffAcademicSubject-L27 : " + emsStaffAcademicSubjectInstance.errors
            redirect(action: "create", emsStaffAcademicSubjectInstance: emsStaffAcademicSubjectInstance)
        }

        try {
            emsStaffAcademicSubjectInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStaffAcademicSubject-L36 : " + e
            redirect(action: "create", emsStaffAcademicSubjectInstance: emsStaffAcademicSubjectInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStaffAcademicSubject.pageTitle.label", default: "EmsStaffAcademicSubject"), emsStaffAcademicSubjectInstance.id])
                redirect emsStaffAcademicSubjectInstance
            }
            '*' { respond emsStaffAcademicSubjectInstance, [status: CREATED] }
        }
    }

    def show(EmsStaffAcademicSubject emsStaffAcademicSubjectInstance) {
        [emsStaffAcademicSubjectInstance: emsStaffAcademicSubjectInstance]
    }

    def edit(EmsStaffAcademicSubject emsStaffAcademicSubjectInstance) {
        [emsStaffAcademicSubjectInstance: emsStaffAcademicSubjectInstance]
    }

    @Transactional
    update(EmsStaffAcademicSubject emsStaffAcademicSubjectInstance) {
        if (emsStaffAcademicSubjectInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStaffAcademicSubject-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsStaffAcademicSubjectInstance.modifiedBy = currentUser
        //emsStaffAcademicSubjectInstance.modifiedDate = currentDate
        //emsStaffAcademicSubjectInstance.validate()
        if (emsStaffAcademicSubjectInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStaffAcademicSubject-L67 : " + emsStaffAcademicSubjectInstance.errors
            redirect(action: "update", emsStaffAcademicSubjectInstance: emsStaffAcademicSubjectInstance)
        }

        try {
            emsStaffAcademicSubjectInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStaffAcademicSubject-L75 : " + e
            redirect(action: "update", emsStaffAcademicSubjectInstance: emsStaffAcademicSubjectInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStaffAcademicSubject.pageTitle.label", default: "EmsStaffAcademicSubject"), emsStaffAcademicSubjectInstance.id])
                redirect emsStaffAcademicSubjectInstance
            }
            '*' { respond emsStaffAcademicSubjectInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsStaffAcademicSubject emsStaffAcademicSubjectInstance) {

        if (emsStaffAcademicSubjectInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStaffAcademicSubject-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsStaffAcademicSubjectInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStaffAcademicSubject-L106 : " + e
            redirect(action: "index")
        }
    }
}
