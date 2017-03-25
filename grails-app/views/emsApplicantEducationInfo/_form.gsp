<%@ page import="org.reflection.ems.EmsApplicantEducationInfo" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'emsApplicant', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicantEducationInfo.emsApplicant.label" default="Ems Applicant"/></label>
            <g:select name="emsApplicant" class="form-control many-to-one" from="${org.reflection.ems.EmsApplicant.list()}" value="${emsApplicantEducationInfoInstance?.emsApplicant?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsApplicantEducationInfoInstance' field='emsApplicant'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'emsClass', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicantEducationInfo.emsClass.label" default="Ems Class"/></label>
            <g:select name="emsClass" class="form-control" from="${org.reflection.ems.EmsClass?.values()}" keys="${org.reflection.ems.EmsClass.values()*.name()}" value="${emsApplicantEducationInfoInstance?.emsClass?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsApplicantEducationInfoInstance' field='emsClass'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'titleOfInstitute', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicantEducationInfo.titleOfInstitute.label" default="Title Of Institute"/></label>
            <g:textField name="titleOfInstitute" class="form-control" value="${emsApplicantEducationInfoInstance?.titleOfInstitute}" required="required"/>
            <g:renderErrors bean='emsApplicantEducationInfoInstance' field='titleOfInstitute'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'passingYear', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicantEducationInfo.passingYear.label" default="Passing Year"/></label>
            <g:field type="number" name="passingYear" class="form-control" value="${emsApplicantEducationInfoInstance?.passingYear}" min="0" max="9999999" step="1.00" required="required"/>
            <g:renderErrors bean='emsApplicantEducationInfoInstance' field='passingYear'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'result', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicantEducationInfo.result.label" default="Result"/></label>
            <g:field type="number" name="result" class="form-control" value="${emsApplicantEducationInfoInstance?.result}" min="0" max="9999999" step="1.00" required="required"/>
            <g:renderErrors bean='emsApplicantEducationInfoInstance' field='result'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'resultOutOf', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicantEducationInfo.resultOutOf.label" default="Result Out Of"/></label>
            <g:field type="number" name="resultOutOf" class="form-control" value="${emsApplicantEducationInfoInstance?.resultOutOf}" min="0" max="9999999" step="1.00" required="required"/>
            <g:renderErrors bean='emsApplicantEducationInfoInstance' field='resultOutOf'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'emsEducationBoard', 'has-error')}'>
            <label><g:message code="emsApplicantEducationInfo.emsEducationBoard.label" default="Ems Education Board"/></label>
            <g:select name="emsEducationBoard" class="form-control" from="${org.reflection.ems.EmsEducationBoard?.values()}" keys="${org.reflection.ems.EmsEducationBoard.values()*.name()}" value="${emsApplicantEducationInfoInstance?.emsEducationBoard?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsApplicantEducationInfoInstance' field='emsEducationBoard'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'emsGroup', 'has-error')}'>
            <label><g:message code="emsApplicantEducationInfo.emsGroup.label" default="Ems Group"/></label>
            <g:select name="emsGroup" class="form-control" from="${org.reflection.ems.EmsGroup?.values()}" keys="${org.reflection.ems.EmsGroup.values()*.name()}" value="${emsApplicantEducationInfoInstance?.emsGroup?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsApplicantEducationInfoInstance' field='emsGroup'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'sortOrder', 'has-error')}'>
            <label><g:message code="emsApplicantEducationInfo.sortOrder.label" default="Sort Order"/></label>
            <g:field type="number" name="sortOrder" class="form-control" value="${emsApplicantEducationInfoInstance?.sortOrder}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsApplicantEducationInfoInstance' field='sortOrder'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantEducationInfoInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="emsApplicantEducationInfo.remarks.label" default="Remarks"/></label>
            <g:textField name="remarks" class="form-control" value="${emsApplicantEducationInfoInstance?.remarks}"/>
            <g:renderErrors bean='emsApplicantEducationInfoInstance' field='remarks'/>
        </div>
    </div>

</fieldset>
