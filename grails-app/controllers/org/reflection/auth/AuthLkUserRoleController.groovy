package org.reflection.auth

import grails.transaction.Transactional

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.CREATED
import static org.springframework.http.HttpStatus.OK

@Transactional(readOnly = true)
class AuthLkUserRoleController {

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
        [authLkUserRoleInstanceList: AuthLkUserRole.list(params), authLkUserRoleInstanceCount: AuthLkUserRole.count()]
    }

    def create() {
        [authLkUserRoleInstance : new AuthLkUserRole(params)]
    }

    @Transactional
    save(AuthLkUserRole authLkUserRoleInstance) {
        if (authLkUserRoleInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-AuthLkUserRole-L21 : Record not found...!")
            redirect(action: "create")
        }
//        bindData(authLkUserRoleInstance, ["createdDate"])
//        authLkUserRoleInstance.createdDate = params.createdDate ? dateParseFormat.parse(params.createdDate) : null

        //authLkUserRoleInstance.createdBy = currentUser
        authLkUserRoleInstance.validate()
        if (authLkUserRoleInstance.hasErrors()) {
            flash.error = "Error-Save-AuthLkUserRole-L27 : " + authLkUserRoleInstance.errors
            redirect(action: "create", authLkUserRoleInstance: authLkUserRoleInstance)
        }

        try {
            authLkUserRoleInstance.save flush:true
        }
        catch (Exception e) {
            flash.error = "Error-Save-AuthLkUserRole-L36 : " + e
            redirect(action: "create", authLkUserRoleInstance: authLkUserRoleInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "authLkUserRole.pageTitle.label", default: "AuthLkUserRole"), authLkUserRoleInstance.id])
                redirect authLkUserRoleInstance
            }
            '*' { respond authLkUserRoleInstance, [status: CREATED] }
        }
    }

    def show(AuthLkUserRole authLkUserRoleInstance) {
        [authLkUserRoleInstance : authLkUserRoleInstance]
    }

    def edit(AuthLkUserRole authLkUserRoleInstance) {
        [authLkUserRoleInstance : authLkUserRoleInstance]
    }

    @Transactional
    update(AuthLkUserRole authLkUserRoleInstance) {
        if (authLkUserRoleInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-AuthLkUserRole-L61 : Record not found...!")
            redirect(action: "update")
        }
//        bindData(authLkUserRoleInstance, ["modifiedDate"])
//        authLkUserRoleInstance.modifiedDate = params.modifiedDate ? dateParseFormat.parse(params.modifiedDate) : null

        //authLkUserRoleInstance.modifiedBy = currentUser
        //authLkUserRoleInstance.modifiedDate = currentDate
        authLkUserRoleInstance.validate()
        if (authLkUserRoleInstance.hasErrors()) {
            flash.error = "Error-Update-AuthLkUserRole-L67 : " + authLkUserRoleInstance.errors
            redirect(action: "update", authLkUserRoleInstance: authLkUserRoleInstance)
        }

        try {
            authLkUserRoleInstance.save flush:true
        } catch (Exception e) {
            flash.error = "Error-Update-AuthLkUserRole-L75 : " + e
            redirect(action: "update", authLkUserRoleInstance: authLkUserRoleInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "authLkUserRole.pageTitle.label", default: "AuthLkUserRole"), authLkUserRoleInstance.id])
                redirect authLkUserRoleInstance
            }
            '*'{ respond authLkUserRoleInstance, [status: OK] }
        }
    }

    @Transactional
    delete(AuthLkUserRole authLkUserRoleInstance) {

        if (authLkUserRoleInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-AuthLkUserRole-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            authLkUserRoleInstance.delete flush:true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-AuthLkUserRole-L106 : " + e
            redirect(action: "index")
        }
    }
}
