

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsStaffAcademicEducationInfos.pageTitle.label', default: 'Ems Staff Academic Education Infos Details')}
    </legend>
    <g:each in="${emsStaffAcademicEducationInfosList ?: new org.reflection.ems.EmsStaffAcademicEducationInfo()}" status="i" var="emsStaffAcademicEducationInfosInstance">
        <div class='box box-info emsStaffAcademicEducationInfosDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfosInstance, field: 'comLookupEduSubGroup', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicEducationInfos.comLookupEduSubGroup.label" default="Com Lookup Edu Sub Group"/></label>
                        <g:select name="emsStaffAcademicEducationInfos[${i}].comLookupEduSubGroup" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${emsStaffAcademicEducationInfoInstance?.comLookupEduSubGroup?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicEducationInfosInstance' field='comLookupEduSubGroup'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfosInstance, field: 'comLookupEducation', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicEducationInfos.comLookupEducation.label" default="Com Lookup Education"/></label>
                        <g:select name="emsStaffAcademicEducationInfos[${i}].comLookupEducation" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${emsStaffAcademicEducationInfoInstance?.comLookupEducation?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicEducationInfosInstance' field='comLookupEducation'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfosInstance, field: 'organization', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicEducationInfos.organization.label" default="Organization"/></label>
                        <g:textField name="emsStaffAcademicEducationInfos[${i}].organization" class="form-control" value="${emsStaffAcademicEducationInfoInstance?.organization}" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicEducationInfosInstance' field='organization'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfosInstance, field: 'result', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicEducationInfos.result.label" default="Result"/></label>
                        <g:textField name="emsStaffAcademicEducationInfos[${i}].result" class="form-control" value="${emsStaffAcademicEducationInfoInstance?.result}" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicEducationInfosInstance' field='result'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfosInstance, field: 'resultOutOf', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicEducationInfos.resultOutOf.label" default="Result Out Of"/></label>
                        <g:textField name="emsStaffAcademicEducationInfos[${i}].resultOutOf" class="form-control" value="${emsStaffAcademicEducationInfoInstance?.resultOutOf}" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicEducationInfosInstance' field='resultOutOf'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfosInstance, field: 'passingYear', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicEducationInfos.passingYear.label" default="Passing Year"/></label>
                        <g:field type="number" name="emsStaffAcademicEducationInfos[${i}].passingYear" class="form-control" value="${emsStaffAcademicEducationInfoInstance?.passingYear}" min="0" max="9999999" step="1.00" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicEducationInfosInstance' field='passingYear'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfosInstance, field: 'remarks', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicEducationInfos.remarks.label" default="Remarks"/></label>
                        <g:textField name="emsStaffAcademicEducationInfos[${i}].remarks" class="form-control" value="${emsStaffAcademicEducationInfoInstance?.remarks}"/>
                        <g:renderErrors bean='emsStaffAcademicEducationInfosInstance' field='remarks'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfosInstance, field: 'slNo', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicEducationInfos.slNo.label" default="Sl No"/></label>
                        <g:field type="number" name="emsStaffAcademicEducationInfos[${i}].slNo" class="form-control" value="${emsStaffAcademicEducationInfoInstance?.slNo}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsStaffAcademicEducationInfosInstance' field='slNo'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfosInstance, field: 'yearFrom', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicEducationInfos.yearFrom.label" default="Year From"/></label>
                        <g:field type="number" name="emsStaffAcademicEducationInfos[${i}].yearFrom" class="form-control" value="${emsStaffAcademicEducationInfoInstance?.yearFrom}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsStaffAcademicEducationInfosInstance' field='yearFrom'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicEducationInfosInstance, field: 'yearTo', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicEducationInfos.yearTo.label" default="Year To"/></label>
                        <g:field type="number" name="emsStaffAcademicEducationInfos[${i}].yearTo" class="form-control" value="${emsStaffAcademicEducationInfoInstance?.yearTo}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsStaffAcademicEducationInfosInstance' field='yearTo'/>
                    </div>
                </div>

                <g:hiddenField name="emsStaffAcademicEducationInfos[${i}].id" value="${emsStaffAcademicEducationInfosInstance?.id}"/>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsStaffAcademicEducationInfosDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>