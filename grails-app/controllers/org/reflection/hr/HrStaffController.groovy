package org.reflection.hr

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
@Transactional(readOnly = true)
class HrStaffController {

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
        [hrStaffInstanceList: HrStaff.list(params), hrStaffInstanceCount: HrStaff.count()]
    }

    def create() {
        [hrStaffInstance : new HrStaff(params)]
    }

    @Transactional
     save(HrStaff hrStaffInstance) {
        if (hrStaffInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-HrStaff-L21 : Record not found...!")
            redirect(action: "create")
        }

        bindData(hrStaffInstance, ["joiningDate"])
        hrStaffInstance.joiningDate = params.joiningDate ? dateParseFormat.parse(params.joiningDate) : null

        //hrStaffInstance.createdBy = currentUser;
        //hrStaffInstance.validate();
        if (hrStaffInstance.hasErrors()) {
            flash.error = "Error-Save-HrStaff-L27 : " + hrStaffInstance.errors
            redirect(action: "create", hrStaffInstance: hrStaffInstance)
        }

        try {
            hrStaffInstance.save flush:true
        }
        catch (Exception e) {
            flash.error = "Error-Save-HrStaff-L36 : " + e
            redirect(action: "create", hrStaffInstance: hrStaffInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "hrStaff.pageTitle.label", default: "HrStaff"), hrStaffInstance.id])
                redirect hrStaffInstance
            }
            '*' { respond hrStaffInstance, [status: CREATED] }
        }
    }

    def show(HrStaff hrStaffInstance) {
        [hrStaffInstance : hrStaffInstance]
    }

    def edit(HrStaff hrStaffInstance) {
        [hrStaffInstance : hrStaffInstance]
    }

    @Transactional
     update(HrStaff hrStaffInstance) {
        if (hrStaffInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-HrStaff-L61 : Record not found...!")
            redirect(action: "update")
        }

        bindData(hrStaffInstance, ["joiningDate"])
        hrStaffInstance.joiningDate = params.joiningDate ? dateParseFormat.parse(params.joiningDate) : null

        //hrStaffInstance.modifiedBy = currentUser;
        //hrStaffInstance.modifiedDate = currentDate;
        hrStaffInstance.validate()
        if (hrStaffInstance.hasErrors()) {
            flash.error = "Error-Update-HrStaff-L67 : " + hrStaffInstance.errors
            redirect(action: "update", hrStaffInstance: hrStaffInstance)
        }

        try {
            hrStaffInstance.save flush:true
        } catch (Exception e) {
            flash.error = "Error-Update-HrStaff-L75 : " + e
            redirect(action: "update", hrStaffInstance: hrStaffInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "hrStaff.pageTitle.label", default: "HrStaff"), hrStaffInstance.id])
                redirect hrStaffInstance
            }
            '*'{ respond hrStaffInstance, [status: OK] }
        }
    }

    @Transactional
     delete(HrStaff hrStaffInstance) {

        if (hrStaffInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-HrStaff-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            hrStaffInstance.delete flush:true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-HrStaff-L106 : " + e
            redirect(action: "index")
        }
    }
}
