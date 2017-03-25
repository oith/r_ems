

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsStaffAcademicShifts.pageTitle.label', default: 'Ems Staff Academic Shifts Details')}
    </legend>
    <g:each in="${emsStaffAcademicShiftsList ?: new org.reflection.ems.EmsStaffAcademicShift()}" status="i" var="emsStaffAcademicShiftsInstance">
        <div class='box box-info emsStaffAcademicShiftsDetails'>
            <div class='box-body'>

                <g:hiddenField name="emsStaffAcademicShifts[${i}].id" value="${emsStaffAcademicShiftsInstance?.id}"/>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicShiftsInstance, field: 'emsShift', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicShifts.emsShift.label" default="Ems Shift"/></label>
                        <g:select name="emsStaffAcademicShifts[${i}].emsShift" class="form-control" from="${org.reflection.ems.EmsShift?.values()}" keys="${org.reflection.ems.EmsShift.values()*.name()}" value="${emsStaffAcademicShiftInstance?.emsShift?.name()}"  noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicShiftsInstance' field='emsShift'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsStaffAcademicShiftsDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>