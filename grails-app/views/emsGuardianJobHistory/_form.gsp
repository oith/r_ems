<%@ page import="org.reflection.ems.EmsGuardianJobHistory" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'department', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardianJobHistory.department.label" default="Department"/></label>
            <g:textField name="department" class="form-control" value="${emsGuardianJobHistoryInstance?.department}" required="required"/>
            <g:renderErrors bean='emsGuardianJobHistoryInstance' field='department'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'job', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardianJobHistory.job.label" default="Job"/></label>
            <g:textField name="job" class="form-control" value="${emsGuardianJobHistoryInstance?.job}" required="required"/>
            <g:renderErrors bean='emsGuardianJobHistoryInstance' field='job'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'jobDuration', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardianJobHistory.jobDuration.label" default="Job Duration"/></label>
            <g:textField name="jobDuration" class="form-control" value="${emsGuardianJobHistoryInstance?.jobDuration}" required="required"/>
            <g:renderErrors bean='emsGuardianJobHistoryInstance' field='jobDuration'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'organization', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardianJobHistory.organization.label" default="Organization"/></label>
            <g:textField name="organization" class="form-control" value="${emsGuardianJobHistoryInstance?.organization}" required="required"/>
            <g:renderErrors bean='emsGuardianJobHistoryInstance' field='organization'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'reasonForLeave', 'has-error')}'>
            <label><g:message code="emsGuardianJobHistory.reasonForLeave.label" default="Reason For Leave"/></label>
            <g:textField name="reasonForLeave" class="form-control" value="${emsGuardianJobHistoryInstance?.reasonForLeave}"/>
            <g:renderErrors bean='emsGuardianJobHistoryInstance' field='reasonForLeave'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'responsibility', 'has-error')}'>
            <label><g:message code="emsGuardianJobHistory.responsibility.label" default="Responsibility"/></label>
            <g:textField name="responsibility" class="form-control" value="${emsGuardianJobHistoryInstance?.responsibility}"/>
            <g:renderErrors bean='emsGuardianJobHistoryInstance' field='responsibility'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'sortOrder', 'has-error')}'>
            <label><g:message code="emsGuardianJobHistory.sortOrder.label" default="Sort Order"/></label>
            <g:field type="number" name="sortOrder" class="form-control" value="${emsGuardianJobHistoryInstance?.sortOrder}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsGuardianJobHistoryInstance' field='sortOrder'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'endDate', 'has-error')}'>
            <label><g:message code="emsGuardianJobHistory.endDate.label" default="End Date"/></label>
            <g:textField name="endDate" class="form-control dtp-date" value="${emsGuardianJobHistoryInstance?.endDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='emsGuardianJobHistoryInstance' field='endDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'startDate', 'has-error')}'>
            <label><g:message code="emsGuardianJobHistory.startDate.label" default="Start Date"/></label>
            <g:textField name="startDate" class="form-control dtp-date" value="${emsGuardianJobHistoryInstance?.startDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='emsGuardianJobHistoryInstance' field='startDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'emsGuardian', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardianJobHistory.emsGuardian.label" default="Ems Guardian"/></label>
            <g:select name="emsGuardian" class="form-control many-to-one" from="${org.reflection.ems.EmsGuardian.list()}" value="${emsGuardianJobHistoryInstance?.emsGuardian?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsGuardianJobHistoryInstance' field='emsGuardian'/>
        </div>
    </div>

</fieldset>
