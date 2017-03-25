<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsStaffAcademicTypeEducations.pageTitle.label', default: 'Ems Staff Academic Type Educations Details')}
    </legend>
    <g:each in="${emsStaffAcademicTypeEducationsList ?: new org.reflection.ems.EmsStaffAcademicTypeEducation()}" status="i" var="emsStaffAcademicTypeEducationsInstance">
        <div class='box box-info emsStaffAcademicTypeEducationsDetails'>
            <div class='box-body'>

                <g:hiddenField name="emsStaffAcademicTypeEducations[${i}].id" value="${emsStaffAcademicTypeEducationsInstance?.id}"/>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicTypeEducationsInstance, field: 'emsTypeEducation', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicTypeEducations.emsTypeEducation.label" default="Ems Type Education"/></label>
                        <g:select name="emsStaffAcademicTypeEducations[${i}].emsTypeEducation" class="form-control" from="${org.reflection.ems.EmsTypeEducation?.values()}" keys="${org.reflection.ems.EmsTypeEducation.values()*.name()}" value="${emsStaffAcademicTypeEducationInstance?.emsTypeEducation?.name()}"  noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicTypeEducationsInstance' field='emsTypeEducation'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsStaffAcademicTypeEducationsDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>