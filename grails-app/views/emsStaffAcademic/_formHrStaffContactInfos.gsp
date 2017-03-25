

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'hrStaffContactInfos.pageTitle.label', default: 'Hr Staff Contact Infos Details')}
    </legend>
    <g:each in="${hrStaffContactInfosList ?: new org.reflection.hr.HrStaffContactInfo()}" status="i" var="hrStaffContactInfosInstance">
        <div class='box box-info hrStaffContactInfosDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactInfosInstance, field: 'comContactType', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffContactInfos.comContactType.label" default="Com Contact Type"/></label>
                        <g:select name="hrStaffContactInfos[${i}].comContactType" class="form-control" from="${org.reflection.com.ComContactType?.values()}" keys="${org.reflection.com.ComContactType.values()*.name()}" value="${hrStaffContactInfoInstance?.comContactType?.name()}"  noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='hrStaffContactInfosInstance' field='comContactType'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactInfosInstance, field: 'contactValue', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffContactInfos.contactValue.label" default="Contact Value"/></label>
                        <g:textField name="hrStaffContactInfos[${i}].contactValue" class="form-control" value="${hrStaffContactInfoInstance?.contactValue}" required="required"/>
                        <g:renderErrors bean='hrStaffContactInfosInstance' field='contactValue'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactInfosInstance, field: 'slNo', 'has-error')}'>
                        <label><g:message code="hrStaffContactInfos.slNo.label" default="Sl No"/></label>
                        <g:field type="number" name="hrStaffContactInfos[${i}].slNo" class="form-control" value="${hrStaffContactInfoInstance?.slNo}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='hrStaffContactInfosInstance' field='slNo'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactInfosInstance, field: 'imeiNo', 'has-error')}'>
                        <label><g:message code="hrStaffContactInfos.imeiNo.label" default="Imei No"/></label>
                        <g:textField name="hrStaffContactInfos[${i}].imeiNo" class="form-control" value="${hrStaffContactInfoInstance?.imeiNo}"/>
                        <g:renderErrors bean='hrStaffContactInfosInstance' field='imeiNo'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactInfosInstance, field: 'hrStaff', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffContactInfos.hrStaff.label" default="Hr Staff"/></label>
                        <g:select name="hrStaffContactInfos[${i}].hrStaff" class="form-control many-to-one" from="${org.reflection.hr.HrStaff.list()}" value="${hrStaffContactInfoInstance?.hrStaff?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='hrStaffContactInfosInstance' field='hrStaff'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("hrStaffContactInfosDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>