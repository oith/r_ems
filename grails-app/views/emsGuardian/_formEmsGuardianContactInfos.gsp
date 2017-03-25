<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsGuardianContactInfos.pageTitle.label', default: 'Ems Guardian Contact Infos Details')}
    </legend>
    <g:each in="${emsGuardianContactInfosList ?: new org.reflection.ems.EmsGuardianContactInfo()}" status="i" var="emsGuardianContactInfosInstance">
        <div class='box box-info emsGuardianContactInfosDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianContactInfosInstance, field: 'comContactType', 'has-error')} required'>
                        <label class='required'><g:message code="emsGuardianContactInfos.comContactType.label" default="Com Contact Type"/></label>
                        <g:select name="emsGuardianContactInfos[${i}].comContactType" class="form-control" from="${org.reflection.com.ComContactType?.values()}" keys="${org.reflection.com.ComContactType.values()*.name()}" value="${emsGuardianContactInfoInstance?.comContactType?.name()}"  noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsGuardianContactInfosInstance' field='comContactType'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianContactInfosInstance, field: 'contactValue', 'has-error')} required'>
                        <label class='required'><g:message code="emsGuardianContactInfos.contactValue.label" default="Contact Value"/></label>
                        <g:textField name="emsGuardianContactInfos[${i}].contactValue" class="form-control" value="${emsGuardianContactInfoInstance?.contactValue}" required="required"/>
                        <g:renderErrors bean='emsGuardianContactInfosInstance' field='contactValue'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianContactInfosInstance, field: 'slNo', 'has-error')}'>
                        <label><g:message code="emsGuardianContactInfos.slNo.label" default="Sl No"/></label>
                        <g:field type="number" name="emsGuardianContactInfos[${i}].slNo" class="form-control" value="${emsGuardianContactInfoInstance?.slNo}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsGuardianContactInfosInstance' field='slNo'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsGuardianContactInfosInstance, field: 'imeiNo', 'has-error')}'>
                        <label><g:message code="emsGuardianContactInfos.imeiNo.label" default="Imei No"/></label>
                        <g:textField name="emsGuardianContactInfos[${i}].imeiNo" class="form-control" value="${emsGuardianContactInfoInstance?.imeiNo}"/>
                        <g:renderErrors bean='emsGuardianContactInfosInstance' field='imeiNo'/>
                    </div>
                </div>

                <g:hiddenField name="emsGuardianContactInfos[${i}].id" value="${emsGuardianContactInfosInstance?.id}"/>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsGuardianContactInfosDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>