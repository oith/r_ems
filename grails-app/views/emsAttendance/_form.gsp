<%@ page import="org.reflection.ems.EmsAttendance" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsAttendanceInstance, field: 'emsStudent', 'has-error')} required'>
            <label class='required'><g:message code="emsAttendance.emsStudent.label" default="Ems Student"/></label>
            <g:select name="emsStudent" class="form-control many-to-one" from="${org.reflection.ems.EmsStudent.list()}" value="${emsAttendanceInstance?.emsStudent?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsAttendanceInstance' field='emsStudent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsAttendanceInstance, field: 'emsAttnType', 'has-error')} required'>
            <label class='required'><g:message code="emsAttendance.emsAttnType.label" default="Ems Attn Type"/></label>
            <g:select name="emsAttnType" class="form-control" from="${org.reflection.ems.EmsAttnType?.values()}" keys="${org.reflection.ems.EmsAttnType.values()*.name()}" value="${emsAttendanceInstance?.emsAttnType?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsAttendanceInstance' field='emsAttnType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsAttendanceInstance, field: 'attnDate', 'has-error')} required'>
            <label class='required'><g:message code="emsAttendance.attnDate.label" default="Attn Date"/></label>
            <g:textField name="attnDate" class="form-control dtp-date" value="${emsAttendanceInstance?.attnDate?.format(grailsApplication.config.format.dtp.date)}" precision="day" required="required"/>
            <g:renderErrors bean='emsAttendanceInstance' field='attnDate'/>
        </div>
    </div>

</fieldset>
