<%@ page import="org.reflection.ems.EmsStaffAcademicTraining" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingInstance, field: 'comLookupTraining', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicTraining.comLookupTraining.label" default="Com Lookup Training"/></label>
            <g:select name="comLookupTraining" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${emsStaffAcademicTrainingInstance?.comLookupTraining?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicTrainingInstance' field='comLookupTraining'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingInstance, field: 'institute', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicTraining.institute.label" default="Institute"/></label>
            <g:textField name="institute" class="form-control" value="${emsStaffAcademicTrainingInstance?.institute}" required="required"/>
            <g:renderErrors bean='emsStaffAcademicTrainingInstance' field='institute'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingInstance, field: 'result', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicTraining.result.label" default="Result"/></label>
            <g:textField name="result" class="form-control" value="${emsStaffAcademicTrainingInstance?.result}" required="required"/>
            <g:renderErrors bean='emsStaffAcademicTrainingInstance' field='result'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingInstance, field: 'slNo', 'has-error')}'>
            <label><g:message code="emsStaffAcademicTraining.slNo.label" default="Sl No"/></label>
            <g:field type="number" name="slNo" class="form-control" value="${emsStaffAcademicTrainingInstance?.slNo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsStaffAcademicTrainingInstance' field='slNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="emsStaffAcademicTraining.remarks.label" default="Remarks"/></label>
            <g:textField name="remarks" class="form-control" value="${emsStaffAcademicTrainingInstance?.remarks}"/>
            <g:renderErrors bean='emsStaffAcademicTrainingInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingInstance, field: 'resultOutOf', 'has-error')}'>
            <label><g:message code="emsStaffAcademicTraining.resultOutOf.label" default="Result Out Of"/></label>
            <g:textField name="resultOutOf" class="form-control" value="${emsStaffAcademicTrainingInstance?.resultOutOf}"/>
            <g:renderErrors bean='emsStaffAcademicTrainingInstance' field='resultOutOf'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingInstance, field: 'title', 'has-error')}'>
            <label><g:message code="emsStaffAcademicTraining.title.label" default="Title"/></label>
            <g:textField name="title" class="form-control" value="${emsStaffAcademicTrainingInstance?.title}"/>
            <g:renderErrors bean='emsStaffAcademicTrainingInstance' field='title'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingInstance, field: 'trainingDuration', 'has-error')}'>
            <label><g:message code="emsStaffAcademicTraining.trainingDuration.label" default="Training Duration"/></label>
            <g:textField name="trainingDuration" class="form-control" value="${emsStaffAcademicTrainingInstance?.trainingDuration}"/>
            <g:renderErrors bean='emsStaffAcademicTrainingInstance' field='trainingDuration'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingInstance, field: 'endDate', 'has-error')}'>
            <label><g:message code="emsStaffAcademicTraining.endDate.label" default="End Date"/></label>
            <g:textField name="endDate" class="form-control dtp-date" value="${emsStaffAcademicTrainingInstance?.endDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='emsStaffAcademicTrainingInstance' field='endDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingInstance, field: 'startDate', 'has-error')}'>
            <label><g:message code="emsStaffAcademicTraining.startDate.label" default="Start Date"/></label>
            <g:textField name="startDate" class="form-control dtp-date" value="${emsStaffAcademicTrainingInstance?.startDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='emsStaffAcademicTrainingInstance' field='startDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicTrainingInstance, field: 'emsStaffAcademic', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicTraining.emsStaffAcademic.label" default="Ems Staff Academic"/></label>
            <g:select name="emsStaffAcademic" class="form-control many-to-one" from="${org.reflection.ems.EmsStaffAcademic.list()}" value="${emsStaffAcademicTrainingInstance?.emsStaffAcademic?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicTrainingInstance' field='emsStaffAcademic'/>
        </div>
    </div>

</fieldset>
