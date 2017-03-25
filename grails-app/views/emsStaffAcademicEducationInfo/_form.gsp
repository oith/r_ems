<%@ page import="org.reflection.ems.EmsStaffAcademicEducationInfo" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfoInstance, field: 'comLookupEduSubGroup', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicEducationInfo.comLookupEduSubGroup.label" default="Com Lookup Edu Sub Group"/></label>
            <g:select name="comLookupEduSubGroup" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${emsStaffAcademicEducationInfoInstance?.comLookupEduSubGroup?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicEducationInfoInstance' field='comLookupEduSubGroup'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfoInstance, field: 'comLookupEducation', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicEducationInfo.comLookupEducation.label" default="Com Lookup Education"/></label>
            <g:select name="comLookupEducation" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${emsStaffAcademicEducationInfoInstance?.comLookupEducation?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicEducationInfoInstance' field='comLookupEducation'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfoInstance, field: 'organization', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicEducationInfo.organization.label" default="Organization"/></label>
            <g:textField name="organization" class="form-control" value="${emsStaffAcademicEducationInfoInstance?.organization}" required="required"/>
            <g:renderErrors bean='emsStaffAcademicEducationInfoInstance' field='organization'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfoInstance, field: 'result', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicEducationInfo.result.label" default="Result"/></label>
            <g:textField name="result" class="form-control" value="${emsStaffAcademicEducationInfoInstance?.result}" required="required"/>
            <g:renderErrors bean='emsStaffAcademicEducationInfoInstance' field='result'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfoInstance, field: 'resultOutOf', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicEducationInfo.resultOutOf.label" default="Result Out Of"/></label>
            <g:textField name="resultOutOf" class="form-control" value="${emsStaffAcademicEducationInfoInstance?.resultOutOf}" required="required"/>
            <g:renderErrors bean='emsStaffAcademicEducationInfoInstance' field='resultOutOf'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfoInstance, field: 'passingYear', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicEducationInfo.passingYear.label" default="Passing Year"/></label>
            <g:field type="number" name="passingYear" class="form-control" value="${emsStaffAcademicEducationInfoInstance?.passingYear}" min="0" max="9999999" step="1.00" required="required"/>
            <g:renderErrors bean='emsStaffAcademicEducationInfoInstance' field='passingYear'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfoInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="emsStaffAcademicEducationInfo.remarks.label" default="Remarks"/></label>
            <g:textField name="remarks" class="form-control" value="${emsStaffAcademicEducationInfoInstance?.remarks}"/>
            <g:renderErrors bean='emsStaffAcademicEducationInfoInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfoInstance, field: 'slNo', 'has-error')}'>
            <label><g:message code="emsStaffAcademicEducationInfo.slNo.label" default="Sl No"/></label>
            <g:field type="number" name="slNo" class="form-control" value="${emsStaffAcademicEducationInfoInstance?.slNo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsStaffAcademicEducationInfoInstance' field='slNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfoInstance, field: 'yearFrom', 'has-error')}'>
            <label><g:message code="emsStaffAcademicEducationInfo.yearFrom.label" default="Year From"/></label>
            <g:field type="number" name="yearFrom" class="form-control" value="${emsStaffAcademicEducationInfoInstance?.yearFrom}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsStaffAcademicEducationInfoInstance' field='yearFrom'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfoInstance, field: 'yearTo', 'has-error')}'>
            <label><g:message code="emsStaffAcademicEducationInfo.yearTo.label" default="Year To"/></label>
            <g:field type="number" name="yearTo" class="form-control" value="${emsStaffAcademicEducationInfoInstance?.yearTo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsStaffAcademicEducationInfoInstance' field='yearTo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfoInstance, field: 'emsStaffAcademic', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicEducationInfo.emsStaffAcademic.label" default="Ems Staff Academic"/></label>
            <g:select name="emsStaffAcademic" class="form-control many-to-one" from="${org.reflection.ems.EmsStaffAcademic.list()}" value="${emsStaffAcademicEducationInfoInstance?.emsStaffAcademic?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicEducationInfoInstance' field='emsStaffAcademic'/>
        </div>
    </div>

</fieldset>
