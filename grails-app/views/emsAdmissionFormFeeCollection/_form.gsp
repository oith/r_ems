<%@ page import="org.reflection.ems.EmsAdmissionFormFeeCollection" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsAdmissionFormFeeCollectionInstance, field: 'formNo', 'has-error')} required'>
            <label class='required'><g:message code="emsAdmissionFormFeeCollection.formNo.label" default="Form No"/></label>
            <g:textField name="formNo" class="form-control" value="${emsAdmissionFormFeeCollectionInstance?.formNo}" maxlength="11" required="required"/>
            <g:renderErrors bean='emsAdmissionFormFeeCollectionInstance' field='formNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsAdmissionFormFeeCollectionInstance, field: 'applicantName', 'has-error')} required'>
            <label class='required'><g:message code="emsAdmissionFormFeeCollection.applicantName.label" default="Applicant Name"/></label>
            <g:textField name="applicantName" class="form-control" value="${emsAdmissionFormFeeCollectionInstance?.applicantName}" maxlength="30" required="required"/>
            <g:renderErrors bean='emsAdmissionFormFeeCollectionInstance' field='applicantName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsAdmissionFormFeeCollectionInstance, field: 'guardianName', 'has-error')}'>
            <label><g:message code="emsAdmissionFormFeeCollection.guardianName.label" default="Guardian Name"/></label>
            <g:textField name="guardianName" class="form-control" value="${emsAdmissionFormFeeCollectionInstance?.guardianName}" maxlength="30"/>
            <g:renderErrors bean='emsAdmissionFormFeeCollectionInstance' field='guardianName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsAdmissionFormFeeCollectionInstance, field: 'amount', 'has-error')} required'>
            <label class='required'><g:message code="emsAdmissionFormFeeCollection.amount.label" default="Amount"/></label>
            <g:field type="number" name="amount" class="form-control" value="${emsAdmissionFormFeeCollectionInstance?.amount}" min="0" max="9999999" step="1.00" required="required"/>
            <g:renderErrors bean='emsAdmissionFormFeeCollectionInstance' field='amount'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: emsAdmissionFormFeeCollectionInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="emsAdmissionFormFeeCollection.remarks.label" default="Remarks"/></label>
            <g:textArea name="remarks" class="form-control" value="${emsAdmissionFormFeeCollectionInstance?.remarks}" rows="2" cols="40" maxlength="500"/>
            <g:renderErrors bean='emsAdmissionFormFeeCollectionInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsAdmissionFormFeeCollectionInstance, field: 'appDate', 'has-error')} required'>
            <label class='required'><g:message code="emsAdmissionFormFeeCollection.appDate.label" default="App Date"/></label>
            <g:textField name="appDate" class="form-control dtp-date" value="${emsAdmissionFormFeeCollectionInstance?.appDate?.format(grailsApplication.config.format.dtp.date)}" precision="day" required="required"/>
            <g:renderErrors bean='emsAdmissionFormFeeCollectionInstance' field='appDate'/>
        </div>
    </div>

</fieldset>
