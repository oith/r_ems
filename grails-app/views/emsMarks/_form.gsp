<%@ page import="org.reflection.ems.EmsMarks" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsMarksInstance, field: 'emsStaffAcademic', 'has-error')} required'>
            <label class='required'><g:message code="emsMarks.emsStaffAcademic.label" default="Ems Staff Academic"/></label>
            <g:select name="emsStaffAcademic" class="form-control many-to-one" from="${org.reflection.ems.EmsStaffAcademic.list()}" value="${emsMarksInstance?.emsStaffAcademic?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsMarksInstance' field='emsStaffAcademic'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsMarksInstance, field: 'emsClass', 'has-error')} required'>
            <label class='required'><g:message code="emsMarks.emsClass.label" default="Ems Class"/></label>
            <g:select name="emsClass" class="form-control" from="${org.reflection.ems.EmsClass?.values()}" keys="${org.reflection.ems.EmsClass.values()*.name()}" value="${emsMarksInstance?.emsClass?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsMarksInstance' field='emsClass'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsMarksInstance, field: 'emsStudent', 'has-error')} required'>
            <label class='required'><g:message code="emsMarks.emsStudent.label" default="Ems Student"/></label>
            <g:select name="emsStudent" class="form-control many-to-one" from="${org.reflection.ems.EmsStudent.list()}" value="${emsMarksInstance?.emsStudent?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsMarksInstance' field='emsStudent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsMarksInstance, field: 'emsSubject', 'has-error')} required'>
            <label class='required'><g:message code="emsMarks.emsSubject.label" default="Ems Subject"/></label>
            <g:select name="emsSubject" class="form-control" from="${org.reflection.ems.EmsSubject?.values()}" keys="${org.reflection.ems.EmsSubject.values()*.name()}" value="${emsMarksInstance?.emsSubject?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsMarksInstance' field='emsSubject'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsMarksInstance, field: 'emsTypeExam', 'has-error')} required'>
            <label class='required'><g:message code="emsMarks.emsTypeExam.label" default="Ems Type Exam"/></label>
            <g:select name="emsTypeExam" class="form-control" from="${org.reflection.ems.EmsTypeExam?.values()}" keys="${org.reflection.ems.EmsTypeExam.values()*.name()}" value="${emsMarksInstance?.emsTypeExam?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsMarksInstance' field='emsTypeExam'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsMarksInstance, field: 'emsYear', 'has-error')} required'>
            <label class='required'><g:message code="emsMarks.emsYear.label" default="Ems Year"/></label>
            <g:select name="emsYear" class="form-control" from="${org.reflection.ems.EmsYear?.values()}" keys="${org.reflection.ems.EmsYear.values()*.name()}" value="${emsMarksInstance?.emsYear?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsMarksInstance' field='emsYear'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsMarksInstance, field: 'marks', 'has-error')} required'>
            <label class='required'><g:message code="emsMarks.marks.label" default="Marks"/></label>
            <g:field type="number" name="marks" class="form-control" value="${fieldValue(bean: emsMarksInstance, field: 'marks')}" min="0" max="9999999" step="1.00" required="required"/>
            <g:renderErrors bean='emsMarksInstance' field='marks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsMarksInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="emsMarks.remarks.label" default="Remarks"/></label>
            <g:textField name="remarks" class="form-control" value="${emsMarksInstance?.remarks}"/>
            <g:renderErrors bean='emsMarksInstance' field='remarks'/>
        </div>
    </div>

</fieldset>
