package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStudentEducationInfoController {

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
        [emsStudentEducationInfoInstanceList: EmsStudentEducationInfo.list(params), emsStudentEducationInfoInstanceCount: EmsStudentEducationInfo.count()]
    }

    def create() {
        [emsStudentEducationInfoInstance: new EmsStudentEducationInfo(params)]
    }

    @Transactional
    save(EmsStudentEducationInfo emsStudentEducationInfoInstance) {
        if (emsStudentEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStudentEducationInfo-L21 : Record not found...!");
            redirect(action: "create")
        }

        //emsStudentEducationInfoInstance.createdBy = currentUser;
        //emsStudentEducationInfoInstance.validate();
        if (emsStudentEducationInfoInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStudentEducationInfo-L27 : " + emsStudentEducationInfoInstance.errors
            redirect(action: "create", emsStudentEducationInfoInstance: emsStudentEducationInfoInstance)
        }

        try {
            emsStudentEducationInfoInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStudentEducationInfo-L36 : " + e
            redirect(action: "create", emsStudentEducationInfoInstance: emsStudentEducationInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStudentEducationInfo.pageTitle.label", default: "EmsStudentEducationInfo"), emsStudentEducationInfoInstance.id])
                redirect emsStudentEducationInfoInstance
            }
            '*' { respond emsStudentEducationInfoInstance, [status: CREATED] }
        }
    }

    def show(EmsStudentEducationInfo emsStudentEducationInfoInstance) {
        [emsStudentEducationInfoInstance: emsStudentEducationInfoInstance]
    }

    def edit(EmsStudentEducationInfo emsStudentEducationInfoInstance) {
        [emsStudentEducationInfoInstance: emsStudentEducationInfoInstance]
    }

    @Transactional
    update(EmsStudentEducationInfo emsStudentEducationInfoInstance) {
        if (emsStudentEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStudentEducationInfo-L61 : Record not found...!");
            redirect(action: "update")
        }

        //emsStudentEducationInfoInstance.modifiedBy = currentUser;
        //emsStudentEducationInfoInstance.modifiedDate = currentDate;
        //emsStudentEducationInfoInstance.validate();
        if (emsStudentEducationInfoInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStudentEducationInfo-L67 : " + emsStudentEducationInfoInstance.errors
            redirect(action: "update", emsStudentEducationInfoInstance: emsStudentEducationInfoInstance)
        }

        try {
            emsStudentEducationInfoInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStudentEducationInfo-L75 : " + e
            redirect(action: "update", emsStudentEducationInfoInstance: emsStudentEducationInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStudentEducationInfo.pageTitle.label", default: "EmsStudentEducationInfo"), emsStudentEducationInfoInstance.id])
                redirect emsStudentEducationInfoInstance
            }
            '*' { respond emsStudentEducationInfoInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsStudentEducationInfo emsStudentEducationInfoInstance) {

        if (emsStudentEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStudentEducationInfo-L93 : Record not found...!");
            redirect(action: "index")
        }

        try {
            emsStudentEducationInfoInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStudentEducationInfo-L106 : " + e
            redirect(action: "index")
        }
    }
}
