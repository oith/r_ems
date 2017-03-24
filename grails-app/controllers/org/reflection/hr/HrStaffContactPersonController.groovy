package org.reflection.hr

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class HrStaffContactPersonController {

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
        [hrStaffContactPersonInstanceList: HrStaffContactPerson.list(params), hrStaffContactPersonInstanceCount: HrStaffContactPerson.count()]
    }

    def create() {
        [hrStaffContactPersonInstance: new HrStaffContactPerson(params)]
    }

    @Transactional
     save(HrStaffContactPerson hrStaffContactPersonInstance) {
        if (hrStaffContactPersonInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-HrStaffContactPerson-L21 : Record not found...!");
            redirect(action: "create")
        }

        //hrStaffContactPersonInstance.createdBy = currentUser;
        //hrStaffContactPersonInstance.validate();
        if (hrStaffContactPersonInstance.hasErrors()) {
            flash.error = "Error-Save-HrStaffContactPerson-L27 : " + hrStaffContactPersonInstance.errors
            redirect(action: "create", hrStaffContactPersonInstance: hrStaffContactPersonInstance)
        }

        try {
            hrStaffContactPersonInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-HrStaffContactPerson-L36 : " + e
            redirect(action: "create", hrStaffContactPersonInstance: hrStaffContactPersonInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "hrStaffContactPerson.pageTitle.label", default: "HrStaffContactPerson"), hrStaffContactPersonInstance.id])
                redirect hrStaffContactPersonInstance
            }
            '*' { respond hrStaffContactPersonInstance, [status: CREATED] }
        }
    }

    def show(HrStaffContactPerson hrStaffContactPersonInstance) {
        [hrStaffContactPersonInstance: hrStaffContactPersonInstance]
    }

    def edit(HrStaffContactPerson hrStaffContactPersonInstance) {
        [hrStaffContactPersonInstance: hrStaffContactPersonInstance]
    }

    @Transactional
     update(HrStaffContactPerson hrStaffContactPersonInstance) {
        if (hrStaffContactPersonInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-HrStaffContactPerson-L61 : Record not found...!");
            redirect(action: "update")
        }

        //hrStaffContactPersonInstance.modifiedBy = currentUser;
        //hrStaffContactPersonInstance.modifiedDate = currentDate;
        //hrStaffContactPersonInstance.validate();
        if (hrStaffContactPersonInstance.hasErrors()) {
            flash.error = "Error-Update-HrStaffContactPerson-L67 : " + hrStaffContactPersonInstance.errors
            redirect(action: "update", hrStaffContactPersonInstance: hrStaffContactPersonInstance)
        }

        try {
            hrStaffContactPersonInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-HrStaffContactPerson-L75 : " + e
            redirect(action: "update", hrStaffContactPersonInstance: hrStaffContactPersonInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "hrStaffContactPerson.pageTitle.label", default: "HrStaffContactPerson"), hrStaffContactPersonInstance.id])
                redirect hrStaffContactPersonInstance
            }
            '*' { respond hrStaffContactPersonInstance, [status: OK] }
        }
    }

    @Transactional
     delete(HrStaffContactPerson hrStaffContactPersonInstance) {

        if (hrStaffContactPersonInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-HrStaffContactPerson-L93 : Record not found...!");
            redirect(action: "index")
        }

        try {
            hrStaffContactPersonInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
            return
        }
        catch (Exception e) {
            flash.error = "Error-Delete-HrStaffContactPerson-L106 : " + e
            redirect(action: "index")
        }
    }
}
