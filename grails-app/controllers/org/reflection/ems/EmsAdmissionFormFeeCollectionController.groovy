package org.reflection.ems

import java.text.SimpleDateFormat
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Transactional(readOnly = true)
class EmsAdmissionFormFeeCollectionController {

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
        [emsAdmissionFormFeeCollectionInstanceList: EmsAdmissionFormFeeCollection.list(params), emsAdmissionFormFeeCollectionInstanceCount: EmsAdmissionFormFeeCollection.count()]
    }

    def create() {
        [emsAdmissionFormFeeCollectionInstance : new EmsAdmissionFormFeeCollection(params)]
    }

    @Transactional
    save(EmsAdmissionFormFeeCollection emsAdmissionFormFeeCollectionInstance) {
        if (emsAdmissionFormFeeCollectionInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsAdmissionFormFeeCollection-L21 : Record not found...!")
            redirect(action: "create")
        }
        bindData(emsAdmissionFormFeeCollectionInstance, ["appDate"])
        emsAdmissionFormFeeCollectionInstance.appDate = params.appDate ? dateParseFormat.parse(params.appDate): null
        //emsAdmissionFormFeeCollectionInstance.createdBy = currentUser
        emsAdmissionFormFeeCollectionInstance.validate()
        if (emsAdmissionFormFeeCollectionInstance.hasErrors()) {
            flash.error = "Error-Save-EmsAdmissionFormFeeCollection-L27 : " + emsAdmissionFormFeeCollectionInstance.errors
            redirect(action: "create", emsAdmissionFormFeeCollectionInstance: emsAdmissionFormFeeCollectionInstance)
        }

        try {
            emsAdmissionFormFeeCollectionInstance.save flush:true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsAdmissionFormFeeCollection-L36 : " + e
            redirect(action: "create", emsAdmissionFormFeeCollectionInstance: emsAdmissionFormFeeCollectionInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsAdmissionFormFeeCollection.pageTitle.label", default: "EmsAdmissionFormFeeCollection"), emsAdmissionFormFeeCollectionInstance.id])
                redirect emsAdmissionFormFeeCollectionInstance
            }
            '*' { respond emsAdmissionFormFeeCollectionInstance, [status: CREATED] }
        }
    }

    def show(EmsAdmissionFormFeeCollection emsAdmissionFormFeeCollectionInstance) {
        [emsAdmissionFormFeeCollectionInstance : emsAdmissionFormFeeCollectionInstance]
    }

    def edit(EmsAdmissionFormFeeCollection emsAdmissionFormFeeCollectionInstance) {
        [emsAdmissionFormFeeCollectionInstance : emsAdmissionFormFeeCollectionInstance]
    }

    @Transactional
    update(EmsAdmissionFormFeeCollection emsAdmissionFormFeeCollectionInstance) {
        if (emsAdmissionFormFeeCollectionInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsAdmissionFormFeeCollection-L61 : Record not found...!")
            redirect(action: "update")
        }
        bindData(emsAdmissionFormFeeCollectionInstance, ["appDate"])
        emsAdmissionFormFeeCollectionInstance.appDate = params.appDate ? dateParseFormat.parse(params.appDate): null

        //emsAdmissionFormFeeCollectionInstance.modifiedBy = currentUser
        //emsAdmissionFormFeeCollectionInstance.modifiedDate = currentDate
        emsAdmissionFormFeeCollectionInstance.validate()
        if (emsAdmissionFormFeeCollectionInstance.hasErrors()) {
            flash.error = "Error-Update-EmsAdmissionFormFeeCollection-L67 : " + emsAdmissionFormFeeCollectionInstance.errors
            redirect(action: "update", emsAdmissionFormFeeCollectionInstance: emsAdmissionFormFeeCollectionInstance)
        }

        try {
            emsAdmissionFormFeeCollectionInstance.save flush:true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsAdmissionFormFeeCollection-L75 : " + e
            redirect(action: "update", emsAdmissionFormFeeCollectionInstance: emsAdmissionFormFeeCollectionInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsAdmissionFormFeeCollection.pageTitle.label", default: "EmsAdmissionFormFeeCollection"), emsAdmissionFormFeeCollectionInstance.id])
                redirect emsAdmissionFormFeeCollectionInstance
            }
            '*'{ respond emsAdmissionFormFeeCollectionInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsAdmissionFormFeeCollection emsAdmissionFormFeeCollectionInstance) {

        if (emsAdmissionFormFeeCollectionInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsAdmissionFormFeeCollection-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsAdmissionFormFeeCollectionInstance.delete flush:true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsAdmissionFormFeeCollection-L106 : " + e
            redirect(action: "index")
        }
    }
}
