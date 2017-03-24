package org.reflection.auth

import java.text.SimpleDateFormat
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Transactional(readOnly = true)
class AuthLandingPageController {

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
        [authLandingPageInstanceList: AuthLandingPage.list(params), authLandingPageInstanceCount: AuthLandingPage.count()]
    }

    def create() {
        [authLandingPageInstance : new AuthLandingPage(params)]
    }

    @Transactional
    save(AuthLandingPage authLandingPageInstance) {
        if (authLandingPageInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-AuthLandingPage-L21 : Record not found...!")
            redirect(action: "create")
        }

        bindData(authLandingPageInstance, ["createdDate"])
        authLandingPageInstance.createdDate = params.createdDate ? dateParseFormat.parse(params.createdDate) : null

        authLandingPageInstance.createdBy = currentUser
        authLandingPageInstance.validate()
        if (authLandingPageInstance.hasErrors()) {
            flash.error = "Error-Save-AuthLandingPage-L27 : " + authLandingPageInstance.errors
            redirect(action: "create", authLandingPageInstance: authLandingPageInstance)
        }

        try {
            authLandingPageInstance.save flush:true
        }
        catch (Exception e) {
            flash.error = "Error-Save-AuthLandingPage-L36 : " + e
            redirect(action: "create", authLandingPageInstance: authLandingPageInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "authLandingPage.pageTitle.label", default: "AuthLandingPage"), authLandingPageInstance.id])
                redirect authLandingPageInstance
            }
            '*' { respond authLandingPageInstance, [status: CREATED] }
        }
    }

    def show(AuthLandingPage authLandingPageInstance) {
        [authLandingPageInstance : authLandingPageInstance]
    }

    def edit(AuthLandingPage authLandingPageInstance) {
        [authLandingPageInstance : authLandingPageInstance]
    }

    @Transactional
    update(AuthLandingPage authLandingPageInstance) {
        if (authLandingPageInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-AuthLandingPage-L61 : Record not found...!")
            redirect(action: "update")
        }
        bindData(authLandingPageInstance, ["modifiedDate"])
        authLandingPageInstance.modifiedDate = params.modifiedDate ? dateParseFormat.parse(params.modifiedDate) : null
        authLandingPageInstance.modifiedBy = currentUser
        authLandingPageInstance.modifiedDate = currentDate
        authLandingPageInstance.validate()
        if (authLandingPageInstance.hasErrors()) {
            flash.error = "Error-Update-AuthLandingPage-L67 : " + authLandingPageInstance.errors
            redirect(action: "update", authLandingPageInstance: authLandingPageInstance)
        }

        try {
            authLandingPageInstance.save flush:true
        } catch (Exception e) {
            flash.error = "Error-Update-AuthLandingPage-L75 : " + e
            redirect(action: "update", authLandingPageInstance: authLandingPageInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "authLandingPage.pageTitle.label", default: "AuthLandingPage"), authLandingPageInstance.id])
                redirect authLandingPageInstance
            }
            '*'{ respond authLandingPageInstance, [status: OK] }
        }
    }

    @Transactional
    delete(AuthLandingPage authLandingPageInstance) {

        if (authLandingPageInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-AuthLandingPage-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            authLandingPageInstance.delete flush:true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-AuthLandingPage-L106 : " + e
            redirect(action: "index")
        }
    }
}
