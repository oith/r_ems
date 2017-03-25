

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsStaffAcademicTrainings.pageTitle.label', default: 'Ems Staff Academic Trainings Details')}
    </legend>
    <g:each in="${emsStaffAcademicTrainingsList ?: new org.reflection.ems.EmsStaffAcademicTraining()}" status="i" var="emsStaffAcademicTrainingsInstance">
        <div class='box box-info emsStaffAcademicTrainingsDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingsInstance, field: 'comLookupTraining', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicTrainings.comLookupTraining.label" default="Com Lookup Training"/></label>
                        <g:select name="emsStaffAcademicTrainings[${i}].comLookupTraining" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${emsStaffAcademicTrainingInstance?.comLookupTraining?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicTrainingsInstance' field='comLookupTraining'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingsInstance, field: 'institute', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicTrainings.institute.label" default="Institute"/></label>
                        <g:textField name="emsStaffAcademicTrainings[${i}].institute" class="form-control" value="${emsStaffAcademicTrainingInstance?.institute}" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicTrainingsInstance' field='institute'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingsInstance, field: 'result', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicTrainings.result.label" default="Result"/></label>
                        <g:textField name="emsStaffAcademicTrainings[${i}].result" class="form-control" value="${emsStaffAcademicTrainingInstance?.result}" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicTrainingsInstance' field='result'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingsInstance, field: 'slNo', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicTrainings.slNo.label" default="Sl No"/></label>
                        <g:field type="number" name="emsStaffAcademicTrainings[${i}].slNo" class="form-control" value="${emsStaffAcademicTrainingInstance?.slNo}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsStaffAcademicTrainingsInstance' field='slNo'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingsInstance, field: 'remarks', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicTrainings.remarks.label" default="Remarks"/></label>
                        <g:textField name="emsStaffAcademicTrainings[${i}].remarks" class="form-control" value="${emsStaffAcademicTrainingInstance?.remarks}"/>
                        <g:renderErrors bean='emsStaffAcademicTrainingsInstance' field='remarks'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingsInstance, field: 'resultOutOf', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicTrainings.resultOutOf.label" default="Result Out Of"/></label>
                        <g:textField name="emsStaffAcademicTrainings[${i}].resultOutOf" class="form-control" value="${emsStaffAcademicTrainingInstance?.resultOutOf}"/>
                        <g:renderErrors bean='emsStaffAcademicTrainingsInstance' field='resultOutOf'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingsInstance, field: 'title', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicTrainings.title.label" default="Title"/></label>
                        <g:textField name="emsStaffAcademicTrainings[${i}].title" class="form-control" value="${emsStaffAcademicTrainingInstance?.title}"/>
                        <g:renderErrors bean='emsStaffAcademicTrainingsInstance' field='title'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingsInstance, field: 'trainingDuration', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicTrainings.trainingDuration.label" default="Training Duration"/></label>
                        <g:textField name="emsStaffAcademicTrainings[${i}].trainingDuration" class="form-control" value="${emsStaffAcademicTrainingInstance?.trainingDuration}"/>
                        <g:renderErrors bean='emsStaffAcademicTrainingsInstance' field='trainingDuration'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingsInstance, field: 'endDate', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicTrainings.endDate.label" default="End Date"/></label>
                        <g:textField name="emsStaffAcademicTrainings[${i}].endDate" class="form-control dtp-date" value="${emsStaffAcademicTrainingInstance?.endDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
                        <g:renderErrors bean='emsStaffAcademicTrainingsInstance' field='endDate'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingsInstance, field: 'startDate', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicTrainings.startDate.label" default="Start Date"/></label>
                        <g:textField name="emsStaffAcademicTrainings[${i}].startDate" class="form-control dtp-date" value="${emsStaffAcademicTrainingInstance?.startDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
                        <g:renderErrors bean='emsStaffAcademicTrainingsInstance' field='startDate'/>
                    </div>
                </div>

                <g:hiddenField name="emsStaffAcademicTrainings[${i}].id" value="${emsStaffAcademicTrainingsInstance?.id}"/>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsStaffAcademicTrainingsDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>