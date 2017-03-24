package org.reflection.com

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComFamilyInfoController {

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
        [comFamilyInfoInstanceList: ComFamilyInfo.list(params), comFamilyInfoInstanceCount: ComFamilyInfo.count()]
    }

    def create() {
        [comFamilyInfoInstance: new ComFamilyInfo(params)]
    }

    @Transactional
    save(ComFamilyInfo comFamilyInfoInstance) {
        if (comFamilyInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-ComFamilyInfo-L21 : Record not found...!")
            redirect(action: "create")
            return
        }

        bindData(comFamilyInfoInstance, ["dob"])
        comFamilyInfoInstance.dob = params.dob ? dateParseFormat.parse(params.dob) : null

        //comFamilyInfoInstance.createdBy = currentUser
        comFamilyInfoInstance.validate()
        if (comFamilyInfoInstance.hasErrors()) {
            flash.error = "Error-Save-ComFamilyInfo-L27 : " + comFamilyInfoInstance.errors
            redirect(action: "create", comFamilyInfoInstance: comFamilyInfoInstance)
            return
        }

        try {
            comFamilyInfoInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-ComFamilyInfo-L36 : " + e
            redirect(action: "create", comFamilyInfoInstance: comFamilyInfoInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "comFamilyInfo.pageTitle.label", default: "ComFamilyInfo"), comFamilyInfoInstance.id])
                redirect comFamilyInfoInstance
            }
            '*' { respond comFamilyInfoInstance, [status: CREATED] }
        }
    }

    def show(ComFamilyInfo comFamilyInfoInstance) {
        [comFamilyInfoInstance: comFamilyInfoInstance]
    }

    def edit(ComFamilyInfo comFamilyInfoInstance) {
        [comFamilyInfoInstance: comFamilyInfoInstance]
    }

    @Transactional
    update(ComFamilyInfo comFamilyInfoInstance) {
        if (comFamilyInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-ComFamilyInfo-L61 : Record not found...!")
            redirect(action: "update")
            return
        }

        bindData(comFamilyInfoInstance, ["dob"])
        comFamilyInfoInstance.dob = params.dob ? dateParseFormat.parse(params.dob) : null

        //comFamilyInfoInstance.modifiedBy = currentUser
        //comFamilyInfoInstance.modifiedDate = currentDate
        comFamilyInfoInstance.validate()
        if (comFamilyInfoInstance.hasErrors()) {
            flash.error = "Error-Update-ComFamilyInfo-L67 : " + comFamilyInfoInstance.errors
            redirect(action: "update", comFamilyInfoInstance: comFamilyInfoInstance)
            return
        }

        try {
            comFamilyInfoInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-ComFamilyInfo-L75 : " + e
            redirect(action: "update", comFamilyInfoInstance: comFamilyInfoInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "comFamilyInfo.pageTitle.label", default: "ComFamilyInfo"), comFamilyInfoInstance.id])
                redirect comFamilyInfoInstance
            }
            '*' { respond comFamilyInfoInstance, [status: OK] }
        }
    }

    @Transactional
    delete(ComFamilyInfo comFamilyInfoInstance) {

        if (comFamilyInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-ComFamilyInfo-L93 : Record not found...!")
            redirect(action: "index")
            return
        }

        try {
            comFamilyInfoInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-ComFamilyInfo-L106 : " + e
            redirect(action: "index")
        }
    }
}
