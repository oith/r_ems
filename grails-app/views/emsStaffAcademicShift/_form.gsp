<%@ page import="org.reflection.ems.EmsStaffAcademicShift" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicShiftInstance, field: 'emsStaffAcademic', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicShift.emsStaffAcademic.label" default="Ems Staff Academic"/></label>
            <g:select name="emsStaffAcademic" class="form-control many-to-one" from="${org.reflection.ems.EmsStaffAcademic.list()}" value="${emsStaffAcademicShiftInstance?.emsStaffAcademic?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicShiftInstance' field='emsStaffAcademic'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicShiftInstance, field: 'emsShift', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicShift.emsShift.label" default="Ems Shift"/></label>
            <g:select name="emsShift" class="form-control" from="${org.reflection.ems.EmsShift?.values()}" keys="${org.reflection.ems.EmsShift.values()*.name()}" value="${emsStaffAcademicShiftInstance?.emsShift?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicShiftInstance' field='emsShift'/>
        </div>
    </div>

</fieldset>
