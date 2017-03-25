

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'hrStaffEducationInfos.pageTitle.label', default: 'Hr Staff Education Infos Details')}
    </legend>
    <g:each in="${hrStaffEducationInfosList ?: new org.reflection.hr.HrStaffEducationInfo()}" status="i" var="hrStaffEducationInfosInstance">
        <div class='box box-info hrStaffEducationInfosDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffEducationInfosInstance, field: 'comLookupEduSubGroup', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffEducationInfos.comLookupEduSubGroup.label" default="Com Lookup Edu Sub Group"/></label>
                        <g:select name="hrStaffEducationInfos[${i}].comLookupEduSubGroup" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${hrStaffEducationInfoInstance?.comLookupEduSubGroup?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='hrStaffEducationInfosInstance' field='comLookupEduSubGroup'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffEducationInfosInstance, field: 'comLookupEducation', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffEducationInfos.comLookupEducation.label" default="Com Lookup Education"/></label>
                        <g:select name="hrStaffEducationInfos[${i}].comLookupEducation" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${hrStaffEducationInfoInstance?.comLookupEducation?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='hrStaffEducationInfosInstance' field='comLookupEducation'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffEducationInfosInstance, field: 'organization', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffEducationInfos.organization.label" default="Organization"/></label>
                        <g:textField name="hrStaffEducationInfos[${i}].organization" class="form-control" value="${hrStaffEducationInfoInstance?.organization}" required="required"/>
                        <g:renderErrors bean='hrStaffEducationInfosInstance' field='organization'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffEducationInfosInstance, field: 'result', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffEducationInfos.result.label" default="Result"/></label>
                        <g:textField name="hrStaffEducationInfos[${i}].result" class="form-control" value="${hrStaffEducationInfoInstance?.result}" required="required"/>
                        <g:renderErrors bean='hrStaffEducationInfosInstance' field='result'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffEducationInfosInstance, field: 'resultOutOf', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffEducationInfos.resultOutOf.label" default="Result Out Of"/></label>
                        <g:textField name="hrStaffEducationInfos[${i}].resultOutOf" class="form-control" value="${hrStaffEducationInfoInstance?.resultOutOf}" required="required"/>
                        <g:renderErrors bean='hrStaffEducationInfosInstance' field='resultOutOf'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffEducationInfosInstance, field: 'passingYear', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffEducationInfos.passingYear.label" default="Passing Year"/></label>
                        <g:field type="number" name="hrStaffEducationInfos[${i}].passingYear" class="form-control" value="${hrStaffEducationInfoInstance?.passingYear}" min="0" max="9999999" step="1.00" required="required"/>
                        <g:renderErrors bean='hrStaffEducationInfosInstance' field='passingYear'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffEducationInfosInstance, field: 'remarks', 'has-error')}'>
                        <label><g:message code="hrStaffEducationInfos.remarks.label" default="Remarks"/></label>
                        <g:textField name="hrStaffEducationInfos[${i}].remarks" class="form-control" value="${hrStaffEducationInfoInstance?.remarks}"/>
                        <g:renderErrors bean='hrStaffEducationInfosInstance' field='remarks'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffEducationInfosInstance, field: 'slNo', 'has-error')}'>
                        <label><g:message code="hrStaffEducationInfos.slNo.label" default="Sl No"/></label>
                        <g:field type="number" name="hrStaffEducationInfos[${i}].slNo" class="form-control" value="${hrStaffEducationInfoInstance?.slNo}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='hrStaffEducationInfosInstance' field='slNo'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffEducationInfosInstance, field: 'yearFrom', 'has-error')}'>
                        <label><g:message code="hrStaffEducationInfos.yearFrom.label" default="Year From"/></label>
                        <g:field type="number" name="hrStaffEducationInfos[${i}].yearFrom" class="form-control" value="${hrStaffEducationInfoInstance?.yearFrom}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='hrStaffEducationInfosInstance' field='yearFrom'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffEducationInfosInstance, field: 'yearTo', 'has-error')}'>
                        <label><g:message code="hrStaffEducationInfos.yearTo.label" default="Year To"/></label>
                        <g:field type="number" name="hrStaffEducationInfos[${i}].yearTo" class="form-control" value="${hrStaffEducationInfoInstance?.yearTo}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='hrStaffEducationInfosInstance' field='yearTo'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffEducationInfosInstance, field: 'hrStaff', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffEducationInfos.hrStaff.label" default="Hr Staff"/></label>
                        <g:select name="hrStaffEducationInfos[${i}].hrStaff" class="form-control many-to-one" from="${org.reflection.hr.HrStaff.list()}" value="${hrStaffEducationInfoInstance?.hrStaff?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='hrStaffEducationInfosInstance' field='hrStaff'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("hrStaffEducationInfosDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>