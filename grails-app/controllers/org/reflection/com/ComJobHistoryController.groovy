package org.reflection.com

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComJobHistoryController {

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
        [comJobHistoryInstanceList: ComJobHistory.list(params), comJobHistoryInstanceCount: ComJobHistory.count()]
    }

    def create() {
        [comJobHistoryInstance: new ComJobHistory(params)]
    }

    @Transactional
    save(ComJobHistory comJobHistoryInstance) {
        if (comJobHistoryInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-ComJobHistory-L21 : Record not found...!")
            redirect(action: "create")
            return
        }

        bindData(comJobHistoryInstance, ["endDate", "startDate"])
        comJobHistoryInstance.endDate = params.endDate ? dateParseFormat.parse(params.endDate) : null
        comJobHistoryInstance.startDate = params.startDate ? dateParseFormat.parse(params.startDate) : null

        //comJobHistoryInstance.createdBy = currentUser
        comJobHistoryInstance.validate()
        if (comJobHistoryInstance.hasErrors()) {
            flash.error = "Error-Save-ComJobHistory-L27 : " + comJobHistoryInstance.errors
            redirect(action: "create", comJobHistoryInstance: comJobHistoryInstance)
            return
        }

        try {
            comJobHistoryInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-ComJobHistory-L36 : " + e
            redirect(action: "create", comJobHistoryInstance: comJobHistoryInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "comJobHistory.pageTitle.label", default: "ComJobHistory"), comJobHistoryInstance.id])
                redirect comJobHistoryInstance
            }
            '*' { respond comJobHistoryInstance, [status: CREATED] }
        }
    }

    def show(ComJobHistory comJobHistoryInstance) {
        [comJobHistoryInstance: comJobHistoryInstance]
    }

    def edit(ComJobHistory comJobHistoryInstance) {
        [comJobHistoryInstance: comJobHistoryInstance]
    }

    @Transactional
    update(ComJobHistory comJobHistoryInstance) {
        if (comJobHistoryInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-ComJobHistory-L61 : Record not found...!")
            redirect(action: "update")
            return
        }

        bindData(comJobHistoryInstance, ["endDate", "startDate"])
        comJobHistoryInstance.endDate = params.endDate ? dateParseFormat.parse(params.endDate) : null
        comJobHistoryInstance.startDate = params.startDate ? dateParseFormat.parse(params.startDate) : null

        //comJobHistoryInstance.modifiedBy = currentUser
        //comJobHistoryInstance.modifiedDate = currentDate
        comJobHistoryInstance.validate()
        if (comJobHistoryInstance.hasErrors()) {
            flash.error = "Error-Update-ComJobHistory-L67 : " + comJobHistoryInstance.errors
            redirect(action: "update", comJobHistoryInstance: comJobHistoryInstance)
            return
        }

        try {
            comJobHistoryInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-ComJobHistory-L75 : " + e
            redirect(action: "update", comJobHistoryInstance: comJobHistoryInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "comJobHistory.pageTitle.label", default: "ComJobHistory"), comJobHistoryInstance.id])
                redirect comJobHistoryInstance
            }
            '*' { respond comJobHistoryInstance, [status: OK] }
        }
    }

    @Transactional
    delete(ComJobHistory comJobHistoryInstance) {

        if (comJobHistoryInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-ComJobHistory-L93 : Record not found...!")
            redirect(action: "index")
            return
        }

        try {
            comJobHistoryInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
            return
        }
        catch (Exception e) {
            flash.error = "Error-Delete-ComJobHistory-L106 : " + e
            redirect(action: "index")
            return
        }
    }
}
