package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStudentFamilyInfoController {

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
        [emsStudentFamilyInfoInstanceList: EmsStudentFamilyInfo.list(params), emsStudentFamilyInfoInstanceCount: EmsStudentFamilyInfo.count()]
    }

    def create() {
        [emsStudentFamilyInfoInstance: new EmsStudentFamilyInfo(params)]
    }

    @Transactional
    save(EmsStudentFamilyInfo emsStudentFamilyInfoInstance) {
        if (emsStudentFamilyInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStudentFamilyInfo-L21 : Record not found...!");
            redirect(action: "create")
        }

        //emsStudentFamilyInfoInstance.createdBy = currentUser;
        //emsStudentFamilyInfoInstance.validate();
        if (emsStudentFamilyInfoInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStudentFamilyInfo-L27 : " + emsStudentFamilyInfoInstance.errors
            redirect(action: "create", emsStudentFamilyInfoInstance: emsStudentFamilyInfoInstance)
        }

        try {
            emsStudentFamilyInfoInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStudentFamilyInfo-L36 : " + e
            redirect(action: "create", emsStudentFamilyInfoInstance: emsStudentFamilyInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStudentFamilyInfo.pageTitle.label", default: "EmsStudentFamilyInfo"), emsStudentFamilyInfoInstance.id])
                redirect emsStudentFamilyInfoInstance
            }
            '*' { respond emsStudentFamilyInfoInstance, [status: CREATED] }
        }
    }

    def show(EmsStudentFamilyInfo emsStudentFamilyInfoInstance) {
        [emsStudentFamilyInfoInstance: emsStudentFamilyInfoInstance]
    }

    def edit(EmsStudentFamilyInfo emsStudentFamilyInfoInstance) {
        [emsStudentFamilyInfoInstance: emsStudentFamilyInfoInstance]
    }

    @Transactional
    update(EmsStudentFamilyInfo emsStudentFamilyInfoInstance) {
        if (emsStudentFamilyInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStudentFamilyInfo-L61 : Record not found...!");
            redirect(action: "update")
        }

        //emsStudentFamilyInfoInstance.modifiedBy = currentUser;
        //emsStudentFamilyInfoInstance.modifiedDate = currentDate;
        //emsStudentFamilyInfoInstance.validate();
        if (emsStudentFamilyInfoInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStudentFamilyInfo-L67 : " + emsStudentFamilyInfoInstance.errors
            redirect(action: "update", emsStudentFamilyInfoInstance: emsStudentFamilyInfoInstance)
        }

        try {
            emsStudentFamilyInfoInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStudentFamilyInfo-L75 : " + e
            redirect(action: "update", emsStudentFamilyInfoInstance: emsStudentFamilyInfoInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStudentFamilyInfo.pageTitle.label", default: "EmsStudentFamilyInfo"), emsStudentFamilyInfoInstance.id])
                redirect emsStudentFamilyInfoInstance
            }
            '*' { respond emsStudentFamilyInfoInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsStudentFamilyInfo emsStudentFamilyInfoInstance) {

        if (emsStudentFamilyInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStudentFamilyInfo-L93 : Record not found...!");
            redirect(action: "index")
        }

        try {
            emsStudentFamilyInfoInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStudentFamilyInfo-L106 : " + e
            redirect(action: "index")
        }
    }
}
