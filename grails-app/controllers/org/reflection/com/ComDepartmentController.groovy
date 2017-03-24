package org.reflection.com

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComDepartmentController {

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
        [departmentInstanceList: ComDepartment.list(params), departmentInstanceCount: ComDepartment.count()]
    }

    def create() {
        [departmentInstance: new ComDepartment(params)]
    }

    @Transactional
    save(ComDepartment departmentInstance) {
        if (departmentInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-ComDepartment-L21 : Record not found...!")
            redirect(action: "create")
            return
        }

        bindData(departmentInstance, ["createdDate"])
        departmentInstance.createdDate = params.createdDate ? dateParseFormat.parse(params.createdDate) : null

        departmentInstance.createdBy = currentUser
        departmentInstance.validate()
        if (departmentInstance.hasErrors()) {
            flash.error = "Error-Save-ComDepartment-L27 : " + departmentInstance.errors
            redirect(action: "create", departmentInstance: departmentInstance)
            return
        }

        try {
            departmentInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-ComDepartment-L36 : " + e
            redirect(action: "create", departmentInstance: departmentInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "department.pageTitle.label", default: "ComDepartment"), departmentInstance.id])
                redirect departmentInstance
            }
            '*' { respond departmentInstance, [status: CREATED] }
        }
    }

    def show(ComDepartment departmentInstance) {
        [departmentInstance: departmentInstance]
    }

    def edit(ComDepartment departmentInstance) {
        [departmentInstance: departmentInstance]
    }

    @Transactional
    update(ComDepartment departmentInstance) {
        if (departmentInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-ComDepartment-L61 : Record not found...!")
            redirect(action: "update")
            return
        }

        bindData(departmentInstance, ["modifiedDate"])
        departmentInstance.modifiedDate = params.modifiedDate ? dateParseFormat.parse(params.modifiedDate) : null

        //departmentInstance.modifiedBy = currentUser
        //departmentInstance.modifiedDate = currentDate
        departmentInstance.validate()
        if (departmentInstance.hasErrors()) {
            flash.error = "Error-Update-ComDepartment-L67 : " + departmentInstance.errors
            redirect(action: "update", departmentInstance: departmentInstance)
            return
        }

        try {
            departmentInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-ComDepartment-L75 : " + e
            redirect(action: "update", departmentInstance: departmentInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "department.pageTitle.label", default: "ComDepartment"), departmentInstance.id])
                redirect departmentInstance
            }
            '*' { respond departmentInstance, [status: OK] }
        }
    }

    @Transactional
    delete(ComDepartment departmentInstance) {
        if (departmentInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-ComDepartment-L93 : Record not found...!")
            redirect(action: "index")
            return
        }

        try {
            departmentInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-ComDepartment-L106 : " + e
            redirect(action: "index")
        }
    }
}
