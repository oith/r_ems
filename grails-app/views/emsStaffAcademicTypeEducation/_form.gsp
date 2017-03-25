<%@ page import="org.reflection.ems.EmsStaffAcademicTypeEducation" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicTypeEducationInstance, field: 'emsStaffAcademic', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicTypeEducation.emsStaffAcademic.label" default="Ems Staff Academic"/></label>
            <g:select name="emsStaffAcademic" class="form-control many-to-one" from="${org.reflection.ems.EmsStaffAcademic.list()}" value="${emsStaffAcademicTypeEducationInstance?.emsStaffAcademic?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicTypeEducationInstance' field='emsStaffAcademic'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicTypeEducationInstance, field: 'emsTypeEducation', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicTypeEducation.emsTypeEducation.label" default="Ems Type Education"/></label>
            <g:select name="emsTypeEducation" class="form-control" from="${org.reflection.ems.EmsTypeEducation?.values()}" keys="${org.reflection.ems.EmsTypeEducation.values()*.name()}" value="${emsStaffAcademicTypeEducationInstance?.emsTypeEducation?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicTypeEducationInstance' field='emsTypeEducation'/>
        </div>
    </div>

</fieldset>
