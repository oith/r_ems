package org.reflection.auth

import grails.transaction.Transactional

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.CREATED
import static org.springframework.http.HttpStatus.OK

@Transactional(readOnly = true)
class AuthRoleController {

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
        [authRoleInstanceList: AuthRole.list(params), authRoleInstanceCount: AuthRole.count()]
    }

    def create() {
        [authRoleInstance : new AuthRole(params)]
    }

    @Transactional
    save(AuthRole authRoleInstance) {
        if (authRoleInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-AuthRole-L21 : Record not found...!")
            redirect(action: "create")
        }
        bindData(authRoleInstance, ["createdDate"])
        authRoleInstance.createdDate = params.createdDate ? dateParseFormat.parse(params.createdDate) : null

        authRoleInstance.createdBy = currentUser
        authRoleInstance.validate()
        if (authRoleInstance.hasErrors()) {
            flash.error = "Error-Save-AuthRole-L27 : " + authRoleInstance.errors
            redirect(action: "create", authRoleInstance: authRoleInstance)
        }

        try {
            authRoleInstance.save flush:true
        }
        catch (Exception e) {
            flash.error = "Error-Save-AuthRole-L36 : " + e
            redirect(action: "create", authRoleInstance: authRoleInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "authRole.pageTitle.label", default: "AuthRole"), authRoleInstance.id])
                redirect authRoleInstance
            }
            '*' { respond authRoleInstance, [status: CREATED] }
        }
    }

    def show(AuthRole authRoleInstance) {
        [authRoleInstance : authRoleInstance]
    }

    def edit(AuthRole authRoleInstance) {
        [authRoleInstance : authRoleInstance]
    }

    @Transactional
    update(AuthRole authRoleInstance) {
        if (authRoleInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-AuthRole-L61 : Record not found...!")
            redirect(action: "update")
        }
        bindData(authRoleInstance, ["modifiedDate"])
        authRoleInstance.modifiedDate = params.modifiedDate ? dateParseFormat.parse(params.modifiedDate) : null

        authRoleInstance.modifiedBy = currentUser
        authRoleInstance.modifiedDate = currentDate
        authRoleInstance.validate()
        if (authRoleInstance.hasErrors()) {
            flash.error = "Error-Update-AuthRole-L67 : " + authRoleInstance.errors
            redirect(action: "update", authRoleInstance: authRoleInstance)
        }

        try {
            authRoleInstance.save flush:true
        } catch (Exception e) {
            flash.error = "Error-Update-AuthRole-L75 : " + e
            redirect(action: "update", authRoleInstance: authRoleInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "authRole.pageTitle.label", default: "AuthRole"), authRoleInstance.id])
                redirect authRoleInstance
            }
            '*'{ respond authRoleInstance, [status: OK] }
        }
    }

    @Transactional
    delete(AuthRole authRoleInstance) {

        if (authRoleInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-AuthRole-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            authRoleInstance.delete flush:true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-AuthRole-L106 : " + e
            redirect(action: "index")
        }
    }
}
