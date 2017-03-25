<%@ page import="org.reflection.ems.EmsStaffAcademicSubject" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicSubjectInstance, field: 'emsStaffAcademic', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicSubject.emsStaffAcademic.label" default="Ems Staff Academic"/></label>
            <g:select name="emsStaffAcademic" class="form-control many-to-one" from="${org.reflection.ems.EmsStaffAcademic.list()}" value="${emsStaffAcademicSubjectInstance?.emsStaffAcademic?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicSubjectInstance' field='emsStaffAcademic'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicSubjectInstance, field: 'emsSubject', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicSubject.emsSubject.label" default="Ems Subject"/></label>
            <g:select name="emsSubject" class="form-control" from="${org.reflection.ems.EmsSubject?.values()}" keys="${org.reflection.ems.EmsSubject.values()*.name()}" value="${emsStaffAcademicSubjectInstance?.emsSubject?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicSubjectInstance' field='emsSubject'/>
        </div>
    </div>

</fieldset>
