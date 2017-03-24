package org.reflection.auth

import grails.transaction.Transactional

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.CREATED
import static org.springframework.http.HttpStatus.OK

@Transactional(readOnly = true)
class AuthUserController {

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
        [authUserInstanceList: AuthUser.list(params), authUserInstanceCount: AuthUser.count()]
    }

    def create() {
        [authUserInstance : new AuthUser(params)]
    }

    @Transactional
    save(AuthUser authUserInstance) {
        if (authUserInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-AuthUser-L21 : Record not found...!")
            redirect(action: "create")
            return
        }
        bindData(authUserInstance, ["createdDate"])
        authUserInstance.createdDate = params.createdDate ? dateParseFormat.parse(params.createdDate) : null

        authUserInstance.createdBy = currentUser?.id
        authUserInstance.validate()
        if (authUserInstance.hasErrors()) {
            flash.error = "Error-Save-AuthUser-L27 : " + authUserInstance.errors
            redirect(action: "create", authUserInstance: authUserInstance)
            return
        }

        try {
            authUserInstance.save flush:true
        }
        catch (Exception e) {
            flash.error = "Error-Save-AuthUser-L36 : " + e
            redirect(action: "create", authUserInstance: authUserInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "authUser.pageTitle.label", default: "AuthUser"), authUserInstance.id])
                redirect authUserInstance
            }
            '*' { respond authUserInstance, [status: CREATED] }
        }
    }

    def show(AuthUser authUserInstance) {
        [authUserInstance : authUserInstance]
    }

    def edit(AuthUser authUserInstance) {
        [authUserInstance : authUserInstance]
    }

    @Transactional
    update(AuthUser authUserInstance) {
        if (authUserInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-AuthUser-L61 : Record not found...!")
            redirect(action: "update")
            return
        }
        bindData(authUserInstance, ["modifiedDate"])
        authUserInstance.modifiedDate = params.modifiedDate ? dateParseFormat.parse(params.modifiedDate) : null

        authUserInstance.modifiedBy = currentUser?.id
        authUserInstance.modifiedDate = currentDate
        authUserInstance.validate()
        if (authUserInstance.hasErrors()) {
            flash.error = "Error-Update-AuthUser-L67 : " + authUserInstance.errors
            redirect(action: "update", authUserInstance: authUserInstance)
            return
        }

        try {
            authUserInstance.save flush:true
        } catch (Exception e) {
            flash.error = "Error-Update-AuthUser-L75 : " + e
            redirect(action: "update", authUserInstance: authUserInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "authUser.pageTitle.label", default: "AuthUser"), authUserInstance.id])
                redirect authUserInstance
            }
            '*'{ respond authUserInstance, [status: OK] }
        }
    }

    @Transactional
    delete(AuthUser authUserInstance) {

        if (authUserInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-AuthUser-L93 : Record not found...!")
            redirect(action: "index")
            return
        }

        try {
            authUserInstance.delete flush:true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
            return
        }
        catch (Exception e) {
            flash.error = "Error-Delete-AuthUser-L106 : " + e
            redirect(action: "index")
            return
        }
    }
}
