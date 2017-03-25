<%@ page import="org.reflection.com.ComEducationInfo" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comEducationInfoInstance, field: 'comLookupEduSubGroup', 'has-error')} required'>
            <label class='required'><g:message code="comEducationInfo.comLookupEduSubGroup.label" default="Com Lookup Edu Sub Group"/></label>
            <g:select name="comLookupEduSubGroup" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${comEducationInfoInstance?.comLookupEduSubGroup?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='comEducationInfoInstance' field='comLookupEduSubGroup'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comEducationInfoInstance, field: 'comLookupEducation', 'has-error')} required'>
            <label class='required'><g:message code="comEducationInfo.comLookupEducation.label" default="Com Lookup Education"/></label>
            <g:select name="comLookupEducation" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${comEducationInfoInstance?.comLookupEducation?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='comEducationInfoInstance' field='comLookupEducation'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comEducationInfoInstance, field: 'organization', 'has-error')} required'>
            <label class='required'><g:message code="comEducationInfo.organization.label" default="Organization"/></label>
            <g:textField name="organization" class="form-control" value="${comEducationInfoInstance?.organization}" required="required"/>
            <g:renderErrors bean='comEducationInfoInstance' field='organization'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comEducationInfoInstance, field: 'result', 'has-error')} required'>
            <label class='required'><g:message code="comEducationInfo.result.label" default="Result"/></label>
            <g:textField name="result" class="form-control" value="${comEducationInfoInstance?.result}" required="required"/>
            <g:renderErrors bean='comEducationInfoInstance' field='result'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comEducationInfoInstance, field: 'resultOutOf', 'has-error')} required'>
            <label class='required'><g:message code="comEducationInfo.resultOutOf.label" default="Result Out Of"/></label>
            <g:textField name="resultOutOf" class="form-control" value="${comEducationInfoInstance?.resultOutOf}" required="required"/>
            <g:renderErrors bean='comEducationInfoInstance' field='resultOutOf'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comEducationInfoInstance, field: 'passingYear', 'has-error')} required'>
            <label class='required'><g:message code="comEducationInfo.passingYear.label" default="Passing Year"/></label>
            <g:field type="number" name="passingYear" class="form-control" value="${comEducationInfoInstance?.passingYear}" min="0" max="9999999" step="1.00" required="required"/>
            <g:renderErrors bean='comEducationInfoInstance' field='passingYear'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comEducationInfoInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="comEducationInfo.remarks.label" default="Remarks"/></label>
            <g:textField name="remarks" class="form-control" value="${comEducationInfoInstance?.remarks}"/>
            <g:renderErrors bean='comEducationInfoInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comEducationInfoInstance, field: 'slNo', 'has-error')}'>
            <label><g:message code="comEducationInfo.slNo.label" default="Sl No"/></label>
            <g:field type="number" name="slNo" class="form-control" value="${comEducationInfoInstance?.slNo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comEducationInfoInstance' field='slNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comEducationInfoInstance, field: 'yearFrom', 'has-error')}'>
            <label><g:message code="comEducationInfo.yearFrom.label" default="Year From"/></label>
            <g:field type="number" name="yearFrom" class="form-control" value="${comEducationInfoInstance?.yearFrom}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comEducationInfoInstance' field='yearFrom'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comEducationInfoInstance, field: 'yearTo', 'has-error')}'>
            <label><g:message code="comEducationInfo.yearTo.label" default="Year To"/></label>
            <g:field type="number" name="yearTo" class="form-control" value="${comEducationInfoInstance?.yearTo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comEducationInfoInstance' field='yearTo'/>
        </div>
    </div>

</fieldset>
