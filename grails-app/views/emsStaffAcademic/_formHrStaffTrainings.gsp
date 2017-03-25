

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'hrStaffTrainings.pageTitle.label', default: 'Hr Staff Trainings Details')}
    </legend>
    <g:each in="${hrStaffTrainingsList ?: new org.reflection.hr.HrStaffTraining()}" status="i" var="hrStaffTrainingsInstance">
        <div class='box box-info hrStaffTrainingsDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffTrainingsInstance, field: 'comLookupTraining', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffTrainings.comLookupTraining.label" default="Com Lookup Training"/></label>
                        <g:select name="hrStaffTrainings[${i}].comLookupTraining" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${hrStaffTrainingInstance?.comLookupTraining?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='hrStaffTrainingsInstance' field='comLookupTraining'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffTrainingsInstance, field: 'institute', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffTrainings.institute.label" default="Institute"/></label>
                        <g:textField name="hrStaffTrainings[${i}].institute" class="form-control" value="${hrStaffTrainingInstance?.institute}" required="required"/>
                        <g:renderErrors bean='hrStaffTrainingsInstance' field='institute'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffTrainingsInstance, field: 'result', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffTrainings.result.label" default="Result"/></label>
                        <g:textField name="hrStaffTrainings[${i}].result" class="form-control" value="${hrStaffTrainingInstance?.result}" required="required"/>
                        <g:renderErrors bean='hrStaffTrainingsInstance' field='result'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffTrainingsInstance, field: 'slNo', 'has-error')}'>
                        <label><g:message code="hrStaffTrainings.slNo.label" default="Sl No"/></label>
                        <g:field type="number" name="hrStaffTrainings[${i}].slNo" class="form-control" value="${hrStaffTrainingInstance?.slNo}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='hrStaffTrainingsInstance' field='slNo'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffTrainingsInstance, field: 'remarks', 'has-error')}'>
                        <label><g:message code="hrStaffTrainings.remarks.label" default="Remarks"/></label>
                        <g:textField name="hrStaffTrainings[${i}].remarks" class="form-control" value="${hrStaffTrainingInstance?.remarks}"/>
                        <g:renderErrors bean='hrStaffTrainingsInstance' field='remarks'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffTrainingsInstance, field: 'resultOutOf', 'has-error')}'>
                        <label><g:message code="hrStaffTrainings.resultOutOf.label" default="Result Out Of"/></label>
                        <g:textField name="hrStaffTrainings[${i}].resultOutOf" class="form-control" value="${hrStaffTrainingInstance?.resultOutOf}"/>
                        <g:renderErrors bean='hrStaffTrainingsInstance' field='resultOutOf'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffTrainingsInstance, field: 'title', 'has-error')}'>
                        <label><g:message code="hrStaffTrainings.title.label" default="Title"/></label>
                        <g:textField name="hrStaffTrainings[${i}].title" class="form-control" value="${hrStaffTrainingInstance?.title}"/>
                        <g:renderErrors bean='hrStaffTrainingsInstance' field='title'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffTrainingsInstance, field: 'trainingDuration', 'has-error')}'>
                        <label><g:message code="hrStaffTrainings.trainingDuration.label" default="Training Duration"/></label>
                        <g:textField name="hrStaffTrainings[${i}].trainingDuration" class="form-control" value="${hrStaffTrainingInstance?.trainingDuration}"/>
                        <g:renderErrors bean='hrStaffTrainingsInstance' field='trainingDuration'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffTrainingsInstance, field: 'endDate', 'has-error')}'>
                        <label><g:message code="hrStaffTrainings.endDate.label" default="End Date"/></label>
                        <g:textField name="hrStaffTrainings[${i}].endDate" class="form-control dtp-date" value="${hrStaffTrainingInstance?.endDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
                        <g:renderErrors bean='hrStaffTrainingsInstance' field='endDate'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffTrainingsInstance, field: 'startDate', 'has-error')}'>
                        <label><g:message code="hrStaffTrainings.startDate.label" default="Start Date"/></label>
                        <g:textField name="hrStaffTrainings[${i}].startDate" class="form-control dtp-date" value="${hrStaffTrainingInstance?.startDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
                        <g:renderErrors bean='hrStaffTrainingsInstance' field='startDate'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffTrainingsInstance, field: 'hrStaff', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffTrainings.hrStaff.label" default="Hr Staff"/></label>
                        <g:select name="hrStaffTrainings[${i}].hrStaff" class="form-control many-to-one" from="${org.reflection.hr.HrStaff.list()}" value="${hrStaffTrainingInstance?.hrStaff?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='hrStaffTrainingsInstance' field='hrStaff'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("hrStaffTrainingsDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>