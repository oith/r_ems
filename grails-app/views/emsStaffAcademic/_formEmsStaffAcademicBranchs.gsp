

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsStaffAcademicBranchs.pageTitle.label', default: 'Ems Staff Academic Branchs Details')}
    </legend>
    <g:each in="${emsStaffAcademicBranchsList ?: new org.reflection.ems.EmsStaffAcademicBranch()}" status="i" var="emsStaffAcademicBranchsInstance">
        <div class='box box-info emsStaffAcademicBranchsDetails'>
            <div class='box-body'>

                <g:hiddenField name="emsStaffAcademicBranchs[${i}].id" value="${emsStaffAcademicBranchsInstance?.id}"/>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicBranchsInstance, field: 'comBranch', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicBranchs.comBranch.label" default="Com Branch"/></label>
                        <g:select name="emsStaffAcademicBranchs[${i}].comBranch" class="form-control many-to-one" from="${org.reflection.com.ComBranch.list()}" value="${emsStaffAcademicBranchInstance?.comBranch?.id}" optionKey="id" noSelection="['': 'Select One']"/>
                        <g:renderErrors bean='emsStaffAcademicBranchsInstance' field='comBranch'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsStaffAcademicBranchsDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>