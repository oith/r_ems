package org.reflection.hr

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class HrStaffJobHistoryController {

    static allowedMethods = [save: "POST", update: "PUT"]

    def springSecurityService, dateParseFormat, currentDate, currentUser;

    def beforeInterceptor = {
        currentDate = new Date();
        currentUser = springSecurityService.getCurrentUser();
        dateParseFormat = new SimpleDateFormat(grailsApplication.config.format.dtp.date);
    }

    //def index(Integer max) {
    //params.max = Math.min(max ?: 10, 100)
    def index() {
        [hrStaffJobHistoryInstanceList: HrStaffJobHistory.list(params), hrStaffJobHistoryInstanceCount: HrStaffJobHistory.count()]
    }

    def create() {
        [hrStaffJobHistoryInstance: new HrStaffJobHistory(params)]
    }

    @Transactional
    def save(HrStaffJobHistory hrStaffJobHistoryInstance) {
        if (hrStaffJobHistoryInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-HrStaffJobHistory-L21 : Record not found...!");
            redirect(action: "create")
            return
        }

        //hrStaffJobHistoryInstance.createdBy = currentUser;
        //hrStaffJobHistoryInstance.validate();
        if (hrStaffJobHistoryInstance.hasErrors()) {
            flash.error = "Error-Save-HrStaffJobHistory-L27 : " + hrStaffJobHistoryInstance.errors
            redirect(action: "create", hrStaffJobHistoryInstance: hrStaffJobHistoryInstance)
            return
        }

        try {
            hrStaffJobHistoryInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-HrStaffJobHistory-L36 : " + e
            redirect(action: "create", hrStaffJobHistoryInstance: hrStaffJobHistoryInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "hrStaffJobHistory.pageTitle.label", default: "HrStaffJobHistory"), hrStaffJobHistoryInstance.id])
                redirect hrStaffJobHistoryInstance
            }
            '*' { respond hrStaffJobHistoryInstance, [status: CREATED] }
        }
    }

    def show(HrStaffJobHistory hrStaffJobHistoryInstance) {
        [hrStaffJobHistoryInstance: hrStaffJobHistoryInstance]
    }

    def edit(HrStaffJobHistory hrStaffJobHistoryInstance) {
        [hrStaffJobHistoryInstance: hrStaffJobHistoryInstance]
    }

    @Transactional
    def update(HrStaffJobHistory hrStaffJobHistoryInstance) {
        if (hrStaffJobHistoryInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-HrStaffJobHistory-L61 : Record not found...!");
            redirect(action: "update")
            return
        }

        //hrStaffJobHistoryInstance.modifiedBy = currentUser;
        //hrStaffJobHistoryInstance.modifiedDate = currentDate;
        //hrStaffJobHistoryInstance.validate();
        if (hrStaffJobHistoryInstance.hasErrors()) {
            flash.error = "Error-Update-HrStaffJobHistory-L67 : " + hrStaffJobHistoryInstance.errors
            redirect(action: "update", hrStaffJobHistoryInstance: hrStaffJobHistoryInstance)
            return
        }

        try {
            hrStaffJobHistoryInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-HrStaffJobHistory-L75 : " + e
            redirect(action: "update", hrStaffJobHistoryInstance: hrStaffJobHistoryInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "hrStaffJobHistory.pageTitle.label", default: "HrStaffJobHistory"), hrStaffJobHistoryInstance.id])
                redirect hrStaffJobHistoryInstance
            }
            '*' { respond hrStaffJobHistoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(HrStaffJobHistory hrStaffJobHistoryInstance) {

        if (hrStaffJobHistoryInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-HrStaffJobHistory-L93 : Record not found...!");
            redirect(action: "index")
            return
        }

        try {
            hrStaffJobHistoryInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
            return
        }
        catch (Exception e) {
            flash.error = "Error-Delete-HrStaffJobHistory-L106 : " + e
            redirect(action: "index")
            return
        }
    }
}
