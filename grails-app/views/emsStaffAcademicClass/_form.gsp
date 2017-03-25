<%@ page import="org.reflection.ems.EmsStaffAcademicClass" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicClassInstance, field: 'emsStaffAcademic', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicClass.emsStaffAcademic.label" default="Ems Staff Academic"/></label>
            <g:select name="emsStaffAcademic" class="form-control many-to-one" from="${org.reflection.ems.EmsStaffAcademic.list()}" value="${emsStaffAcademicClassInstance?.emsStaffAcademic?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicClassInstance' field='emsStaffAcademic'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicClassInstance, field: 'emsClass', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicClass.emsClass.label" default="Ems Class"/></label>
            <g:select name="emsClass" class="form-control" from="${org.reflection.ems.EmsClass?.values()}" keys="${org.reflection.ems.EmsClass.values()*.name()}" value="${emsStaffAcademicClassInstance?.emsClass?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicClassInstance' field='emsClass'/>
        </div>
    </div>

</fieldset>
