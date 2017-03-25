<%@ page import="org.reflection.ems.EmsGuardianEducationInfo" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianEducationInfoInstance, field: 'comLookupEduSubGroup', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardianEducationInfo.comLookupEduSubGroup.label" default="Com Lookup Edu Sub Group"/></label>
            <g:select name="comLookupEduSubGroup" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${emsGuardianEducationInfoInstance?.comLookupEduSubGroup?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsGuardianEducationInfoInstance' field='comLookupEduSubGroup'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianEducationInfoInstance, field: 'comLookupEducation', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardianEducationInfo.comLookupEducation.label" default="Com Lookup Education"/></label>
            <g:select name="comLookupEducation" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${emsGuardianEducationInfoInstance?.comLookupEducation?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsGuardianEducationInfoInstance' field='comLookupEducation'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianEducationInfoInstance, field: 'organization', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardianEducationInfo.organization.label" default="Organization"/></label>
            <g:textField name="organization" class="form-control" value="${emsGuardianEducationInfoInstance?.organization}" required="required"/>
            <g:renderErrors bean='emsGuardianEducationInfoInstance' field='organization'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianEducationInfoInstance, field: 'result', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardianEducationInfo.result.label" default="Result"/></label>
            <g:textField name="result" class="form-control" value="${emsGuardianEducationInfoInstance?.result}" required="required"/>
            <g:renderErrors bean='emsGuardianEducationInfoInstance' field='result'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianEducationInfoInstance, field: 'resultOutOf', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardianEducationInfo.resultOutOf.label" default="Result Out Of"/></label>
            <g:textField name="resultOutOf" class="form-control" value="${emsGuardianEducationInfoInstance?.resultOutOf}" required="required"/>
            <g:renderErrors bean='emsGuardianEducationInfoInstance' field='resultOutOf'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianEducationInfoInstance, field: 'passingYear', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardianEducationInfo.passingYear.label" default="Passing Year"/></label>
            <g:field type="number" name="passingYear" class="form-control" value="${emsGuardianEducationInfoInstance?.passingYear}" min="0" max="9999999" step="1.00" required="required"/>
            <g:renderErrors bean='emsGuardianEducationInfoInstance' field='passingYear'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianEducationInfoInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="emsGuardianEducationInfo.remarks.label" default="Remarks"/></label>
            <g:textField name="remarks" class="form-control" value="${emsGuardianEducationInfoInstance?.remarks}"/>
            <g:renderErrors bean='emsGuardianEducationInfoInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianEducationInfoInstance, field: 'slNo', 'has-error')}'>
            <label><g:message code="emsGuardianEducationInfo.slNo.label" default="Sl No"/></label>
            <g:field type="number" name="slNo" class="form-control" value="${emsGuardianEducationInfoInstance?.slNo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsGuardianEducationInfoInstance' field='slNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianEducationInfoInstance, field: 'yearFrom', 'has-error')}'>
            <label><g:message code="emsGuardianEducationInfo.yearFrom.label" default="Year From"/></label>
            <g:field type="number" name="yearFrom" class="form-control" value="${emsGuardianEducationInfoInstance?.yearFrom}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsGuardianEducationInfoInstance' field='yearFrom'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianEducationInfoInstance, field: 'yearTo', 'has-error')}'>
            <label><g:message code="emsGuardianEducationInfo.yearTo.label" default="Year To"/></label>
            <g:field type="number" name="yearTo" class="form-control" value="${emsGuardianEducationInfoInstance?.yearTo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsGuardianEducationInfoInstance' field='yearTo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianEducationInfoInstance, field: 'emsGuardian', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardianEducationInfo.emsGuardian.label" default="Ems Guardian"/></label>
            <g:select name="emsGuardian" class="form-control many-to-one" from="${org.reflection.ems.EmsGuardian.list()}" value="${emsGuardianEducationInfoInstance?.emsGuardian?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsGuardianEducationInfoInstance' field='emsGuardian'/>
        </div>
    </div>

</fieldset>
