package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStaffAcademicJobHistoryController {

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
        [emsStaffAcademicJobHistoryInstanceList: EmsStaffAcademicJobHistory.list(params), emsStaffAcademicJobHistoryInstanceCount: EmsStaffAcademicJobHistory.count()]
    }

    def create() {
        [emsStaffAcademicJobHistoryInstance: new EmsStaffAcademicJobHistory(params)]
    }

    @Transactional
    save(EmsStaffAcademicJobHistory emsStaffAcademicJobHistoryInstance) {
        if (emsStaffAcademicJobHistoryInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStaffAcademicJobHistory-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsStaffAcademicJobHistoryInstance.createdBy = currentUser
        //emsStaffAcademicJobHistoryInstance.validate()
        if (emsStaffAcademicJobHistoryInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStaffAcademicJobHistory-L27 : " + emsStaffAcademicJobHistoryInstance.errors
            redirect(action: "create", emsStaffAcademicJobHistoryInstance: emsStaffAcademicJobHistoryInstance)
            return
        }

        try {
            emsStaffAcademicJobHistoryInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStaffAcademicJobHistory-L36 : " + e
            redirect(action: "create", emsStaffAcademicJobHistoryInstance: emsStaffAcademicJobHistoryInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStaffAcademicJobHistory.pageTitle.label", default: "EmsStaffAcademicJobHistory"), emsStaffAcademicJobHistoryInstance.id])
                redirect emsStaffAcademicJobHistoryInstance
            }
            '*' { respond emsStaffAcademicJobHistoryInstance, [status: CREATED] }
        }
    }

    def show(EmsStaffAcademicJobHistory emsStaffAcademicJobHistoryInstance) {
        [emsStaffAcademicJobHistoryInstance: emsStaffAcademicJobHistoryInstance]
    }

    def edit(EmsStaffAcademicJobHistory emsStaffAcademicJobHistoryInstance) {
        [emsStaffAcademicJobHistoryInstance: emsStaffAcademicJobHistoryInstance]
    }

    @Transactional
    update(EmsStaffAcademicJobHistory emsStaffAcademicJobHistoryInstance) {
        if (emsStaffAcademicJobHistoryInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStaffAcademicJobHistory-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsStaffAcademicJobHistoryInstance.modifiedBy = currentUser
        //emsStaffAcademicJobHistoryInstance.modifiedDate = currentDate
        //emsStaffAcademicJobHistoryInstance.validate()
        if (emsStaffAcademicJobHistoryInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStaffAcademicJobHistory-L67 : " + emsStaffAcademicJobHistoryInstance.errors
            redirect(action: "update", emsStaffAcademicJobHistoryInstance: emsStaffAcademicJobHistoryInstance)
        }

        try {
            emsStaffAcademicJobHistoryInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStaffAcademicJobHistory-L75 : " + e
            redirect(action: "update", emsStaffAcademicJobHistoryInstance: emsStaffAcademicJobHistoryInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStaffAcademicJobHistory.pageTitle.label", default: "EmsStaffAcademicJobHistory"), emsStaffAcademicJobHistoryInstance.id])
                redirect emsStaffAcademicJobHistoryInstance
            }
            '*' { respond emsStaffAcademicJobHistoryInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsStaffAcademicJobHistory emsStaffAcademicJobHistoryInstance) {

        if (emsStaffAcademicJobHistoryInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStaffAcademicJobHistory-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsStaffAcademicJobHistoryInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStaffAcademicJobHistory-L106 : " + e
            redirect(action: "index")
        }
    }
}
