

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsApplicantBranchPreferance.pageTitle.label', default: 'Ems Applicant Branch Preferance Details')}
    </legend>
    <g:each in="${emsApplicantBranchPreferanceList ?: new org.reflection.ems.EmsApplicantBranchPreference()}" status="i" var="emsApplicantBranchPreferanceInstance">
        <div class='box box-info emsApplicantBranchPreferanceDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantBranchPreferanceInstance, field: 'emsApplicant', 'has-error')}'>
                        <label><g:message code="emsApplicantBranchPreferance.emsApplicant.label" default="Ems Applicant"/></label>
                        <g:select name="emsApplicantBranchPreferance[${i}].emsApplicant" class="form-control many-to-one" from="${org.reflection.ems.EmsApplicant.list()}" value="${emsApplicantBranchPreferenceInstance?.emsApplicant?.id}" optionKey="id" noSelection="['': 'Select One']"/>
                        <g:renderErrors bean='emsApplicantBranchPreferanceInstance' field='emsApplicant'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantBranchPreferanceInstance, field: 'comBranch', 'has-error')}'>
                        <label><g:message code="emsApplicantBranchPreferance.comBranch.label" default="Com Branch"/></label>
                        <g:select name="emsApplicantBranchPreferance[${i}].comBranch" class="form-control many-to-one" from="${org.reflection.com.ComBranch.list()}" value="${emsApplicantBranchPreferenceInstance?.comBranch?.id}" optionKey="id" noSelection="['': 'Select One']"/>
                        <g:renderErrors bean='emsApplicantBranchPreferanceInstance' field='comBranch'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantBranchPreferanceInstance, field: 'comPriority', 'has-error')}'>
                        <label><g:message code="emsApplicantBranchPreferance.comPriority.label" default="Com Priority"/></label>
                        <g:select name="emsApplicantBranchPreferance[${i}].comPriority" class="form-control" from="${org.reflection.ems.ComPriority?.values()}" keys="${org.reflection.ems.ComPriority.values()*.name()}" value="${emsApplicantBranchPreferenceInstance?.comPriority?.name()}"  noSelection="['': 'Select One']"/>
                        <g:renderErrors bean='emsApplicantBranchPreferanceInstance' field='comPriority'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsApplicantBranchPreferanceDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>