package org.reflection.com

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Transactional(readOnly = true)
class ComTrainingController {

    static allowedMethods = [save: "POST", update: "PUT"]

    def springSecurityService, dateParseFormat, currentDate, currentUser

    def beforeInterceptor = {
        currentDate     = new Date()
        currentUser     = springSecurityService.getCurrentUser()
        dateParseFormat = new SimpleDateFormat(grailsApplication.config.format.dtp.date)
    }

    //def index(Integer max) {
        //params.max = Math.min(max ?: 10, 100)
    def index() {
        [comTrainingInstanceList: ComTraining.list(params), comTrainingInstanceCount: ComTraining.count()]
    }

    def create() {
        [comTrainingInstance : new ComTraining(params)]
    }

    @Transactional
    save(ComTraining comTrainingInstance) {
        if (comTrainingInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-ComTraining-L21 : Record not found...!")
            redirect(action: "create")
        }

        bindData(comTrainingInstance, ["endDate", "startDate"])
        comTrainingInstance.endDate = params.endDate ? dateParseFormat.parse(params.endDate) : null
        comTrainingInstance.startDate = params.startDate ? dateParseFormat.parse(params.startDate) : null

        //comTrainingInstance.createdBy = currentUser
        comTrainingInstance.validate()
        if (comTrainingInstance.hasErrors()) {
            flash.error = "Error-Save-ComTraining-L27 : " + comTrainingInstance.errors
            redirect(action: "create", comTrainingInstance: comTrainingInstance)
        }

        try {
            comTrainingInstance.save flush:true
        }
        catch (Exception e) {
            flash.error = "Error-Save-ComTraining-L36 : " + e
            redirect(action: "create", comTrainingInstance: comTrainingInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "comTraining.pageTitle.label", default: "ComTraining"), comTrainingInstance.id])
                redirect comTrainingInstance
            }
            '*' { respond comTrainingInstance, [status: CREATED] }
        }
    }

    def show(ComTraining comTrainingInstance) {
        [comTrainingInstance : comTrainingInstance]
    }

    def edit(ComTraining comTrainingInstance) {
        [comTrainingInstance : comTrainingInstance]
    }

    @Transactional
    update(ComTraining comTrainingInstance) {
        if (comTrainingInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-ComTraining-L61 : Record not found...!")
            redirect(action: "update")
        }

        bindData(comTrainingInstance, ["endDate", "startDate"])
        comTrainingInstance.endDate = params.endDate ? dateParseFormat.parse(params.endDate) : null
        comTrainingInstance.startDate = params.startDate ? dateParseFormat.parse(params.startDate) : null

        //comTrainingInstance.modifiedBy = currentUser
        //comTrainingInstance.modifiedDate = currentDate
        comTrainingInstance.validate()
        if (comTrainingInstance.hasErrors()) {
            flash.error = "Error-Update-ComTraining-L67 : " + comTrainingInstance.errors
            redirect(action: "update", comTrainingInstance: comTrainingInstance)
        }

        try {
            comTrainingInstance.save flush:true
        } catch (Exception e) {
            flash.error = "Error-Update-ComTraining-L75 : " + e
            redirect(action: "update", comTrainingInstance: comTrainingInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "comTraining.pageTitle.label", default: "ComTraining"), comTrainingInstance.id])
                redirect comTrainingInstance
            }
            '*'{ respond comTrainingInstance, [status: OK] }
        }
    }

    @Transactional
    delete(ComTraining comTrainingInstance) {

        if (comTrainingInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-ComTraining-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            comTrainingInstance.delete flush:true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-ComTraining-L106 : " + e
            redirect(action: "index")
        }
    }
}
