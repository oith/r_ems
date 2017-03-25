

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsStaffAcademicContactInfos.pageTitle.label', default: 'Ems Staff Academic Contact Infos Details')}
    </legend>
    <g:each in="${emsStaffAcademicContactInfosList ?: new org.reflection.ems.EmsStaffAcademicContactInfo()}" status="i" var="emsStaffAcademicContactInfosInstance">
        <div class='box box-info emsStaffAcademicContactInfosDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactInfosInstance, field: 'comContactType', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicContactInfos.comContactType.label" default="Com Contact Type"/></label>
                        <g:select name="emsStaffAcademicContactInfos[${i}].comContactType" class="form-control" from="${org.reflection.com.ComContactType?.values()}" keys="${org.reflection.com.ComContactType.values()*.name()}" value="${emsStaffAcademicContactInfoInstance?.comContactType?.name()}"  noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicContactInfosInstance' field='comContactType'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactInfosInstance, field: 'contactValue', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicContactInfos.contactValue.label" default="Contact Value"/></label>
                        <g:textField name="emsStaffAcademicContactInfos[${i}].contactValue" class="form-control" value="${emsStaffAcademicContactInfoInstance?.contactValue}" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicContactInfosInstance' field='contactValue'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactInfosInstance, field: 'slNo', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactInfos.slNo.label" default="Sl No"/></label>
                        <g:field type="number" name="emsStaffAcademicContactInfos[${i}].slNo" class="form-control" value="${emsStaffAcademicContactInfoInstance?.slNo}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsStaffAcademicContactInfosInstance' field='slNo'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactInfosInstance, field: 'imeiNo', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactInfos.imeiNo.label" default="Imei No"/></label>
                        <g:textField name="emsStaffAcademicContactInfos[${i}].imeiNo" class="form-control" value="${emsStaffAcademicContactInfoInstance?.imeiNo}"/>
                        <g:renderErrors bean='emsStaffAcademicContactInfosInstance' field='imeiNo'/>
                    </div>
                </div>

                <g:hiddenField name="emsStaffAcademicContactInfos[${i}].id" value="${emsStaffAcademicContactInfosInstance?.id}"/>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsStaffAcademicContactInfosDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>