<%@ page import="org.reflection.ems.EmsPreAdmission" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsPreAdmissionInstance, field: 'emsApplicant', 'has-error')} required'>
            <label class='required'><g:message code="emsPreAdmission.emsApplicant.label" default="Ems Applicant"/></label>
            <g:select name="emsApplicant" class="form-control many-to-one" from="${org.reflection.ems.EmsApplicant.list()}" value="${emsPreAdmissionInstance?.emsApplicant?.id}" optionKey="id" optionValue="fullName" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsPreAdmissionInstance' field='emsApplicant'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsPreAdmissionInstance, field: 'isAttachmentSubmitted', 'has-error')}'>
            <label><g:message code="emsPreAdmission.isAttachmentSubmitted.label" default="Is Attachment Submitted"/></label>
            <g:checkBox class="cb" name="isAttachmentSubmitted"  value="${emsPreAdmissionInstance?.isAttachmentSubmitted}" />
            <g:renderErrors bean='emsPreAdmissionInstance' field='isAttachmentSubmitted'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsPreAdmissionInstance, field: 'isPaymentComplete', 'has-error')}'>
            <label><g:message code="emsPreAdmission.isPaymentComplete.label" default="Is Payment Complete"/></label>
            <g:checkBox class="cb" name="isPaymentComplete"  value="${emsPreAdmissionInstance?.isPaymentComplete}" />
            <g:renderErrors bean='emsPreAdmissionInstance' field='isPaymentComplete'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsPreAdmissionInstance, field: 'isChecked', 'has-error')}'>
            <label><g:message code="emsPreAdmission.isChecked.label" default="Is Checked"/></label>
            <g:checkBox class="cb" name="isChecked"  value="${emsPreAdmissionInstance?.isChecked}" />
            <g:renderErrors bean='emsPreAdmissionInstance' field='isChecked'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsPreAdmissionInstance, field: 'isApproved', 'has-error')}'>
            <label><g:message code="emsPreAdmission.isApproved.label" default="Is Approved"/></label>
            <g:checkBox class="cb" name="isApproved"  value="${emsPreAdmissionInstance?.isApproved}" />
            <g:renderErrors bean='emsPreAdmissionInstance' field='isApproved'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsPreAdmissionInstance, field: 'applicationDate', 'has-error')} required'>
            <label class='required'><g:message code="emsPreAdmission.applicationDate.label" default="Application Date"/></label>
            <g:textField name="applicationDate" class="form-control dtp-date" value="${emsPreAdmissionInstance?.applicationDate?.format(grailsApplication.config.format.dtp.date)}" precision="day" required="required"/>
            <g:renderErrors bean='emsPreAdmissionInstance' field='applicationDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsPreAdmissionInstance, field: 'isPassedAtAdmissionTest', 'has-error')}'>
            <label><g:message code="emsPreAdmission.isPassedAtAdmissionTest.label" default="Is Passed At Admission Test"/></label>
            <g:checkBox class="cb" name="isPassedAtAdmissionTest"  value="${emsPreAdmissionInstance?.isPassedAtAdmissionTest}" />
            <g:renderErrors bean='emsPreAdmissionInstance' field='isPassedAtAdmissionTest'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsPreAdmissionInstance, field: 'testMarkVivaObtained', 'has-error')}'>
            <label><g:message code="emsPreAdmission.testMarkVivaObtained.label" default="Test Mark Viva Obtained"/></label>
            <g:field type="number" name="testMarkVivaObtained" class="form-control" value="${fieldValue(bean: emsPreAdmissionInstance, field: 'testMarkVivaObtained')}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsPreAdmissionInstance' field='testMarkVivaObtained'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsPreAdmissionInstance, field: 'testMarkWrittenObtained', 'has-error')}'>
            <label><g:message code="emsPreAdmission.testMarkWrittenObtained.label" default="Test Mark Written Obtained"/></label>
            <g:field type="number" name="testMarkWrittenObtained" class="form-control" value="${fieldValue(bean: emsPreAdmissionInstance, field: 'testMarkWrittenObtained')}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsPreAdmissionInstance' field='testMarkWrittenObtained'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsPreAdmissionInstance, field: 'testMarkMcqObtained', 'has-error')}'>
            <label><g:message code="emsPreAdmission.testMarkMcqObtained.label" default="Test Mark Mcq Obtained"/></label>
            <g:field type="number" name="testMarkMcqObtained" class="form-control" value="${fieldValue(bean: emsPreAdmissionInstance, field: 'testMarkMcqObtained')}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsPreAdmissionInstance' field='testMarkMcqObtained'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsPreAdmissionInstance, field: 'testMarkVivaTotal', 'has-error')}'>
            <label><g:message code="emsPreAdmission.testMarkVivaTotal.label" default="Test Mark Viva Total"/></label>
            <g:field type="number" name="testMarkVivaTotal" class="form-control" value="${emsPreAdmissionInstance?.testMarkVivaTotal}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsPreAdmissionInstance' field='testMarkVivaTotal'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsPreAdmissionInstance, field: 'testMarkWrittenTotal', 'has-error')}'>
            <label><g:message code="emsPreAdmission.testMarkWrittenTotal.label" default="Test Mark Written Total"/></label>
            <g:field type="number" name="testMarkWrittenTotal" class="form-control" value="${emsPreAdmissionInstance?.testMarkWrittenTotal}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsPreAdmissionInstance' field='testMarkWrittenTotal'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsPreAdmissionInstance, field: 'testMarkMcqTotal', 'has-error')}'>
            <label><g:message code="emsPreAdmission.testMarkMcqTotal.label" default="Test Mark Mcq Total"/></label>
            <g:field type="number" name="testMarkMcqTotal" class="form-control" value="${emsPreAdmissionInstance?.testMarkMcqTotal}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsPreAdmissionInstance' field='testMarkMcqTotal'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsPreAdmissionInstance, field: 'isReferredBy', 'has-error')}'>
            <label><g:message code="emsPreAdmission.isReferredBy.label" default="Is Referred By"/></label>
            <g:checkBox class="cb" name="isReferredBy"  value="${emsPreAdmissionInstance?.isReferredBy}" />
            <g:renderErrors bean='emsPreAdmissionInstance' field='isReferredBy'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsPreAdmissionInstance, field: 'referredByInfo', 'has-error')}'>
            <label><g:message code="emsPreAdmission.referredByInfo.label" default="Referred By Info"/></label>
            <g:textField name="referredByInfo" class="form-control" value="${emsPreAdmissionInstance?.referredByInfo}"/>
            <g:renderErrors bean='emsPreAdmissionInstance' field='referredByInfo'/>
        </div>
    </div>

</fieldset>
