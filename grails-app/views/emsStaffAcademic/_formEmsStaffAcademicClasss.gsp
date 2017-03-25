

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsStaffAcademicClasss.pageTitle.label', default: 'Ems Staff Academic Classs Details')}
    </legend>
    <g:each in="${emsStaffAcademicClasssList ?: new org.reflection.ems.EmsStaffAcademicClass()}" status="i" var="emsStaffAcademicClasssInstance">
        <div class='box box-info emsStaffAcademicClasssDetails'>
            <div class='box-body'>

                <g:hiddenField name="emsStaffAcademicClasss[${i}].id" value="${emsStaffAcademicClasssInstance?.id}"/>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicClasssInstance, field: 'emsClass', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicClasss.emsClass.label" default="Ems Class"/></label>
                        <g:select name="emsStaffAcademicClasss[${i}].emsClass" class="form-control" from="${org.reflection.ems.EmsClass?.values()}" keys="${org.reflection.ems.EmsClass.values()*.name()}" value="${emsStaffAcademicClassInstance?.emsClass?.name()}"  noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicClasssInstance' field='emsClass'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsStaffAcademicClasssDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>