package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsFeeCollectionController {

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
        [emsFeeCollectionInstanceList: EmsFeeCollection.list(params), emsFeeCollectionInstanceCount: EmsFeeCollection.count()]
    }

    def create() {
        [emsFeeCollectionInstance: new EmsFeeCollection(params)]
    }

    @Transactional
    save(EmsFeeCollection emsFeeCollectionInstance) {
        if (emsFeeCollectionInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsFeeCollection-L21 : Record not found...!")
            redirect(action: "create")
        }

        bindData(emsFeeCollectionInstance, ["collectionDate"])
        emsFeeCollectionInstance.collectionDate = params.collectionDate ? dateParseFormat.parse(params.collectionDate) : null

        //emsFeeCollectionInstance.createdBy = currentUser
        emsFeeCollectionInstance.validate()
        if (emsFeeCollectionInstance.hasErrors()) {
            flash.error = "Error-Save-EmsFeeCollection-L27 : " + emsFeeCollectionInstance.errors
            redirect(action: "create", emsFeeCollectionInstance: emsFeeCollectionInstance)
        }

        try {
            emsFeeCollectionInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsFeeCollection-L36 : " + e
            redirect(action: "create", emsFeeCollectionInstance: emsFeeCollectionInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsFeeCollection.pageTitle.label", default: "EmsFeeCollection"), emsFeeCollectionInstance.id])
                redirect emsFeeCollectionInstance
            }
            '*' { respond emsFeeCollectionInstance, [status: CREATED] }
        }
    }

    def show(EmsFeeCollection emsFeeCollectionInstance) {
        [emsFeeCollectionInstance: emsFeeCollectionInstance]
    }

    def edit(EmsFeeCollection emsFeeCollectionInstance) {
        [emsFeeCollectionInstance: emsFeeCollectionInstance]
    }

    @Transactional
    update(EmsFeeCollection emsFeeCollectionInstance) {
        if (emsFeeCollectionInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsFeeCollection-L61 : Record not found...!")
            redirect(action: "update")
        }

        bindData(emsFeeCollectionInstance, ["collectionDate"])
        emsFeeCollectionInstance.collectionDate = params.collectionDate ? dateParseFormat.parse(params.collectionDate) : null

        //emsFeeCollectionInstance.modifiedBy = currentUser
        //emsFeeCollectionInstance.modifiedDate = currentDate
        emsFeeCollectionInstance.validate()
        if (emsFeeCollectionInstance.hasErrors()) {
            flash.error = "Error-Update-EmsFeeCollection-L67 : " + emsFeeCollectionInstance.errors
            redirect(action: "update", emsFeeCollectionInstance: emsFeeCollectionInstance)
        }

        try {
            emsFeeCollectionInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsFeeCollection-L75 : " + e
            redirect(action: "update", emsFeeCollectionInstance: emsFeeCollectionInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsFeeCollection.pageTitle.label", default: "EmsFeeCollection"), emsFeeCollectionInstance.id])
                redirect emsFeeCollectionInstance
            }
            '*' { respond emsFeeCollectionInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsFeeCollection emsFeeCollectionInstance) {

        if (emsFeeCollectionInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsFeeCollection-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsFeeCollectionInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsFeeCollection-L106 : " + e
            redirect(action: "index")
        }
    }
}
