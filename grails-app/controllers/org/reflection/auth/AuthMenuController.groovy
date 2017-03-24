package org.reflection.auth

import java.text.SimpleDateFormat
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Transactional(readOnly = true)
class AuthMenuController {

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
        [authMenuInstanceList: AuthMenu.list(params), authMenuInstanceCount: AuthMenu.count()]
    }

    def create() {
        [authMenuInstance : new AuthMenu(params)]
    }

    @Transactional
    save(AuthMenu authMenuInstance) {
        if (authMenuInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-AuthMenu-L21 : Record not found...!")
            redirect(action: "create")
        }
        bindData(authMenuInstance, ["createdDate"])
        authMenuInstance.createdDate = params.createdDate ? dateParseFormat.parse(params.createdDate) : null

        authMenuInstance.createdBy = currentUser
        authMenuInstance.validate()
        if (authMenuInstance.hasErrors()) {
            flash.error = "Error-Save-AuthMenu-L27 : " + authMenuInstance.errors
            redirect(action: "create", authMenuInstance: authMenuInstance)
        }

        try {
            authMenuInstance.save flush:true
        }
        catch (Exception e) {
            flash.error = "Error-Save-AuthMenu-L36 : " + e
            redirect(action: "create", authMenuInstance: authMenuInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "authMenu.pageTitle.label", default: "AuthMenu"), authMenuInstance.id])
                redirect authMenuInstance
            }
            '*' { respond authMenuInstance, [status: CREATED] }
        }
    }

    def show(AuthMenu authMenuInstance) {
        [authMenuInstance : authMenuInstance]
    }

    def edit(AuthMenu authMenuInstance) {
        [authMenuInstance : authMenuInstance]
    }

    @Transactional
    update(AuthMenu authMenuInstance) {
        if (authMenuInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-AuthMenu-L61 : Record not found...!")
            redirect(action: "update")
        }
        bindData(authMenuInstance, ["modifiedDate"])
        authMenuInstance.modifiedDate = params.modifiedDate ? dateParseFormat.parse(params.modifiedDate) : null
        authMenuInstance.modifiedBy = currentUser
        authMenuInstance.modifiedDate = currentDate
        authMenuInstance.validate()
        if (authMenuInstance.hasErrors()) {
            flash.error = "Error-Update-AuthMenu-L67 : " + authMenuInstance.errors
            redirect(action: "update", authMenuInstance: authMenuInstance)
        }

        try {
            authMenuInstance.save flush:true
        } catch (Exception e) {
            flash.error = "Error-Update-AuthMenu-L75 : " + e
            redirect(action: "update", authMenuInstance: authMenuInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "authMenu.pageTitle.label", default: "AuthMenu"), authMenuInstance.id])
                redirect authMenuInstance
            }
            '*'{ respond authMenuInstance, [status: OK] }
        }
    }

    @Transactional
    delete(AuthMenu authMenuInstance) {

        if (authMenuInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-AuthMenu-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            authMenuInstance.delete flush:true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-AuthMenu-L106 : " + e
            redirect(action: "index")
        }
    }
}
