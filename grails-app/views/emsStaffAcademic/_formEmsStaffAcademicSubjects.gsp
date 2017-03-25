

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsStaffAcademicSubjects.pageTitle.label', default: 'Ems Staff Academic Subjects Details')}
    </legend>
    <g:each in="${emsStaffAcademicSubjectsList ?: new org.reflection.ems.EmsStaffAcademicSubject()}" status="i" var="emsStaffAcademicSubjectsInstance">
        <div class='box box-info emsStaffAcademicSubjectsDetails'>
            <div class='box-body'>

                <g:hiddenField name="emsStaffAcademicSubjects[${i}].id" value="${emsStaffAcademicSubjectsInstance?.id}"/>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicSubjectsInstance, field: 'emsSubject', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicSubjects.emsSubject.label" default="Ems Subject"/></label>
                        <g:select name="emsStaffAcademicSubjects[${i}].emsSubject" class="form-control" from="${org.reflection.ems.EmsSubject?.values()}" keys="${org.reflection.ems.EmsSubject.values()*.name()}" value="${emsStaffAcademicSubjectInstance?.emsSubject?.name()}"  noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicSubjectsInstance' field='emsSubject'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsStaffAcademicSubjectsDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>