package org.reflection.com

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComEducationInfoController {

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
        [comEducationInfoInstanceList: ComEducationInfo.list(params), comEducationInfoInstanceCount: ComEducationInfo.count()]
    }

    def create() {
        [comEducationInfoInstance: new ComEducationInfo(params)]
    }

    @Transactional
    save(ComEducationInfo comEducationInfoInstance) {
        if (comEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-ComEducationInfo-L21 : Record not found...!")
            redirect(action: "create")
            return
        }

        //comEducationInfoInstance.createdBy = currentUser
        //comEducationInfoInstance.validate()
        if (comEducationInfoInstance.hasErrors()) {
            flash.error = "Error-Save-ComEducationInfo-L27 : " + comEducationInfoInstance.errors
            redirect(action: "create", comEducationInfoInstance: comEducationInfoInstance)
            return
        }

        try {
            comEducationInfoInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-ComEducationInfo-L36 : " + e
            redirect(action: "create", comEducationInfoInstance: comEducationInfoInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "comEducationInfo.pageTitle.label", default: "ComEducationInfo"), comEducationInfoInstance.id])
                redirect comEducationInfoInstance
            }
            '*' { respond comEducationInfoInstance, [status: CREATED] }
        }
    }

    def show(ComEducationInfo comEducationInfoInstance) {
        [comEducationInfoInstance: comEducationInfoInstance]
    }

    def edit(ComEducationInfo comEducationInfoInstance) {
        [comEducationInfoInstance: comEducationInfoInstance]
    }

    @Transactional
    update(ComEducationInfo comEducationInfoInstance) {
        if (comEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-ComEducationInfo-L61 : Record not found...!")
            redirect(action: "update")
            return
        }

        //comEducationInfoInstance.modifiedBy = currentUser
        //comEducationInfoInstance.modifiedDate = currentDate
        //comEducationInfoInstance.validate()
        if (comEducationInfoInstance.hasErrors()) {
            flash.error = "Error-Update-ComEducationInfo-L67 : " + comEducationInfoInstance.errors
            redirect(action: "update", comEducationInfoInstance: comEducationInfoInstance)
            return
        }

        try {
            comEducationInfoInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-ComEducationInfo-L75 : " + e
            redirect(action: "update", comEducationInfoInstance: comEducationInfoInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "comEducationInfo.pageTitle.label", default: "ComEducationInfo"), comEducationInfoInstance.id])
                redirect comEducationInfoInstance
            }
            '*' { respond comEducationInfoInstance, [status: OK] }
        }
    }

    @Transactional
    delete(ComEducationInfo comEducationInfoInstance) {

        if (comEducationInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-ComEducationInfo-L93 : Record not found...!")
            redirect(action: "index")
            return
        }

        try {
            comEducationInfoInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-ComEducationInfo-L106 : " + e
            redirect(action: "index")
        }
    }
}
