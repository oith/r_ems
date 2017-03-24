package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStaffAcademicEducationInfoController {

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
        [emsStaffAcademicEducationInfoInstanceList: EmsStaffAcademicEducationInfo.list(params), emsStaffAcademicEducationInfoInstanceCount: EmsStaffAcademicEducationInfo.count()]
    }

    def create() {
        [emsStaffAcademicEducationInfoInstance: new EmsStaffAcademicEducationInfo(params)]
    }

    @Transactional
    save(EmsStaffAcademicEducationInfo emsStaffAcademicEducationInfoInstance) {
        if (emsStaffAcademicEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStaffAcademicEducationInfo-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsStaffAcademicEducationInfoInstance.createdBy = currentUser
        //emsStaffAcademicEducationInfoInstance.validate()
        if (emsStaffAcademicEducationInfoInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStaffAcademicEducationInfo-L27 : " + emsStaffAcademicEducationInfoInstance.errors
            redirect(action: "create", emsStaffAcademicEducationInfoInstance: emsStaffAcademicEducationInfoInstance)
        }

        try {
            emsStaffAcademicEducationInfoInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStaffAcademicEducationInfo-L36 : " + e
            redirect(action: "create", emsStaffAcademicEducationInfoInstance: emsStaffAcademicEducationInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStaffAcademicEducationInfo.pageTitle.label", default: "EmsStaffAcademicEducationInfo"), emsStaffAcademicEducationInfoInstance.id])
                redirect emsStaffAcademicEducationInfoInstance
            }
            '*' { respond emsStaffAcademicEducationInfoInstance, [status: CREATED] }
        }
    }

    def show(EmsStaffAcademicEducationInfo emsStaffAcademicEducationInfoInstance) {
        [emsStaffAcademicEducationInfoInstance: emsStaffAcademicEducationInfoInstance]
    }

    def edit(EmsStaffAcademicEducationInfo emsStaffAcademicEducationInfoInstance) {
        [emsStaffAcademicEducationInfoInstance: emsStaffAcademicEducationInfoInstance]
    }

    @Transactional
    update(EmsStaffAcademicEducationInfo emsStaffAcademicEducationInfoInstance) {
        if (emsStaffAcademicEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStaffAcademicEducationInfo-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsStaffAcademicEducationInfoInstance.modifiedBy = currentUser
        //emsStaffAcademicEducationInfoInstance.modifiedDate = currentDate
        //emsStaffAcademicEducationInfoInstance.validate()
        if (emsStaffAcademicEducationInfoInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStaffAcademicEducationInfo-L67 : " + emsStaffAcademicEducationInfoInstance.errors
            redirect(action: "update", emsStaffAcademicEducationInfoInstance: emsStaffAcademicEducationInfoInstance)
        }

        try {
            emsStaffAcademicEducationInfoInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStaffAcademicEducationInfo-L75 : " + e
            redirect(action: "update", emsStaffAcademicEducationInfoInstance: emsStaffAcademicEducationInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStaffAcademicEducationInfo.pageTitle.label", default: "EmsStaffAcademicEducationInfo"), emsStaffAcademicEducationInfoInstance.id])
                redirect emsStaffAcademicEducationInfoInstance
            }
            '*' { respond emsStaffAcademicEducationInfoInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsStaffAcademicEducationInfo emsStaffAcademicEducationInfoInstance) {

        if (emsStaffAcademicEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStaffAcademicEducationInfo-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsStaffAcademicEducationInfoInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStaffAcademicEducationInfo-L106 : " + e
            redirect(action: "index")
        }
    }
}
