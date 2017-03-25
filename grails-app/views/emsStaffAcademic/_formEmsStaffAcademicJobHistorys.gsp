

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsStaffAcademicJobHistorys.pageTitle.label', default: 'Ems Staff Academic Job Historys Details')}
    </legend>
    <g:each in="${emsStaffAcademicJobHistorysList ?: new org.reflection.ems.EmsStaffAcademicJobHistory()}" status="i" var="emsStaffAcademicJobHistorysInstance">
        <div class='box box-info emsStaffAcademicJobHistorysDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistorysInstance, field: 'department', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicJobHistorys.department.label" default="Department"/></label>
                        <g:textField name="emsStaffAcademicJobHistorys[${i}].department" class="form-control" value="${emsStaffAcademicJobHistoryInstance?.department}" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicJobHistorysInstance' field='department'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistorysInstance, field: 'job', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicJobHistorys.job.label" default="Job"/></label>
                        <g:textField name="emsStaffAcademicJobHistorys[${i}].job" class="form-control" value="${emsStaffAcademicJobHistoryInstance?.job}" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicJobHistorysInstance' field='job'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistorysInstance, field: 'jobDuration', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicJobHistorys.jobDuration.label" default="Job Duration"/></label>
                        <g:textField name="emsStaffAcademicJobHistorys[${i}].jobDuration" class="form-control" value="${emsStaffAcademicJobHistoryInstance?.jobDuration}" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicJobHistorysInstance' field='jobDuration'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistorysInstance, field: 'organization', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicJobHistorys.organization.label" default="Organization"/></label>
                        <g:textField name="emsStaffAcademicJobHistorys[${i}].organization" class="form-control" value="${emsStaffAcademicJobHistoryInstance?.organization}" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicJobHistorysInstance' field='organization'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistorysInstance, field: 'reasonForLeave', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicJobHistorys.reasonForLeave.label" default="Reason For Leave"/></label>
                        <g:textField name="emsStaffAcademicJobHistorys[${i}].reasonForLeave" class="form-control" value="${emsStaffAcademicJobHistoryInstance?.reasonForLeave}"/>
                        <g:renderErrors bean='emsStaffAcademicJobHistorysInstance' field='reasonForLeave'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistorysInstance, field: 'responsibility', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicJobHistorys.responsibility.label" default="Responsibility"/></label>
                        <g:textField name="emsStaffAcademicJobHistorys[${i}].responsibility" class="form-control" value="${emsStaffAcademicJobHistoryInstance?.responsibility}"/>
                        <g:renderErrors bean='emsStaffAcademicJobHistorysInstance' field='responsibility'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistorysInstance, field: 'sortOrder', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicJobHistorys.sortOrder.label" default="Sort Order"/></label>
                        <g:field type="number" name="emsStaffAcademicJobHistorys[${i}].sortOrder" class="form-control" value="${emsStaffAcademicJobHistoryInstance?.sortOrder}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsStaffAcademicJobHistorysInstance' field='sortOrder'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistorysInstance, field: 'endDate', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicJobHistorys.endDate.label" default="End Date"/></label>
                        <g:textField name="emsStaffAcademicJobHistorys[${i}].endDate" class="form-control dtp-date" value="${emsStaffAcademicJobHistoryInstance?.endDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
                        <g:renderErrors bean='emsStaffAcademicJobHistorysInstance' field='endDate'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicJobHistorysInstance, field: 'startDate', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicJobHistorys.startDate.label" default="Start Date"/></label>
                        <g:textField name="emsStaffAcademicJobHistorys[${i}].startDate" class="form-control dtp-date" value="${emsStaffAcademicJobHistoryInstance?.startDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
                        <g:renderErrors bean='emsStaffAcademicJobHistorysInstance' field='startDate'/>
                    </div>
                </div>

                <g:hiddenField name="emsStaffAcademicJobHistorys[${i}].id" value="${emsStaffAcademicJobHistorysInstance?.id}"/>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsStaffAcademicJobHistorysDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>