package org.reflection.com

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComDesignationController {

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
        [designationInstanceList: ComDesignation.list(params), designationInstanceCount: ComDesignation.count()]
    }

    def create() {
        [designationInstance: new ComDesignation(params)]
    }

    @Transactional
    save(ComDesignation designationInstance) {
        if (designationInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-Designation-L21 : Record not found...!")
            redirect(action: "create")
            return
        }

        bindData(designationInstance, ["createdDate"])
        designationInstance.createdDate = params.createdDate ? dateParseFormat.parse(params.createdDate) : null

        //designationInstance.createdBy = currentUser
        designationInstance.validate()
        if (designationInstance.hasErrors()) {
            flash.error = "Error-Save-Designation-L27 : " + designationInstance.errors
            redirect(action: "create", designationInstance: designationInstance)
            return
        }

        try {
            designationInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-Designation-L36 : " + e
            redirect(action: "create", designationInstance: designationInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "designation.pageTitle.label", default: "Designation"), designationInstance.id])
                redirect designationInstance
            }
            '*' { respond designationInstance, [status: CREATED] }
        }
    }

    def show(ComDesignation designationInstance) {
        [designationInstance: designationInstance]
    }

    def edit(ComDesignation designationInstance) {
        [designationInstance: designationInstance]
    }

    @Transactional
    update(ComDesignation designationInstance) {
        if (designationInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-Designation-L61 : Record not found...!")
            redirect(action: "update")
            return
        }

        bindData(designationInstance, ["modifiedDate"])
        designationInstance.modifiedDate = params.modifiedDate ? dateParseFormat.parse(params.modifiedDate) : null

        //designationInstance.modifiedBy = currentUser
        //designationInstance.modifiedDate = currentDate
        //designationInstance.validate()
        if (designationInstance.hasErrors()) {
            flash.error = "Error-Update-Designation-L67 : " + designationInstance.errors
            redirect(action: "update", designationInstance: designationInstance)
            return
        }

        try {
            designationInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-Designation-L75 : " + e
            redirect(action: "update", designationInstance: designationInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "designation.pageTitle.label", default: "Designation"), designationInstance.id])
                redirect designationInstance
            }
            '*' { respond designationInstance, [status: OK] }
        }
    }

    @Transactional
    delete(ComDesignation designationInstance) {
        if (designationInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-Designation-L93 : Record not found...!")
            redirect(action: "index")
            return
        }

        try {
            designationInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-Designation-L106 : " + e
            redirect(action: "index")
        }
    }
}
