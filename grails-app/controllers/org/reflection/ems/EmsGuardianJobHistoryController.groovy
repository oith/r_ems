package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsGuardianJobHistoryController {

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
        [emsGuardianJobHistoryInstanceList: EmsGuardianJobHistory.list(params), emsGuardianJobHistoryInstanceCount: EmsGuardianJobHistory.count()]
    }

    def create() {
        [emsGuardianJobHistoryInstance: new EmsGuardianJobHistory(params)]
    }

    @Transactional
    save(EmsGuardianJobHistory emsGuardianJobHistoryInstance) {
        if (emsGuardianJobHistoryInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsGuardianJobHistory-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsGuardianJobHistoryInstance.createdBy = currentUser
        //emsGuardianJobHistoryInstance.validate()
        if (emsGuardianJobHistoryInstance.hasErrors()) {
            flash.error = "Error-Save-EmsGuardianJobHistory-L27 : " + emsGuardianJobHistoryInstance.errors
            redirect(action: "create", emsGuardianJobHistoryInstance: emsGuardianJobHistoryInstance)
        }

        try {
            emsGuardianJobHistoryInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsGuardianJobHistory-L36 : " + e
            redirect(action: "create", emsGuardianJobHistoryInstance: emsGuardianJobHistoryInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsGuardianJobHistory.pageTitle.label", default: "EmsGuardianJobHistory"), emsGuardianJobHistoryInstance.id])
                redirect emsGuardianJobHistoryInstance
            }
            '*' { respond emsGuardianJobHistoryInstance, [status: CREATED] }
        }
    }

    def show(EmsGuardianJobHistory emsGuardianJobHistoryInstance) {
        [emsGuardianJobHistoryInstance: emsGuardianJobHistoryInstance]
    }

    def edit(EmsGuardianJobHistory emsGuardianJobHistoryInstance) {
        [emsGuardianJobHistoryInstance: emsGuardianJobHistoryInstance]
    }

    @Transactional
    update(EmsGuardianJobHistory emsGuardianJobHistoryInstance) {
        if (emsGuardianJobHistoryInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsGuardianJobHistory-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsGuardianJobHistoryInstance.modifiedBy = currentUser
        //emsGuardianJobHistoryInstance.modifiedDate = currentDate
        //emsGuardianJobHistoryInstance.validate()
        if (emsGuardianJobHistoryInstance.hasErrors()) {
            flash.error = "Error-Update-EmsGuardianJobHistory-L67 : " + emsGuardianJobHistoryInstance.errors
            redirect(action: "update", emsGuardianJobHistoryInstance: emsGuardianJobHistoryInstance)
        }

        try {
            emsGuardianJobHistoryInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsGuardianJobHistory-L75 : " + e
            redirect(action: "update", emsGuardianJobHistoryInstance: emsGuardianJobHistoryInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsGuardianJobHistory.pageTitle.label", default: "EmsGuardianJobHistory"), emsGuardianJobHistoryInstance.id])
                redirect emsGuardianJobHistoryInstance
            }
            '*' { respond emsGuardianJobHistoryInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsGuardianJobHistory emsGuardianJobHistoryInstance) {

        if (emsGuardianJobHistoryInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsGuardianJobHistory-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsGuardianJobHistoryInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsGuardianJobHistory-L106 : " + e
            redirect(action: "index")
        }
    }
}
