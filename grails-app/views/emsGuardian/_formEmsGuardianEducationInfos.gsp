<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsGuardianEducationInfos.pageTitle.label', default: 'Ems Guardian Education Infos Details')}
    </legend>
    <g:each in="${emsGuardianEducationInfosList ?: new org.reflection.ems.EmsGuardianEducationInfo()}" status="i" var="emsGuardianEducationInfosInstance">
        <div class='box box-info emsGuardianEducationInfosDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianEducationInfosInstance, field: 'comLookupEduSubGroup', 'has-error')} required'>
                        <label class='required'><g:message code="emsGuardianEducationInfos.comLookupEduSubGroup.label" default="Com Lookup Edu Sub Group"/></label>
                        <g:select name="emsGuardianEducationInfos[${i}].comLookupEduSubGroup" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${emsGuardianEducationInfoInstance?.comLookupEduSubGroup?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsGuardianEducationInfosInstance' field='comLookupEduSubGroup'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianEducationInfosInstance, field: 'comLookupEducation', 'has-error')} required'>
                        <label class='required'><g:message code="emsGuardianEducationInfos.comLookupEducation.label" default="Com Lookup Education"/></label>
                        <g:select name="emsGuardianEducationInfos[${i}].comLookupEducation" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${emsGuardianEducationInfoInstance?.comLookupEducation?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsGuardianEducationInfosInstance' field='comLookupEducation'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianEducationInfosInstance, field: 'organization', 'has-error')} required'>
                        <label class='required'><g:message code="emsGuardianEducationInfos.organization.label" default="Organization"/></label>
                        <g:textField name="emsGuardianEducationInfos[${i}].organization" class="form-control" value="${emsGuardianEducationInfoInstance?.organization}" required="required"/>
                        <g:renderErrors bean='emsGuardianEducationInfosInstance' field='organization'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianEducationInfosInstance, field: 'result', 'has-error')} required'>
                        <label class='required'><g:message code="emsGuardianEducationInfos.result.label" default="Result"/></label>
                        <g:textField name="emsGuardianEducationInfos[${i}].result" class="form-control" value="${emsGuardianEducationInfoInstance?.result}" required="required"/>
                        <g:renderErrors bean='emsGuardianEducationInfosInstance' field='result'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianEducationInfosInstance, field: 'resultOutOf', 'has-error')} required'>
                        <label class='required'><g:message code="emsGuardianEducationInfos.resultOutOf.label" default="Result Out Of"/></label>
                        <g:textField name="emsGuardianEducationInfos[${i}].resultOutOf" class="form-control" value="${emsGuardianEducationInfoInstance?.resultOutOf}" required="required"/>
                        <g:renderErrors bean='emsGuardianEducationInfosInstance' field='resultOutOf'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianEducationInfosInstance, field: 'passingYear', 'has-error')} required'>
                        <label class='required'><g:message code="emsGuardianEducationInfos.passingYear.label" default="Passing Year"/></label>
                        <g:field type="number" name="emsGuardianEducationInfos[${i}].passingYear" class="form-control" value="${emsGuardianEducationInfoInstance?.passingYear}" min="0" max="9999999" step="1.00" required="required"/>
                        <g:renderErrors bean='emsGuardianEducationInfosInstance' field='passingYear'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianEducationInfosInstance, field: 'remarks', 'has-error')}'>
                        <label><g:message code="emsGuardianEducationInfos.remarks.label" default="Remarks"/></label>
                        <g:textField name="emsGuardianEducationInfos[${i}].remarks" class="form-control" value="${emsGuardianEducationInfoInstance?.remarks}"/>
                        <g:renderErrors bean='emsGuardianEducationInfosInstance' field='remarks'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianEducationInfosInstance, field: 'slNo', 'has-error')}'>
                        <label><g:message code="emsGuardianEducationInfos.slNo.label" default="Sl No"/></label>
                        <g:field type="number" name="emsGuardianEducationInfos[${i}].slNo" class="form-control" value="${emsGuardianEducationInfoInstance?.slNo}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsGuardianEducationInfosInstance' field='slNo'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianEducationInfosInstance, field: 'yearFrom', 'has-error')}'>
                        <label><g:message code="emsGuardianEducationInfos.yearFrom.label" default="Year From"/></label>
                        <g:field type="number" name="emsGuardianEducationInfos[${i}].yearFrom" class="form-control" value="${emsGuardianEducationInfoInstance?.yearFrom}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsGuardianEducationInfosInstance' field='yearFrom'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianEducationInfosInstance, field: 'yearTo', 'has-error')}'>
                        <label><g:message code="emsGuardianEducationInfos.yearTo.label" default="Year To"/></label>
                        <g:field type="number" name="emsGuardianEducationInfos[${i}].yearTo" class="form-control" value="${emsGuardianEducationInfoInstance?.yearTo}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsGuardianEducationInfosInstance' field='yearTo'/>
                    </div>
                </div>

                <g:hiddenField name="emsGuardianEducationInfos[${i}].id" value="${emsGuardianEducationInfosInstance?.id}"/>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsGuardianEducationInfosDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>