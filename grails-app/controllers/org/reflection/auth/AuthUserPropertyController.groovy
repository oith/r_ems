package org.reflection.auth

import java.text.SimpleDateFormat
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Transactional(readOnly = true)
class AuthUserPropertyController {

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
        [authUserPropertyInstanceList: AuthUserProperty.list(params), authUserPropertyInstanceCount: AuthUserProperty.count()]
    }

    def create() {
        [authUserPropertyInstance : new AuthUserProperty(params)]
    }

    @Transactional
    save(AuthUserProperty authUserPropertyInstance) {
        if (authUserPropertyInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-AuthUserProperty-L21 : Record not found...!")
            redirect(action: "create")
        }
        bindData(authUserPropertyInstance, ["createdDate"])
        authUserPropertyInstance.createdDate = params.createdDate ? dateParseFormat.parse(params.createdDate) : null

        authUserPropertyInstance.createdBy = currentUser
        authUserPropertyInstance.validate()
        if (authUserPropertyInstance.hasErrors()) {
            flash.error = "Error-Save-AuthUserProperty-L27 : " + authUserPropertyInstance.errors
            redirect(action: "create", authUserPropertyInstance: authUserPropertyInstance)
        }

        try {
            authUserPropertyInstance.save flush:true
        }
        catch (Exception e) {
            flash.error = "Error-Save-AuthUserProperty-L36 : " + e
            redirect(action: "create", authUserPropertyInstance: authUserPropertyInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "authUserProperty.pageTitle.label", default: "AuthUserProperty"), authUserPropertyInstance.id])
                redirect authUserPropertyInstance
            }
            '*' { respond authUserPropertyInstance, [status: CREATED] }
        }
    }

    def show(AuthUserProperty authUserPropertyInstance) {
        [authUserPropertyInstance : authUserPropertyInstance]
    }

    def edit(AuthUserProperty authUserPropertyInstance) {
        [authUserPropertyInstance : authUserPropertyInstance]
    }

    @Transactional
    update(AuthUserProperty authUserPropertyInstance) {
        if (authUserPropertyInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-AuthUserProperty-L61 : Record not found...!")
            redirect(action: "update")
        }
        bindData(authUserPropertyInstance, ["modifiedDate"])
        authUserPropertyInstance.modifiedDate = params.modifiedDate ? dateParseFormat.parse(params.modifiedDate) : null

        authUserPropertyInstance.modifiedBy = currentUser
        authUserPropertyInstance.modifiedDate = currentDate
        authUserPropertyInstance.validate()
        if (authUserPropertyInstance.hasErrors()) {
            flash.error = "Error-Update-AuthUserProperty-L67 : " + authUserPropertyInstance.errors
            redirect(action: "update", authUserPropertyInstance: authUserPropertyInstance)
        }

        try {
            authUserPropertyInstance.save flush:true
        } catch (Exception e) {
            flash.error = "Error-Update-AuthUserProperty-L75 : " + e
            redirect(action: "update", authUserPropertyInstance: authUserPropertyInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "authUserProperty.pageTitle.label", default: "AuthUserProperty"), authUserPropertyInstance.id])
                redirect authUserPropertyInstance
            }
            '*'{ respond authUserPropertyInstance, [status: OK] }
        }
    }

    @Transactional
    delete(AuthUserProperty authUserPropertyInstance) {

        if (authUserPropertyInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-AuthUserProperty-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            authUserPropertyInstance.delete flush:true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-AuthUserProperty-L106 : " + e
            redirect(action: "index")
        }
    }
}
