package org.reflection.ems

import java.text.SimpleDateFormat

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EmsStaffAcademicBranchController {

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
        [emsStaffAcademicBranchInstanceList: EmsStaffAcademicBranch.list(params), emsStaffAcademicBranchInstanceCount: EmsStaffAcademicBranch.count()]
    }

    def create() {
        [emsStaffAcademicBranchInstance: new EmsStaffAcademicBranch(params)]
    }

    @Transactional
    save(EmsStaffAcademicBranch emsStaffAcademicBranchInstance) {
        if (emsStaffAcademicBranchInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Save-EmsStaffAcademicBranch-L21 : Record not found...!")
            redirect(action: "create")
        }

        //emsStaffAcademicBranchInstance.createdBy = currentUser
        //emsStaffAcademicBranchInstance.validate()
        if (emsStaffAcademicBranchInstance.hasErrors()) {
            flash.error = "Error-Save-EmsStaffAcademicBranch-L27 : " + emsStaffAcademicBranchInstance.errors
            redirect(action: "create", emsStaffAcademicBranchInstance: emsStaffAcademicBranchInstance)
        }

        try {
            emsStaffAcademicBranchInstance.save flush: true
        }
        catch (Exception e) {
            flash.error = "Error-Save-EmsStaffAcademicBranch-L36 : " + e
            redirect(action: "create", emsStaffAcademicBranchInstance: emsStaffAcademicBranchInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.created", args: [message(code: "emsStaffAcademicBranch.pageTitle.label", default: "EmsStaffAcademicBranch"), emsStaffAcademicBranchInstance.id])
                redirect emsStaffAcademicBranchInstance
            }
            '*' { respond emsStaffAcademicBranchInstance, [status: CREATED] }
        }
    }

    def show(EmsStaffAcademicBranch emsStaffAcademicBranchInstance) {
        [emsStaffAcademicBranchInstance: emsStaffAcademicBranchInstance]
    }

    def edit(EmsStaffAcademicBranch emsStaffAcademicBranchInstance) {
        [emsStaffAcademicBranchInstance: emsStaffAcademicBranchInstance]
    }

    @Transactional
    update(EmsStaffAcademicBranch emsStaffAcademicBranchInstance) {
        if (emsStaffAcademicBranchInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Update-EmsStaffAcademicBranch-L61 : Record not found...!")
            redirect(action: "update")
        }

        //emsStaffAcademicBranchInstance.modifiedBy = currentUser
        //emsStaffAcademicBranchInstance.modifiedDate = currentDate
        //emsStaffAcademicBranchInstance.validate()
        if (emsStaffAcademicBranchInstance.hasErrors()) {
            flash.error = "Error-Update-EmsStaffAcademicBranch-L67 : " + emsStaffAcademicBranchInstance.errors
            redirect(action: "update", emsStaffAcademicBranchInstance: emsStaffAcademicBranchInstance)
        }

        try {
            emsStaffAcademicBranchInstance.save flush: true
        } catch (Exception e) {
            flash.error = "Error-Update-EmsStaffAcademicBranch-L75 : " + e
            redirect(action: "update", emsStaffAcademicBranchInstance: emsStaffAcademicBranchInstance)
        }

        request.withFormat {
            form multipartForm {
                flash.success = message(code: "default.message.updated", args: [message(code: "emsStaffAcademicBranch.pageTitle.label", default: "EmsStaffAcademicBranch"), emsStaffAcademicBranchInstance.id])
                redirect emsStaffAcademicBranchInstance
            }
            '*' { respond emsStaffAcademicBranchInstance, [status: OK] }
        }
    }

    @Transactional
    delete(EmsStaffAcademicBranch emsStaffAcademicBranchInstance) {

        if (emsStaffAcademicBranchInstance == null) {
            flash.error = message(code: "default.message.noRecordFound.label", default: "Error-Delete-EmsStaffAcademicBranch-L93 : Record not found...!")
            redirect(action: "index")
        }

        try {
            emsStaffAcademicBranchInstance.delete flush: true
            flash.success = 'Record deleted successfully...!'
            redirect(action: "index")
        }
        catch (Exception e) {
            flash.error = "Error-Delete-EmsStaffAcademicBranch-L106 : " + e
            redirect(action: "index")
        }
    }

}
