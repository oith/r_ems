<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsApplicantDocument.pageTitle.label', default: 'Ems Applicant Document Details')}
    </legend>
    <g:each in="${emsApplicantDocumentList ?: new org.reflection.ems.EmsApplicantDocument()}" status="i" var="emsApplicantDocumentInstance">
        <div class='box box-info emsApplicantDocumentDetails'>
            <div class='box-body'>

                <g:hiddenField name="emsApplicantDocument[${i}].id" value="${emsApplicantDocumentInstance?.id}"/>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantDocumentInstance, field: 'fileTitle', 'has-error')} required'>
                        <label class='required'><g:message code="emsApplicantDocument.fileTitle.label" default="File Title"/></label>
                        <g:textField name="emsApplicantDocument[${i}].fileTitle" class="form-control" value="${emsApplicantDocumentInstance?.fileTitle}" required="required"/>
                        <g:renderErrors bean='emsApplicantDocumentInstance' field='fileTitle'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantDocumentInstance, field: 'filePath', 'has-error')} required'>
                        <label class='required'><g:message code="emsApplicantDocument.filePath.label" default="File Path"/></label>
                        <g:textField name="emsApplicantDocument[${i}].filePath" class="form-control" value="${emsApplicantDocumentInstance?.filePath}" required="required"/>
                        <g:renderErrors bean='emsApplicantDocumentInstance' field='filePath'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantDocumentInstance, field: 'docType', 'has-error')} required'>
                        <label class='required'><g:message code="emsApplicantDocument.docType.label" default="Doc Type"/></label>
                        <g:select name="emsApplicantDocument[${i}].docType" class="form-control" from="${org.reflection.ems.ApplicantDocType?.values()}" keys="${org.reflection.ems.ApplicantDocType.values()*.name()}" value="${emsApplicantDocumentInstance?.docType?.name()}"  noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsApplicantDocumentInstance' field='docType'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantDocumentInstance, field: 'isApproved', 'has-error')}'>
                        <label><g:message code="emsApplicantDocument.isApproved.label" default="Is Approved"/></label>
                        <g:checkBox class="cb" name="emsApplicantDocument[${i}].isApproved"  value="${emsApplicantDocumentInstance?.isApproved}" />
                        <g:renderErrors bean='emsApplicantDocumentInstance' field='isApproved'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantDocumentInstance, field: 'shortOrder', 'has-error')}'>
                        <label><g:message code="emsApplicantDocument.shortOrder.label" default="Short Order"/></label>
                        <g:field type="number" name="emsApplicantDocument[${i}].shortOrder" class="form-control" value="${emsApplicantDocumentInstance?.shortOrder}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsApplicantDocumentInstance' field='shortOrder'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsApplicantDocumentDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>