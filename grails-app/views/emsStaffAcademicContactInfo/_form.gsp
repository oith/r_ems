<%@ page import="org.reflection.ems.EmsStaffAcademicContactInfo" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactInfoInstance, field: 'comContactType', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicContactInfo.comContactType.label" default="Com Contact Type"/></label>
            <g:select name="comContactType" class="form-control" from="${org.reflection.com.ComContactType?.values()}" keys="${org.reflection.com.ComContactType.values()*.name()}" value="${emsStaffAcademicContactInfoInstance?.comContactType?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicContactInfoInstance' field='comContactType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactInfoInstance, field: 'contactValue', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicContactInfo.contactValue.label" default="Contact Value"/></label>
            <g:textField name="contactValue" class="form-control" value="${emsStaffAcademicContactInfoInstance?.contactValue}" required="required"/>
            <g:renderErrors bean='emsStaffAcademicContactInfoInstance' field='contactValue'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactInfoInstance, field: 'slNo', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactInfo.slNo.label" default="Sl No"/></label>
            <g:field type="number" name="slNo" class="form-control" value="${emsStaffAcademicContactInfoInstance?.slNo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsStaffAcademicContactInfoInstance' field='slNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactInfoInstance, field: 'imeiNo', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactInfo.imeiNo.label" default="Imei No"/></label>
            <g:textField name="imeiNo" class="form-control" value="${emsStaffAcademicContactInfoInstance?.imeiNo}"/>
            <g:renderErrors bean='emsStaffAcademicContactInfoInstance' field='imeiNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactInfoInstance, field: 'emsStaffAcademic', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicContactInfo.emsStaffAcademic.label" default="Ems Staff Academic"/></label>
            <g:select name="emsStaffAcademic" class="form-control many-to-one" from="${org.reflection.ems.EmsStaffAcademic.list()}" value="${emsStaffAcademicContactInfoInstance?.emsStaffAcademic?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicContactInfoInstance' field='emsStaffAcademic'/>
        </div>
    </div>

</fieldset>
