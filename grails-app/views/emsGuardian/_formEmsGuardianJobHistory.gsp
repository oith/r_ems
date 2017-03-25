<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsGuardianJobHistory.pageTitle.label', default: 'Ems Guardian Job History Details')}
    </legend>
    <g:each in="${emsGuardianJobHistoryList ?: new org.reflection.ems.EmsGuardianJobHistory()}" status="i" var="emsGuardianJobHistoryInstance">
        <div class='box box-info emsGuardianJobHistoryDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'department', 'has-error')} required'>
                        <label class='required'><g:message code="emsGuardianJobHistory.department.label" default="Department"/></label>
                        <g:textField name="emsGuardianJobHistory[${i}].department" class="form-control" value="${emsGuardianJobHistoryInstance?.department}" required="required"/>
                        <g:renderErrors bean='emsGuardianJobHistoryInstance' field='department'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'job', 'has-error')} required'>
                        <label class='required'><g:message code="emsGuardianJobHistory.job.label" default="Job"/></label>
                        <g:textField name="emsGuardianJobHistory[${i}].job" class="form-control" value="${emsGuardianJobHistoryInstance?.job}" required="required"/>
                        <g:renderErrors bean='emsGuardianJobHistoryInstance' field='job'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'jobDuration', 'has-error')} required'>
                        <label class='required'><g:message code="emsGuardianJobHistory.jobDuration.label" default="Job Duration"/></label>
                        <g:textField name="emsGuardianJobHistory[${i}].jobDuration" class="form-control" value="${emsGuardianJobHistoryInstance?.jobDuration}" required="required"/>
                        <g:renderErrors bean='emsGuardianJobHistoryInstance' field='jobDuration'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'organization', 'has-error')} required'>
                        <label class='required'><g:message code="emsGuardianJobHistory.organization.label" default="Organization"/></label>
                        <g:textField name="emsGuardianJobHistory[${i}].organization" class="form-control" value="${emsGuardianJobHistoryInstance?.organization}" required="required"/>
                        <g:renderErrors bean='emsGuardianJobHistoryInstance' field='organization'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'reasonForLeave', 'has-error')}'>
                        <label><g:message code="emsGuardianJobHistory.reasonForLeave.label" default="Reason For Leave"/></label>
                        <g:textField name="emsGuardianJobHistory[${i}].reasonForLeave" class="form-control" value="${emsGuardianJobHistoryInstance?.reasonForLeave}"/>
                        <g:renderErrors bean='emsGuardianJobHistoryInstance' field='reasonForLeave'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'responsibility', 'has-error')}'>
                        <label><g:message code="emsGuardianJobHistory.responsibility.label" default="Responsibility"/></label>
                        <g:textField name="emsGuardianJobHistory[${i}].responsibility" class="form-control" value="${emsGuardianJobHistoryInstance?.responsibility}"/>
                        <g:renderErrors bean='emsGuardianJobHistoryInstance' field='responsibility'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'sortOrder', 'has-error')}'>
                        <label><g:message code="emsGuardianJobHistory.sortOrder.label" default="Sort Order"/></label>
                        <g:field type="number" name="emsGuardianJobHistory[${i}].sortOrder" class="form-control" value="${emsGuardianJobHistoryInstance?.sortOrder}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsGuardianJobHistoryInstance' field='sortOrder'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'endDate', 'has-error')}'>
                        <label><g:message code="emsGuardianJobHistory.endDate.label" default="End Date"/></label>
                        <g:textField name="emsGuardianJobHistory[${i}].endDate" class="form-control dtp-date" value="${emsGuardianJobHistoryInstance?.endDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
                        <g:renderErrors bean='emsGuardianJobHistoryInstance' field='endDate'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianJobHistoryInstance, field: 'startDate', 'has-error')}'>
                        <label><g:message code="emsGuardianJobHistory.startDate.label" default="Start Date"/></label>
                        <g:textField name="emsGuardianJobHistory[${i}].startDate" class="form-control dtp-date" value="${emsGuardianJobHistoryInstance?.startDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
                        <g:renderErrors bean='emsGuardianJobHistoryInstance' field='startDate'/>
                    </div>
                </div>

                <g:hiddenField name="emsGuardianJobHistory[${i}].id" value="${emsGuardianJobHistoryInstance?.id}"/>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsGuardianJobHistoryDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>