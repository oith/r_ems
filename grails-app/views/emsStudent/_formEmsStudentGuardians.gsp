

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsStudentGuardians.pageTitle.label', default: 'Ems Student Guardians Details')}
    </legend>
    <g:each in="${emsStudentGuardiansList ?: new org.reflection.ems.EmsStudentGuardian()}" status="i" var="emsStudentGuardiansInstance">
        <div class='box box-info emsStudentGuardiansDetails'>
            <div class='box-body'>

                <g:hiddenField name="emsStudentGuardians[${i}].id" value="${emsStudentGuardiansInstance?.id}"/>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStudentGuardiansInstance, field: 'emsGuardian', 'has-error')} required'>
                        <label class='required'><g:message code="emsStudentGuardians.emsGuardian.label" default="Ems Guardian"/></label>
                        <g:select name="emsStudentGuardians[${i}].emsGuardian" class="form-control many-to-one" from="${org.reflection.ems.EmsGuardian.list()}" value="${emsStudentGuardianInstance?.emsGuardian?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsStudentGuardiansInstance' field='emsGuardian'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStudentGuardiansInstance, field: 'emsGuardianType', 'has-error')} required'>
                        <label class='required'><g:message code="emsStudentGuardians.emsGuardianType.label" default="Ems Guardian Type"/></label>
                        <g:select name="emsStudentGuardians[${i}].emsGuardianType" class="form-control" from="${org.reflection.ems.EmsGuardianType?.values()}" keys="${org.reflection.ems.EmsGuardianType.values()*.name()}" value="${emsStudentGuardianInstance?.emsGuardianType?.name()}"  noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsStudentGuardiansInstance' field='emsGuardianType'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsStudentGuardiansDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>