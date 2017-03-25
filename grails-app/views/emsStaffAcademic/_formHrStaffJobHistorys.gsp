

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'hrStaffJobHistorys.pageTitle.label', default: 'Hr Staff Job Historys Details')}
    </legend>
    <g:each in="${hrStaffJobHistorysList ?: new org.reflection.hr.HrStaffJobHistory()}" status="i" var="hrStaffJobHistorysInstance">
        <div class='box box-info hrStaffJobHistorysDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffJobHistorysInstance, field: 'department', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffJobHistorys.department.label" default="Department"/></label>
                        <g:textField name="hrStaffJobHistorys[${i}].department" class="form-control" value="${hrStaffJobHistoryInstance?.department}" required="required"/>
                        <g:renderErrors bean='hrStaffJobHistorysInstance' field='department'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffJobHistorysInstance, field: 'job', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffJobHistorys.job.label" default="Job"/></label>
                        <g:textField name="hrStaffJobHistorys[${i}].job" class="form-control" value="${hrStaffJobHistoryInstance?.job}" required="required"/>
                        <g:renderErrors bean='hrStaffJobHistorysInstance' field='job'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffJobHistorysInstance, field: 'jobDuration', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffJobHistorys.jobDuration.label" default="Job Duration"/></label>
                        <g:textField name="hrStaffJobHistorys[${i}].jobDuration" class="form-control" value="${hrStaffJobHistoryInstance?.jobDuration}" required="required"/>
                        <g:renderErrors bean='hrStaffJobHistorysInstance' field='jobDuration'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffJobHistorysInstance, field: 'organization', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffJobHistorys.organization.label" default="Organization"/></label>
                        <g:textField name="hrStaffJobHistorys[${i}].organization" class="form-control" value="${hrStaffJobHistoryInstance?.organization}" required="required"/>
                        <g:renderErrors bean='hrStaffJobHistorysInstance' field='organization'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffJobHistorysInstance, field: 'reasonForLeave', 'has-error')}'>
                        <label><g:message code="hrStaffJobHistorys.reasonForLeave.label" default="Reason For Leave"/></label>
                        <g:textField name="hrStaffJobHistorys[${i}].reasonForLeave" class="form-control" value="${hrStaffJobHistoryInstance?.reasonForLeave}"/>
                        <g:renderErrors bean='hrStaffJobHistorysInstance' field='reasonForLeave'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffJobHistorysInstance, field: 'responsibility', 'has-error')}'>
                        <label><g:message code="hrStaffJobHistorys.responsibility.label" default="Responsibility"/></label>
                        <g:textField name="hrStaffJobHistorys[${i}].responsibility" class="form-control" value="${hrStaffJobHistoryInstance?.responsibility}"/>
                        <g:renderErrors bean='hrStaffJobHistorysInstance' field='responsibility'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffJobHistorysInstance, field: 'sortOrder', 'has-error')}'>
                        <label><g:message code="hrStaffJobHistorys.sortOrder.label" default="Sort Order"/></label>
                        <g:field type="number" name="hrStaffJobHistorys[${i}].sortOrder" class="form-control" value="${hrStaffJobHistoryInstance?.sortOrder}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='hrStaffJobHistorysInstance' field='sortOrder'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffJobHistorysInstance, field: 'endDate', 'has-error')}'>
                        <label><g:message code="hrStaffJobHistorys.endDate.label" default="End Date"/></label>
                        <g:textField name="hrStaffJobHistorys[${i}].endDate" class="form-control dtp-date" value="${hrStaffJobHistoryInstance?.endDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
                        <g:renderErrors bean='hrStaffJobHistorysInstance' field='endDate'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffJobHistorysInstance, field: 'startDate', 'has-error')}'>
                        <label><g:message code="hrStaffJobHistorys.startDate.label" default="Start Date"/></label>
                        <g:textField name="hrStaffJobHistorys[${i}].startDate" class="form-control dtp-date" value="${hrStaffJobHistoryInstance?.startDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
                        <g:renderErrors bean='hrStaffJobHistorysInstance' field='startDate'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffJobHistorysInstance, field: 'hrStaff', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffJobHistorys.hrStaff.label" default="Hr Staff"/></label>
                        <g:select name="hrStaffJobHistorys[${i}].hrStaff" class="form-control many-to-one" from="${org.reflection.hr.HrStaff.list()}" value="${hrStaffJobHistoryInstance?.hrStaff?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='hrStaffJobHistorysInstance' field='hrStaff'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("hrStaffJobHistorysDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>