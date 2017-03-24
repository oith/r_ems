package org.reflection.hr

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class HrStaffTrainingController {

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
        [hrStaffTrainingInstanceList: HrStaffTraining.list(params), hrStaffTrainingInstanceCount: HrStaffTraining.count()]
    }

    def create() {
        [hrStaffTrainingInstance: new HrStaffTraining(params)]
    }

    @Transactional
     save(HrStaffTraining hrStaffTrainingInstance) {
        if (hrStaffTrainingInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-HrStaffTraining-L21 : Record not found...!");
            redirect(action: "create")
        }

        //hrStaffTrainingInstance.createdBy = currentUser;
        //hrStaffTrainingInstance.validate();
        if (hrStaffTrainingInstance.hasErrors()) {
            flash.error = "Error-Save-HrStaffTraining-L27 : " + hrStaffTrainingInstance.errors
            redirect(action: "create", hrStaffTrainingInstance: hrStaffTrainingInstance)
        }

        try {
            hrStaffTrainingInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-HrStaffTraining-L36 : " + e
            redirect(action: "create", hrStaffTrainingInstance: hrStaffTrainingInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "hrStaffTraining.pageTitle.label", default: "HrStaffTraining"), hrStaffTrainingInstance.id])
                redirect hrStaffTrainingInstance
            }
            '*' { respond hrStaffTrainingInstance, [status: CREATED] }
        }
    }

    def show(HrStaffTraining hrStaffTrainingInstance) {
        [hrStaffTrainingInstance: hrStaffTrainingInstance]
    }

    def edit(HrStaffTraining hrStaffTrainingInstance) {
        [hrStaffTrainingInstance: hrStaffTrainingInstance]
    }

    @Transactional
     update(HrStaffTraining hrStaffTrainingInstance) {
        if (hrStaffTrainingInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-HrStaffTraining-L61 : Record not found...!");
            redirect(action: "update")
        }

        //hrStaffTrainingInstance.modifiedBy = currentUser;
        //hrStaffTrainingInstance.modifiedDate = currentDate;
        //hrStaffTrainingInstance.validate();
        if (hrStaffTrainingInstance.hasErrors()) {
            flash.error = "Error-Update-HrStaffTraining-L67 : " + hrStaffTrainingInstance.errors
            redirect(action: "update", hrStaffTrainingInstance: hrStaffTrainingInstance)
        }

        try {
            hrStaffTrainingInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-HrStaffTraining-L75 : " + e
            redirect(action: "update", hrStaffTrainingInstance: hrStaffTrainingInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "hrStaffTraining.pageTitle.label", default: "HrStaffTraining"), hrStaffTrainingInstance.id])
                redirect hrStaffTrainingInstance
            }
            '*' { respond hrStaffTrainingInstance, [status: OK] }
        }
    }

    @Transactional
     delete(HrStaffTraining hrStaffTrainingInstance) {

        if (hrStaffTrainingInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-HrStaffTraining-L93 : Record not found...!");
            redirect(action: "index")
        }

        try {
            hrStaffTrainingInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-HrStaffTraining-L106 : " + e
            redirect(action: "index")
        }
    }
}
