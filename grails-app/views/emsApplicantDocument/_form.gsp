<%@ page import="org.reflection.ems.EmsApplicantDocument" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantDocumentInstance, field: 'emsApplicant', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicantDocument.emsApplicant.label" default="Ems Applicant"/></label>
            <g:select name="emsApplicant" class="form-control many-to-one" from="${org.reflection.ems.EmsApplicant.list()}" value="${emsApplicantDocumentInstance?.emsApplicant?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsApplicantDocumentInstance' field='emsApplicant'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantDocumentInstance, field: 'fileTitle', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicantDocument.fileTitle.label" default="File Title"/></label>
            <g:textField name="fileTitle" class="form-control" value="${emsApplicantDocumentInstance?.fileTitle}" required="required"/>
            <g:renderErrors bean='emsApplicantDocumentInstance' field='fileTitle'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantDocumentInstance, field: 'filePath', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicantDocument.filePath.label" default="File Path"/></label>
            <g:textField name="filePath" class="form-control" value="${emsApplicantDocumentInstance?.filePath}" required="required"/>
            <g:renderErrors bean='emsApplicantDocumentInstance' field='filePath'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantDocumentInstance, field: 'docType', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicantDocument.docType.label" default="Doc Type"/></label>
            <g:select name="docType" class="form-control" from="${org.reflection.ems.ApplicantDocType?.values()}" keys="${org.reflection.ems.ApplicantDocType.values()*.name()}" value="${emsApplicantDocumentInstance?.docType?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsApplicantDocumentInstance' field='docType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantDocumentInstance, field: 'isApproved', 'has-error')}'>
            <label><g:message code="emsApplicantDocument.isApproved.label" default="Is Approved"/></label>
            <g:checkBox class="cb" name="isApproved"  value="${emsApplicantDocumentInstance?.isApproved}" />
            <g:renderErrors bean='emsApplicantDocumentInstance' field='isApproved'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantDocumentInstance, field: 'shortOrder', 'has-error')}'>
            <label><g:message code="emsApplicantDocument.shortOrder.label" default="Short Order"/></label>
            <g:field type="number" name="shortOrder" class="form-control" value="${emsApplicantDocumentInstance?.shortOrder}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsApplicantDocumentInstance' field='shortOrder'/>
        </div>
    </div>

</fieldset>
