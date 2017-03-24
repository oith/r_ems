package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStaffAcademicLanguageController {

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
        [emsStaffAcademicLanguageInstanceList: EmsStaffAcademicLanguage.list(params), emsStaffAcademicLanguageInstanceCount: EmsStaffAcademicLanguage.count()]
    }

    def create() {
        [emsStaffAcademicLanguageInstance: new EmsStaffAcademicLanguage(params)]
    }

    @Transactional
    save(EmsStaffAcademicLanguage emsStaffAcademicLanguageInstance) {
        if (emsStaffAcademicLanguageInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStaffAcademicLanguage-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsStaffAcademicLanguageInstance.createdBy = currentUser
        //emsStaffAcademicLanguageInstance.validate()
        if (emsStaffAcademicLanguageInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStaffAcademicLanguage-L27 : " + emsStaffAcademicLanguageInstance.errors
            redirect(action: "create", emsStaffAcademicLanguageInstance: emsStaffAcademicLanguageInstance)
        }

        try {
            emsStaffAcademicLanguageInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStaffAcademicLanguage-L36 : " + e
            redirect(action: "create", emsStaffAcademicLanguageInstance: emsStaffAcademicLanguageInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStaffAcademicLanguage.pageTitle.label", default: "EmsStaffAcademicLanguage"), emsStaffAcademicLanguageInstance.id])
                redirect emsStaffAcademicLanguageInstance
            }
            '*' { respond emsStaffAcademicLanguageInstance, [status: CREATED] }
        }
    }

    def show(EmsStaffAcademicLanguage emsStaffAcademicLanguageInstance) {
        [emsStaffAcademicLanguageInstance: emsStaffAcademicLanguageInstance]
    }

    def edit(EmsStaffAcademicLanguage emsStaffAcademicLanguageInstance) {
        [emsStaffAcademicLanguageInstance: emsStaffAcademicLanguageInstance]
    }

    @Transactional
    update(EmsStaffAcademicLanguage emsStaffAcademicLanguageInstance) {
        if (emsStaffAcademicLanguageInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStaffAcademicLanguage-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsStaffAcademicLanguageInstance.modifiedBy = currentUser
        //emsStaffAcademicLanguageInstance.modifiedDate = currentDate
        //emsStaffAcademicLanguageInstance.validate()
        if (emsStaffAcademicLanguageInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStaffAcademicLanguage-L67 : " + emsStaffAcademicLanguageInstance.errors
            redirect(action: "update", emsStaffAcademicLanguageInstance: emsStaffAcademicLanguageInstance)
        }

        try {
            emsStaffAcademicLanguageInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStaffAcademicLanguage-L75 : " + e
            redirect(action: "update", emsStaffAcademicLanguageInstance: emsStaffAcademicLanguageInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStaffAcademicLanguage.pageTitle.label", default: "EmsStaffAcademicLanguage"), emsStaffAcademicLanguageInstance.id])
                redirect emsStaffAcademicLanguageInstance
            }
            '*' { respond emsStaffAcademicLanguageInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsStaffAcademicLanguage emsStaffAcademicLanguageInstance) {

        if (emsStaffAcademicLanguageInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStaffAcademicLanguage-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsStaffAcademicLanguageInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStaffAcademicLanguage-L106 : " + e
            redirect(action: "index")
        }
    }
}
