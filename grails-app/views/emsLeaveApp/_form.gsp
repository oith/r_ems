<%@ page import="org.reflection.ems.EmsLeaveApp" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsLeaveAppInstance, field: 'emsStudent', 'has-error')} required'>
            <label class='required'><g:message code="emsLeaveApp.emsStudent.label" default="Ems Student"/></label>
            <g:select name="emsStudent" class="form-control many-to-one" from="${org.reflection.ems.EmsStudent.list()}" value="${emsLeaveAppInstance?.emsStudent?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsLeaveAppInstance' field='emsStudent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsLeaveAppInstance, field: 'reason', 'has-error')} required'>
            <label class='required'><g:message code="emsLeaveApp.reason.label" default="Reason"/></label>
            <g:textField name="reason" class="form-control" value="${emsLeaveAppInstance?.reason}" required="required"/>
            <g:renderErrors bean='emsLeaveAppInstance' field='reason'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsLeaveAppInstance, field: 'startDate', 'has-error')} required'>
            <label class='required'><g:message code="emsLeaveApp.startDate.label" default="Start Date"/></label>
            <g:textField name="startDate" class="form-control dtp-date" value="${emsLeaveAppInstance?.startDate?.format(grailsApplication.config.format.dtp.date)}" precision="day" required="required"/>
            <g:renderErrors bean='emsLeaveAppInstance' field='startDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsLeaveAppInstance, field: 'endDate', 'has-error')} required'>
            <label class='required'><g:message code="emsLeaveApp.endDate.label" default="End Date"/></label>
            <g:textField name="endDate" class="form-control dtp-date" value="${emsLeaveAppInstance?.endDate?.format(grailsApplication.config.format.dtp.date)}" precision="day" required="required"/>
            <g:renderErrors bean='emsLeaveAppInstance' field='endDate'/>
        </div>
    </div>

</fieldset>
