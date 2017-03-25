<%@ page import="org.reflection.com.ComAdditionalInfo" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'agreement', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.agreement.label" default="Agreement"/></label>
            <g:textField name="agreement" class="form-control" value="${comAdditionalInfoInstance?.agreement}"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='agreement'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'computerLiteracy', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.computerLiteracy.label" default="Computer Literacy"/></label>
            <g:textField name="computerLiteracy" class="form-control" value="${comAdditionalInfoInstance?.computerLiteracy}"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='computerLiteracy'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'drivingLicenceExpDate', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.drivingLicenceExpDate.label" default="Driving Licence Exp Date"/></label>
            <g:textField name="drivingLicenceExpDate" class="form-control dtp-date" value="${comAdditionalInfoInstance?.drivingLicenceExpDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='drivingLicenceExpDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'drivingLicenceIssueDate', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.drivingLicenceIssueDate.label" default="Driving Licence Issue Date"/></label>
            <g:textField name="drivingLicenceIssueDate" class="form-control dtp-date" value="${comAdditionalInfoInstance?.drivingLicenceIssueDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='drivingLicenceIssueDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'drivingLicenceNo', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.drivingLicenceNo.label" default="Driving Licence No"/></label>
            <g:textField name="drivingLicenceNo" class="form-control" value="${comAdditionalInfoInstance?.drivingLicenceNo}"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='drivingLicenceNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'isWorkPermitExist', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.isWorkPermitExist.label" default="Is Work Permit Exist"/></label>
            <g:checkBox class="cb" name="isWorkPermitExist"  value="${comAdditionalInfoInstance?.isWorkPermitExist}" />
            <g:renderErrors bean='comAdditionalInfoInstance' field='isWorkPermitExist'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'nationalIdIssueDate', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.nationalIdIssueDate.label" default="National Id Issue Date"/></label>
            <g:textField name="nationalIdIssueDate" class="form-control dtp-date" value="${comAdditionalInfoInstance?.nationalIdIssueDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='nationalIdIssueDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'nationalIdIssuePlace', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.nationalIdIssuePlace.label" default="National Id Issue Place"/></label>
            <g:textField name="nationalIdIssuePlace" class="form-control" value="${comAdditionalInfoInstance?.nationalIdIssuePlace}"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='nationalIdIssuePlace'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'passportExpDate', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.passportExpDate.label" default="Passport Exp Date"/></label>
            <g:textField name="passportExpDate" class="form-control dtp-date" value="${comAdditionalInfoInstance?.passportExpDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='passportExpDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'passportIssueDate', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.passportIssueDate.label" default="Passport Issue Date"/></label>
            <g:textField name="passportIssueDate" class="form-control dtp-date" value="${comAdditionalInfoInstance?.passportIssueDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='passportIssueDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'passportIssuePlace', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.passportIssuePlace.label" default="Passport Issue Place"/></label>
            <g:textField name="passportIssuePlace" class="form-control" value="${comAdditionalInfoInstance?.passportIssuePlace}"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='passportIssuePlace'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'passportNo', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.passportNo.label" default="Passport No"/></label>
            <g:textField name="passportNo" class="form-control" value="${comAdditionalInfoInstance?.passportNo}"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='passportNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'passportTitle', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.passportTitle.label" default="Passport Title"/></label>
            <g:textField name="passportTitle" class="form-control" value="${comAdditionalInfoInstance?.passportTitle}"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='passportTitle'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.remarks.label" default="Remarks"/></label>
            <g:textField name="remarks" class="form-control" value="${comAdditionalInfoInstance?.remarks}"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'visaExpDate', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.visaExpDate.label" default="Visa Exp Date"/></label>
            <g:textField name="visaExpDate" class="form-control dtp-date" value="${comAdditionalInfoInstance?.visaExpDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='visaExpDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'visaIssueDate', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.visaIssueDate.label" default="Visa Issue Date"/></label>
            <g:textField name="visaIssueDate" class="form-control dtp-date" value="${comAdditionalInfoInstance?.visaIssueDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='visaIssueDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'visaNo', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.visaNo.label" default="Visa No"/></label>
            <g:textField name="visaNo" class="form-control" value="${comAdditionalInfoInstance?.visaNo}"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='visaNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'workPermitExpDate', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.workPermitExpDate.label" default="Work Permit Exp Date"/></label>
            <g:textField name="workPermitExpDate" class="form-control dtp-date" value="${comAdditionalInfoInstance?.workPermitExpDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='workPermitExpDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'workPermitIssueDate', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.workPermitIssueDate.label" default="Work Permit Issue Date"/></label>
            <g:textField name="workPermitIssueDate" class="form-control dtp-date" value="${comAdditionalInfoInstance?.workPermitIssueDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='workPermitIssueDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comAdditionalInfoInstance, field: 'workPermitNo', 'has-error')}'>
            <label><g:message code="comAdditionalInfo.workPermitNo.label" default="Work Permit No"/></label>
            <g:textField name="workPermitNo" class="form-control" value="${comAdditionalInfoInstance?.workPermitNo}"/>
            <g:renderErrors bean='comAdditionalInfoInstance' field='workPermitNo'/>
        </div>
    </div>

</fieldset>
