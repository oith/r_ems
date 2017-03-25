<%@ page import="org.reflection.com.ComJobHistory" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comJobHistoryInstance, field: 'department', 'has-error')} required'>
            <label class='required'><g:message code="comJobHistory.department.label" default="Department"/></label>
            <g:textField name="department" class="form-control" value="${comJobHistoryInstance?.department}" required="required"/>
            <g:renderErrors bean='comJobHistoryInstance' field='department'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comJobHistoryInstance, field: 'job', 'has-error')} required'>
            <label class='required'><g:message code="comJobHistory.job.label" default="Job"/></label>
            <g:textField name="job" class="form-control" value="${comJobHistoryInstance?.job}" required="required"/>
            <g:renderErrors bean='comJobHistoryInstance' field='job'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comJobHistoryInstance, field: 'jobDuration', 'has-error')} required'>
            <label class='required'><g:message code="comJobHistory.jobDuration.label" default="Job Duration"/></label>
            <g:textField name="jobDuration" class="form-control" value="${comJobHistoryInstance?.jobDuration}" required="required"/>
            <g:renderErrors bean='comJobHistoryInstance' field='jobDuration'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comJobHistoryInstance, field: 'organization', 'has-error')} required'>
            <label class='required'><g:message code="comJobHistory.organization.label" default="Organization"/></label>
            <g:textField name="organization" class="form-control" value="${comJobHistoryInstance?.organization}" required="required"/>
            <g:renderErrors bean='comJobHistoryInstance' field='organization'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comJobHistoryInstance, field: 'reasonForLeave', 'has-error')}'>
            <label><g:message code="comJobHistory.reasonForLeave.label" default="Reason For Leave"/></label>
            <g:textField name="reasonForLeave" class="form-control" value="${comJobHistoryInstance?.reasonForLeave}"/>
            <g:renderErrors bean='comJobHistoryInstance' field='reasonForLeave'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comJobHistoryInstance, field: 'responsibility', 'has-error')}'>
            <label><g:message code="comJobHistory.responsibility.label" default="Responsibility"/></label>
            <g:textField name="responsibility" class="form-control" value="${comJobHistoryInstance?.responsibility}"/>
            <g:renderErrors bean='comJobHistoryInstance' field='responsibility'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comJobHistoryInstance, field: 'sortOrder', 'has-error')}'>
            <label><g:message code="comJobHistory.sortOrder.label" default="Sort Order"/></label>
            <g:field type="number" name="sortOrder" class="form-control" value="${comJobHistoryInstance?.sortOrder}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comJobHistoryInstance' field='sortOrder'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comJobHistoryInstance, field: 'endDate', 'has-error')}'>
            <label><g:message code="comJobHistory.endDate.label" default="End Date"/></label>
            <g:textField name="endDate" class="form-control dtp-date" value="${comJobHistoryInstance?.endDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comJobHistoryInstance' field='endDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comJobHistoryInstance, field: 'startDate', 'has-error')}'>
            <label><g:message code="comJobHistory.startDate.label" default="Start Date"/></label>
            <g:textField name="startDate" class="form-control dtp-date" value="${comJobHistoryInstance?.startDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comJobHistoryInstance' field='startDate'/>
        </div>
    </div>

</fieldset>
