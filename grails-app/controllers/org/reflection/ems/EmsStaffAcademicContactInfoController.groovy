package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStaffAcademicContactInfoController {

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
        [emsStaffAcademicContactInfoInstanceList: EmsStaffAcademicContactInfo.list(params), emsStaffAcademicContactInfoInstanceCount: EmsStaffAcademicContactInfo.count()]
    }

    def create() {
        [emsStaffAcademicContactInfoInstance: new EmsStaffAcademicContactInfo(params)]
    }

    @Transactional
    save(EmsStaffAcademicContactInfo emsStaffAcademicContactInfoInstance) {
        if (emsStaffAcademicContactInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStaffAcademicContactInfo-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsStaffAcademicContactInfoInstance.createdBy = currentUser
        //emsStaffAcademicContactInfoInstance.validate()
        if (emsStaffAcademicContactInfoInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStaffAcademicContactInfo-L27 : " + emsStaffAcademicContactInfoInstance.errors
            redirect(action: "create", emsStaffAcademicContactInfoInstance: emsStaffAcademicContactInfoInstance)
        }

        try {
            emsStaffAcademicContactInfoInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStaffAcademicContactInfo-L36 : " + e
            redirect(action: "create", emsStaffAcademicContactInfoInstance: emsStaffAcademicContactInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStaffAcademicContactInfo.pageTitle.label", default: "EmsStaffAcademicContactInfo"), emsStaffAcademicContactInfoInstance.id])
                redirect emsStaffAcademicContactInfoInstance
            }
            '*' { respond emsStaffAcademicContactInfoInstance, [status: CREATED] }
        }
    }

    def show(EmsStaffAcademicContactInfo emsStaffAcademicContactInfoInstance) {
        [emsStaffAcademicContactInfoInstance: emsStaffAcademicContactInfoInstance]
    }

    def edit(EmsStaffAcademicContactInfo emsStaffAcademicContactInfoInstance) {
        [emsStaffAcademicContactInfoInstance: emsStaffAcademicContactInfoInstance]
    }

    @Transactional
    update(EmsStaffAcademicContactInfo emsStaffAcademicContactInfoInstance) {
        if (emsStaffAcademicContactInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStaffAcademicContactInfo-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsStaffAcademicContactInfoInstance.modifiedBy = currentUser
        //emsStaffAcademicContactInfoInstance.modifiedDate = currentDate
        //emsStaffAcademicContactInfoInstance.validate()
        if (emsStaffAcademicContactInfoInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStaffAcademicContactInfo-L67 : " + emsStaffAcademicContactInfoInstance.errors
            redirect(action: "update", emsStaffAcademicContactInfoInstance: emsStaffAcademicContactInfoInstance)
        }

        try {
            emsStaffAcademicContactInfoInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStaffAcademicContactInfo-L75 : " + e
            redirect(action: "update", emsStaffAcademicContactInfoInstance: emsStaffAcademicContactInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStaffAcademicContactInfo.pageTitle.label", default: "EmsStaffAcademicContactInfo"), emsStaffAcademicContactInfoInstance.id])
                redirect emsStaffAcademicContactInfoInstance
            }
            '*' { respond emsStaffAcademicContactInfoInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsStaffAcademicContactInfo emsStaffAcademicContactInfoInstance) {

        if (emsStaffAcademicContactInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStaffAcademicContactInfo-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsStaffAcademicContactInfoInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStaffAcademicContactInfo-L106 : " + e
            redirect(action: "index")
        }
    }
}
