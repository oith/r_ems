<%@ page import="org.reflection.com.ComTraining" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comTrainingInstance, field: 'comLookupTraining', 'has-error')} required'>
            <label class='required'><g:message code="comTraining.comLookupTraining.label" default="Com Lookup Training"/></label>
            <g:select name="comLookupTraining" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${comTrainingInstance?.comLookupTraining?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='comTrainingInstance' field='comLookupTraining'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comTrainingInstance, field: 'institute', 'has-error')} required'>
            <label class='required'><g:message code="comTraining.institute.label" default="Institute"/></label>
            <g:textField name="institute" class="form-control" value="${comTrainingInstance?.institute}" required="required"/>
            <g:renderErrors bean='comTrainingInstance' field='institute'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comTrainingInstance, field: 'result', 'has-error')} required'>
            <label class='required'><g:message code="comTraining.result.label" default="Result"/></label>
            <g:textField name="result" class="form-control" value="${comTrainingInstance?.result}" required="required"/>
            <g:renderErrors bean='comTrainingInstance' field='result'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comTrainingInstance, field: 'slNo', 'has-error')}'>
            <label><g:message code="comTraining.slNo.label" default="Sl No"/></label>
            <g:field type="number" name="slNo" class="form-control" value="${comTrainingInstance?.slNo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comTrainingInstance' field='slNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comTrainingInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="comTraining.remarks.label" default="Remarks"/></label>
            <g:textField name="remarks" class="form-control" value="${comTrainingInstance?.remarks}"/>
            <g:renderErrors bean='comTrainingInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comTrainingInstance, field: 'resultOutOf', 'has-error')}'>
            <label><g:message code="comTraining.resultOutOf.label" default="Result Out Of"/></label>
            <g:textField name="resultOutOf" class="form-control" value="${comTrainingInstance?.resultOutOf}"/>
            <g:renderErrors bean='comTrainingInstance' field='resultOutOf'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comTrainingInstance, field: 'title', 'has-error')}'>
            <label><g:message code="comTraining.title.label" default="Title"/></label>
            <g:textField name="title" class="form-control" value="${comTrainingInstance?.title}"/>
            <g:renderErrors bean='comTrainingInstance' field='title'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comTrainingInstance, field: 'trainingDuration', 'has-error')}'>
            <label><g:message code="comTraining.trainingDuration.label" default="Training Duration"/></label>
            <g:textField name="trainingDuration" class="form-control" value="${comTrainingInstance?.trainingDuration}"/>
            <g:renderErrors bean='comTrainingInstance' field='trainingDuration'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comTrainingInstance, field: 'endDate', 'has-error')}'>
            <label><g:message code="comTraining.endDate.label" default="End Date"/></label>
            <g:textField name="endDate" class="form-control dtp-date" value="${comTrainingInstance?.endDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comTrainingInstance' field='endDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comTrainingInstance, field: 'startDate', 'has-error')}'>
            <label><g:message code="comTraining.startDate.label" default="Start Date"/></label>
            <g:textField name="startDate" class="form-control dtp-date" value="${comTrainingInstance?.startDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comTrainingInstance' field='startDate'/>
        </div>
    </div>

</fieldset>
