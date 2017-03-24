package org.reflection.com

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ComAdditionalInfoController {

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
        [comAdditionalInfoInstanceList: ComAdditionalInfo.list(params), comAdditionalInfoInstanceCount: ComAdditionalInfo.count()]
    }

    def create() {
        [comAdditionalInfoInstance: new ComAdditionalInfo(params)]
    }

    @Transactional
    save(ComAdditionalInfo comAdditionalInfoInstance) {
        if (comAdditionalInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-ComAdditionalInfo-L21 : Record not found...!")
            redirect(action: "create")
            return
        }

        bindData(comAdditionalInfoInstance, ["drivingLicenceExpDate", "drivingLicenceIssueDate", "nationalIdIssueDate", "passportExpDate", "passportIssueDate", "visaExpDate", "visaIssueDate", "workPermitExpDate", "workPermitIssueDate"])
        comAdditionalInfoInstance.drivingLicenceExpDate     = params.drivingLicenceExpDate ? dateParseFormat.parse(params.drivingLicenceExpDate) : null
        comAdditionalInfoInstance.drivingLicenceIssueDate   = params.drivingLicenceIssueDate ? dateParseFormat.parse(params.drivingLicenceIssueDate) : null
        comAdditionalInfoInstance.nationalIdIssueDate       = params.nationalIdIssueDate ? dateParseFormat.parse(params.nationalIdIssueDate) : null
        comAdditionalInfoInstance.passportExpDate           = params.passportExpDate ? dateParseFormat.parse(params.passportExpDate) : null
        comAdditionalInfoInstance.passportIssueDate         = params.passportIssueDate ? dateParseFormat.parse(params.passportIssueDate) : null
        comAdditionalInfoInstance.visaExpDate               = params.visaExpDate ? dateParseFormat.parse(params.visaExpDate) : null
        comAdditionalInfoInstance.visaIssueDate             = params.visaIssueDate ? dateParseFormat.parse(params.visaIssueDate) : null
        comAdditionalInfoInstance.workPermitExpDate         = params.workPermitExpDate ? dateParseFormat.parse(params.workPermitExpDate) : null
        comAdditionalInfoInstance.workPermitIssueDate       = params.workPermitIssueDate ? dateParseFormat.parse(params.workPermitIssueDate) : null

        //comAdditionalInfoInstance.createdBy = currentUser;
        comAdditionalInfoInstance.validate()
        if (comAdditionalInfoInstance.hasErrors()) {
            flash.error = "Error-Save-ComAdditionalInfo-L27 : " + comAdditionalInfoInstance.errors
            redirect(action: "create", comAdditionalInfoInstance: comAdditionalInfoInstance)
            return
        }

        try {
            comAdditionalInfoInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-ComAdditionalInfo-L36 : " + e
            redirect(action: "create", comAdditionalInfoInstance: comAdditionalInfoInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "comAdditionalInfo.pageTitle.label", default: "ComAdditionalInfo"), comAdditionalInfoInstance.id])
                redirect comAdditionalInfoInstance
            }
            '*' { respond comAdditionalInfoInstance, [status: CREATED] }
        }
    }

    def show(ComAdditionalInfo comAdditionalInfoInstance) {
        [comAdditionalInfoInstance: comAdditionalInfoInstance]
    }

    def edit(ComAdditionalInfo comAdditionalInfoInstance) {
        [comAdditionalInfoInstance: comAdditionalInfoInstance]
    }

    @Transactional
    update(ComAdditionalInfo comAdditionalInfoInstance) {
        if (comAdditionalInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-ComAdditionalInfo-L61 : Record not found...!")
            redirect(action: "update")
            return
        }

        bindData(comAdditionalInfoInstance, ["drivingLicenceExpDate", "drivingLicenceIssueDate", "nationalIdIssueDate", "passportExpDate", "passportIssueDate", "visaExpDate", "visaIssueDate", "workPermitExpDate", "workPermitIssueDate"])
        comAdditionalInfoInstance.drivingLicenceExpDate     = params.drivingLicenceExpDate ? dateParseFormat.parse(params.drivingLicenceExpDate) : null
        comAdditionalInfoInstance.drivingLicenceIssueDate   = params.drivingLicenceIssueDate ? dateParseFormat.parse(params.drivingLicenceIssueDate) : null
        comAdditionalInfoInstance.nationalIdIssueDate       = params.nationalIdIssueDate ? dateParseFormat.parse(params.nationalIdIssueDate) : null
        comAdditionalInfoInstance.passportExpDate           = params.passportExpDate ? dateParseFormat.parse(params.passportExpDate) : null
        comAdditionalInfoInstance.passportIssueDate         = params.passportIssueDate ? dateParseFormat.parse(params.passportIssueDate) : null
        comAdditionalInfoInstance.visaExpDate               = params.visaExpDate ? dateParseFormat.parse(params.visaExpDate) : null
        comAdditionalInfoInstance.visaIssueDate             = params.visaIssueDate ? dateParseFormat.parse(params.visaIssueDate) : null
        comAdditionalInfoInstance.workPermitExpDate         = params.workPermitExpDate ? dateParseFormat.parse(params.workPermitExpDate) : null
        comAdditionalInfoInstance.workPermitIssueDate       = params.workPermitIssueDate ? dateParseFormat.parse(params.workPermitIssueDate) : null

        //comAdditionalInfoInstance.modifiedBy = currentUser;
        //comAdditionalInfoInstance.modifiedDate = currentDate;
        comAdditionalInfoInstance.validate()
        if (comAdditionalInfoInstance.hasErrors()) {
            flash.error = "Error-Update-ComAdditionalInfo-L67 : " + comAdditionalInfoInstance.errors
            redirect(action: "update", comAdditionalInfoInstance: comAdditionalInfoInstance)
            return
        }

        try {
            comAdditionalInfoInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-ComAdditionalInfo-L75 : " + e
            redirect(action: "update", comAdditionalInfoInstance: comAdditionalInfoInstance)
            return
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "comAdditionalInfo.pageTitle.label", default: "ComAdditionalInfo"), comAdditionalInfoInstance.id])
                redirect comAdditionalInfoInstance
            }
            '*' { respond comAdditionalInfoInstance, [status: OK] }
        }
    }

    @Transactional
    delete(ComAdditionalInfo comAdditionalInfoInstance) {

        if (comAdditionalInfoInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-ComAdditionalInfo-L93 : Record not found...!")
            redirect(action: "index")
            return
        }

        try {
            comAdditionalInfoInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
            return
        }
        catch (Exception e) {
            flash.error = "Error-Delete-ComAdditionalInfo-L106 : " + e
            redirect(action: "index")
            return
        }
    }
}
