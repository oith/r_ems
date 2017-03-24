package org.reflection.auth

import grails.transaction.Transactional

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.CREATED
import static org.springframework.http.HttpStatus.OK

@Transactional(readOnly = true)
class AuthRequestMapController {

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
        [authRequestMapInstanceList: AuthRequestMap.list(params), authRequestMapInstanceCount: AuthRequestMap.count()]
    }

    def create() {
        [authRequestMapInstance : new AuthRequestMap(params)]
    }

    @Transactional
    save(AuthRequestMap authRequestMapInstance) {
        if (authRequestMapInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-AuthRequestMap-L21 : Record not found...!")
            redirect(action: "create")
            return
        }
        bindData(authRequestMapInstance, ["modifiedDate"])
        authRequestMapInstance.createdDate = params.createdDate ? dateParseFormat.parse(params.createdDate) : null

        authRequestMapInstance.createdBy = currentUser
        authRequestMapInstance.validate()
        if (authRequestMapInstance.hasErrors()) {
            flash.error = "Error-Save-AuthRequestMap-L27 : " + authRequestMapInstance.errors
            redirect(action: "create", authRequestMapInstance: authRequestMapInstance)
            return
        }

        try {
            authRequestMapInstance.save flush:true
        }
        catch (Exception e) {
            flash.error = "Error-Save-AuthRequestMap-L36 : " + e
            redirect(action: "create", authRequestMapInstance: authRequestMapInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "authRequestMap.pageTitle.label", default: "AuthRequestMap"), authRequestMapInstance.id])
                redirect authRequestMapInstance
            }
            '*' { respond authRequestMapInstance, [status: CREATED] }
        }
    }

    def show(AuthRequestMap authRequestMapInstance) {
        [authRequestMapInstance : authRequestMapInstance]
    }

    def edit(AuthRequestMap authRequestMapInstance) {
        [authRequestMapInstance : authRequestMapInstance]
    }

    @Transactional
    update(AuthRequestMap authRequestMapInstance) {
        if (authRequestMapInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-AuthRequestMap-L61 : Record not found...!")
            redirect(action: "update")
            return
        }
        bindData(authRequestMapInstance, ["modifiedDate"])
        authRequestMapInstance.modifiedDate = params.modifiedDate ? dateParseFormat.parse(params.modifiedDate) : null

        authRequestMapInstance.modifiedBy = currentUser
        authRequestMapInstance.modifiedDate = currentDate
        authRequestMapInstance.validate()
        if (authRequestMapInstance.hasErrors()) {
            flash.error = "Error-Update-AuthRequestMap-L67 : " + authRequestMapInstance.errors
            redirect(action: "update", authRequestMapInstance: authRequestMapInstance)
            return
        }

        try {
            authRequestMapInstance.save flush:true
        } catch (Exception e) {
            flash.error = "Error-Update-AuthRequestMap-L75 : " + e
            redirect(action: "update", authRequestMapInstance: authRequestMapInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "authRequestMap.pageTitle.label", default: "AuthRequestMap"), authRequestMapInstance.id])
                redirect authRequestMapInstance
            }
            '*'{ respond authRequestMapInstance, [status: OK] }
        }
    }

    @Transactional
    delete(AuthRequestMap authRequestMapInstance) {

        if (authRequestMapInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-AuthRequestMap-L93 : Record not found...!")
            redirect(action: "index")
            return
        }

        try {
            authRequestMapInstance.delete flush:true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
            return
        }
        catch (Exception e) {
            flash.error = "Error-Delete-AuthRequestMap-L106 : " + e
            redirect(action: "index")
            return
        }
    }
}
