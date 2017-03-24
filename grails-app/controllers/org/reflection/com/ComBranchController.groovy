package org.reflection.com


import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComBranchController {

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
        [comBranchInstanceList: ComBranch.list(params), comBranchInstanceCount: ComBranch.count()]
    }

    def create() {
        [comBranchInstance: new ComBranch(params)]
    }

    @Transactional
    save(ComBranch comBranchInstance) {
        if (comBranchInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-ComBranch-L21 : Record not found...!")
            redirect(action: "create")
            return
        }

        //comBranchInstance.createdBy = currentUser
        //comBranchInstance.validate()
        if (comBranchInstance.hasErrors()) {
            flash.error = "Error-Save-ComBranch-L27 : " + comBranchInstance.errors
            redirect(action: "create", comBranchInstance: comBranchInstance)
            return
        }

        try {
            comBranchInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-ComBranch-L36 : " + e
            redirect(action: "create", comBranchInstance: comBranchInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "comBranch.pageTitle.label", default: "ComBranch"), comBranchInstance.id])
                redirect comBranchInstance
            }
            '*' { respond comBranchInstance, [status: CREATED] }
        }
    }

    def show(ComBranch comBranchInstance) {
        [comBranchInstance: comBranchInstance]
    }

    def edit(ComBranch comBranchInstance) {
        [comBranchInstance: comBranchInstance]
    }

    @Transactional
    update(ComBranch comBranchInstance) {
        if (comBranchInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-ComBranch-L61 : Record not found...!")
            redirect(action: "update")
            return
        }

        //comBranchInstance.modifiedBy = currentUser
        //comBranchInstance.modifiedDate = currentDate
        //comBranchInstance.validate()
        if (comBranchInstance.hasErrors()) {
            flash.error = "Error-Update-ComBranch-L67 : " + comBranchInstance.errors
            redirect(action: "update", comBranchInstance: comBranchInstance)
            return
        }

        try {
            comBranchInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-ComBranch-L75 : " + e
            redirect(action: "update", comBranchInstance: comBranchInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "comBranch.pageTitle.label", default: "ComBranch"), comBranchInstance.id])
                redirect comBranchInstance
            }
            '*' { respond comBranchInstance, [status: OK] }
        }
    }

    @Transactional
    delete(ComBranch comBranchInstance) {

        if (comBranchInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-ComBranch-L93 : Record not found...!")
            redirect(action: "index")
            return
        }

        try {
            comBranchInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-ComBranch-L106 : " + e
            redirect(action: "index")
        }
    }
}
