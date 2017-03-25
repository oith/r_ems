<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsApplicantEducationInfo.pageTitle.label', default: 'Ems Applicant Education Info Details')}
    </legend>
    <g:each in="${emsApplicantEducationInfoList ?: new org.reflection.ems.EmsApplicantEducationInfo()}" status="i" var="emsApplicantEducationInfoInstance">
        <div class='box box-info emsApplicantEducationInfoDetails'>
            <div class='box-body'>

                <g:hiddenField name="emsApplicantEducationInfo[${i}].id" value="${emsApplicantEducationInfoInstance?.id}"/>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'emsClass', 'has-error')} required'>
                        <label class='required'><g:message code="emsApplicantEducationInfo.emsClass.label" default="Ems Class"/></label>
                        <g:select name="emsApplicantEducationInfo[${i}].emsClass" class="form-control" from="${org.reflection.ems.EmsClass?.values()}" keys="${org.reflection.ems.EmsClass.values()*.name()}" value="${emsApplicantEducationInfoInstance?.emsClass?.name()}"  noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsApplicantEducationInfoInstance' field='emsClass'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'titleOfInstitute', 'has-error')} required'>
                        <label class='required'><g:message code="emsApplicantEducationInfo.titleOfInstitute.label" default="Title Of Institute"/></label>
                        <g:textField name="emsApplicantEducationInfo[${i}].titleOfInstitute" class="form-control" value="${emsApplicantEducationInfoInstance?.titleOfInstitute}" required="required"/>
                        <g:renderErrors bean='emsApplicantEducationInfoInstance' field='titleOfInstitute'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'passingYear', 'has-error')} required'>
                        <label class='required'><g:message code="emsApplicantEducationInfo.passingYear.label" default="Passing Year"/></label>
                        <g:field type="number" name="emsApplicantEducationInfo[${i}].passingYear" class="form-control" value="${emsApplicantEducationInfoInstance?.passingYear}" min="0" max="9999999" step="1.00" required="required"/>
                        <g:renderErrors bean='emsApplicantEducationInfoInstance' field='passingYear'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'result', 'has-error')} required'>
                        <label class='required'><g:message code="emsApplicantEducationInfo.result.label" default="Result"/></label>
                        <g:field type="number" name="emsApplicantEducationInfo[${i}].result" class="form-control" value="${emsApplicantEducationInfoInstance?.result}" min="0" max="9999999" step="1.00" required="required"/>
                        <g:renderErrors bean='emsApplicantEducationInfoInstance' field='result'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'resultOutOf', 'has-error')} required'>
                        <label class='required'><g:message code="emsApplicantEducationInfo.resultOutOf.label" default="Result Out Of"/></label>
                        <g:field type="number" name="emsApplicantEducationInfo[${i}].resultOutOf" class="form-control" value="${emsApplicantEducationInfoInstance?.resultOutOf}" min="0" max="9999999" step="1.00" required="required"/>
                        <g:renderErrors bean='emsApplicantEducationInfoInstance' field='resultOutOf'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'emsEducationBoard', 'has-error')}'>
                        <label><g:message code="emsApplicantEducationInfo.emsEducationBoard.label" default="Ems Education Board"/></label>
                        <g:select name="emsApplicantEducationInfo[${i}].emsEducationBoard" class="form-control" from="${org.reflection.ems.EmsEducationBoard?.values()}" keys="${org.reflection.ems.EmsEducationBoard.values()*.name()}" value="${emsApplicantEducationInfoInstance?.emsEducationBoard?.name()}"  noSelection="['': 'Select One']"/>
                        <g:renderErrors bean='emsApplicantEducationInfoInstance' field='emsEducationBoard'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'emsGroup', 'has-error')}'>
                        <label><g:message code="emsApplicantEducationInfo.emsGroup.label" default="Ems Group"/></label>
                        <g:select name="emsApplicantEducationInfo[${i}].emsGroup" class="form-control" from="${org.reflection.ems.EmsGroup?.values()}" keys="${org.reflection.ems.EmsGroup.values()*.name()}" value="${emsApplicantEducationInfoInstance?.emsGroup?.name()}"  noSelection="['': 'Select One']"/>
                        <g:renderErrors bean='emsApplicantEducationInfoInstance' field='emsGroup'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'sortOrder', 'has-error')}'>
                        <label><g:message code="emsApplicantEducationInfo.sortOrder.label" default="Sort Order"/></label>
                        <g:field type="number" name="emsApplicantEducationInfo[${i}].sortOrder" class="form-control" value="${emsApplicantEducationInfoInstance?.sortOrder}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsApplicantEducationInfoInstance' field='sortOrder'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'remarks', 'has-error')}'>
                        <label><g:message code="emsApplicantEducationInfo.remarks.label" default="Remarks"/></label>
                        <g:textField name="emsApplicantEducationInfo[${i}].remarks" class="form-control" value="${emsApplicantEducationInfoInstance?.remarks}"/>
                        <g:renderErrors bean='emsApplicantEducationInfoInstance' field='remarks'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsApplicantEducationInfoDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>