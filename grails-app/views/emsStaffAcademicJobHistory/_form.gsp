<%@ page import="org.reflection.ems.EmsStaffAcademicJobHistory" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistoryInstance, field: 'department', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicJobHistory.department.label" default="Department"/></label>
            <g:textField name="department" class="form-control" value="${emsStaffAcademicJobHistoryInstance?.department}" required="required"/>
            <g:renderErrors bean='emsStaffAcademicJobHistoryInstance' field='department'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistoryInstance, field: 'job', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicJobHistory.job.label" default="Job"/></label>
            <g:textField name="job" class="form-control" value="${emsStaffAcademicJobHistoryInstance?.job}" required="required"/>
            <g:renderErrors bean='emsStaffAcademicJobHistoryInstance' field='job'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistoryInstance, field: 'jobDuration', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicJobHistory.jobDuration.label" default="Job Duration"/></label>
            <g:textField name="jobDuration" class="form-control" value="${emsStaffAcademicJobHistoryInstance?.jobDuration}" required="required"/>
            <g:renderErrors bean='emsStaffAcademicJobHistoryInstance' field='jobDuration'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistoryInstance, field: 'organization', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicJobHistory.organization.label" default="Organization"/></label>
            <g:textField name="organization" class="form-control" value="${emsStaffAcademicJobHistoryInstance?.organization}" required="required"/>
            <g:renderErrors bean='emsStaffAcademicJobHistoryInstance' field='organization'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistoryInstance, field: 'reasonForLeave', 'has-error')}'>
            <label><g:message code="emsStaffAcademicJobHistory.reasonForLeave.label" default="Reason For Leave"/></label>
            <g:textField name="reasonForLeave" class="form-control" value="${emsStaffAcademicJobHistoryInstance?.reasonForLeave}"/>
            <g:renderErrors bean='emsStaffAcademicJobHistoryInstance' field='reasonForLeave'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistoryInstance, field: 'responsibility', 'has-error')}'>
            <label><g:message code="emsStaffAcademicJobHistory.responsibility.label" default="Responsibility"/></label>
            <g:textField name="responsibility" class="form-control" value="${emsStaffAcademicJobHistoryInstance?.responsibility}"/>
            <g:renderErrors bean='emsStaffAcademicJobHistoryInstance' field='responsibility'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistoryInstance, field: 'sortOrder', 'has-error')}'>
            <label><g:message code="emsStaffAcademicJobHistory.sortOrder.label" default="Sort Order"/></label>
            <g:field type="number" name="sortOrder" class="form-control" value="${emsStaffAcademicJobHistoryInstance?.sortOrder}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsStaffAcademicJobHistoryInstance' field='sortOrder'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistoryInstance, field: 'endDate', 'has-error')}'>
            <label><g:message code="emsStaffAcademicJobHistory.endDate.label" default="End Date"/></label>
            <g:textField name="endDate" class="form-control dtp-date" value="${emsStaffAcademicJobHistoryInstance?.endDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='emsStaffAcademicJobHistoryInstance' field='endDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistoryInstance, field: 'startDate', 'has-error')}'>
            <label><g:message code="emsStaffAcademicJobHistory.startDate.label" default="Start Date"/></label>
            <g:textField name="startDate" class="form-control dtp-date" value="${emsStaffAcademicJobHistoryInstance?.startDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='emsStaffAcademicJobHistoryInstance' field='startDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistoryInstance, field: 'emsStaffAcademic', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicJobHistory.emsStaffAcademic.label" default="Ems Staff Academic"/></label>
            <g:select name="emsStaffAcademic" class="form-control many-to-one" from="${org.reflection.ems.EmsStaffAcademic.list()}" value="${emsStaffAcademicJobHistoryInstance?.emsStaffAcademic?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicJobHistoryInstance' field='emsStaffAcademic'/>
        </div>
    </div>

</fieldset>
