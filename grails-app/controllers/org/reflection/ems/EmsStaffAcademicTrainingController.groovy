package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStaffAcademicTrainingController {

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
        [emsStaffAcademicTrainingInstanceList: EmsStaffAcademicTraining.list(params), emsStaffAcademicTrainingInstanceCount: EmsStaffAcademicTraining.count()]
    }

    def create() {
        [emsStaffAcademicTrainingInstance: new EmsStaffAcademicTraining(params)]
    }

    @Transactional
    save(EmsStaffAcademicTraining emsStaffAcademicTrainingInstance) {
        if (emsStaffAcademicTrainingInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStaffAcademicTraining-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsStaffAcademicTrainingInstance.createdBy = currentUser
        //emsStaffAcademicTrainingInstance.validate()
        if (emsStaffAcademicTrainingInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStaffAcademicTraining-L27 : " + emsStaffAcademicTrainingInstance.errors
            redirect(action: "create", emsStaffAcademicTrainingInstance: emsStaffAcademicTrainingInstance)
        }

        try {
            emsStaffAcademicTrainingInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStaffAcademicTraining-L36 : " + e
            redirect(action: "create", emsStaffAcademicTrainingInstance: emsStaffAcademicTrainingInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStaffAcademicTraining.pageTitle.label", default: "EmsStaffAcademicTraining"), emsStaffAcademicTrainingInstance.id])
                redirect emsStaffAcademicTrainingInstance
            }
            '*' { respond emsStaffAcademicTrainingInstance, [status: CREATED] }
        }
    }

    def show(EmsStaffAcademicTraining emsStaffAcademicTrainingInstance) {
        [emsStaffAcademicTrainingInstance: emsStaffAcademicTrainingInstance]
    }

    def edit(EmsStaffAcademicTraining emsStaffAcademicTrainingInstance) {
        [emsStaffAcademicTrainingInstance: emsStaffAcademicTrainingInstance]
    }

    @Transactional
    update(EmsStaffAcademicTraining emsStaffAcademicTrainingInstance) {
        if (emsStaffAcademicTrainingInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStaffAcademicTraining-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsStaffAcademicTrainingInstance.modifiedBy = currentUser
        //emsStaffAcademicTrainingInstance.modifiedDate = currentDate
        //emsStaffAcademicTrainingInstance.validate()
        if (emsStaffAcademicTrainingInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStaffAcademicTraining-L67 : " + emsStaffAcademicTrainingInstance.errors
            redirect(action: "update", emsStaffAcademicTrainingInstance: emsStaffAcademicTrainingInstance)
        }

        try {
            emsStaffAcademicTrainingInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStaffAcademicTraining-L75 : " + e
            redirect(action: "update", emsStaffAcademicTrainingInstance: emsStaffAcademicTrainingInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStaffAcademicTraining.pageTitle.label", default: "EmsStaffAcademicTraining"), emsStaffAcademicTrainingInstance.id])
                redirect emsStaffAcademicTrainingInstance
            }
            '*' { respond emsStaffAcademicTrainingInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsStaffAcademicTraining emsStaffAcademicTrainingInstance) {

        if (emsStaffAcademicTrainingInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStaffAcademicTraining-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsStaffAcademicTrainingInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStaffAcademicTraining-L106 : " + e
            redirect(action: "index")
        }
    }

}
