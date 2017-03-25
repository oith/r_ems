<%@ page import="org.reflection.ems.EmsApplicantBranchPreference" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantBranchPreferenceInstance, field: 'emsApplicant', 'has-error')}'>
            <label><g:message code="emsApplicantBranchPreference.emsApplicant.label" default="Ems Applicant"/></label>
            <g:select name="emsApplicant" class="form-control many-to-one" from="${org.reflection.ems.EmsApplicant.list()}" value="${emsApplicantBranchPreferenceInstance?.emsApplicant?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsApplicantBranchPreferenceInstance' field='emsApplicant'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantBranchPreferenceInstance, field: 'comBranch', 'has-error')}'>
            <label><g:message code="emsApplicantBranchPreference.comBranch.label" default="Com Branch"/></label>
            <g:select name="comBranch" class="form-control many-to-one" from="${org.reflection.com.ComBranch.list()}" value="${emsApplicantBranchPreferenceInstance?.comBranch?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsApplicantBranchPreferenceInstance' field='comBranch'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantBranchPreferenceInstance, field: 'comPriority', 'has-error')}'>
            <label><g:message code="emsApplicantBranchPreference.comPriority.label" default="Com Priority"/></label>
            <g:select name="comPriority" class="form-control" from="${org.reflection.ems.ComPriority?.values()}" keys="${org.reflection.ems.ComPriority.values()*.name()}" value="${emsApplicantBranchPreferenceInstance?.comPriority?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsApplicantBranchPreferenceInstance' field='comPriority'/>
        </div>
    </div>

</fieldset>
