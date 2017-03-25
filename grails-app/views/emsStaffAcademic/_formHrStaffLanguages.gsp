<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'hrStaffLanguages.pageTitle.label', default: 'Hr Staff Languages Details')}
    </legend>
    <g:each in="${hrStaffLanguagesList ?: new org.reflection.hr.HrStaffLanguage()}" status="i" var="hrStaffLanguagesInstance">
        <div class='box box-info hrStaffLanguagesDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffLanguagesInstance, field: 'comLookupLanguage', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffLanguages.comLookupLanguage.label" default="Com Lookup Language"/></label>
                        <g:select name="hrStaffLanguages[${i}].comLookupLanguage" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${hrStaffLanguageInstance?.comLookupLanguage?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='hrStaffLanguagesInstance' field='comLookupLanguage'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffLanguagesInstance, field: 'sortingOrder', 'has-error')}'>
                        <label><g:message code="hrStaffLanguages.sortingOrder.label" default="Sorting Order"/></label>
                        <g:field type="number" name="hrStaffLanguages[${i}].sortingOrder" class="form-control" value="${hrStaffLanguageInstance?.sortingOrder}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='hrStaffLanguagesInstance' field='sortingOrder'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffLanguagesInstance, field: 'remarks', 'has-error')}'>
                        <label><g:message code="hrStaffLanguages.remarks.label" default="Remarks"/></label>
                        <g:textField name="hrStaffLanguages[${i}].remarks" class="form-control" value="${hrStaffLanguageInstance?.remarks}"/>
                        <g:renderErrors bean='hrStaffLanguagesInstance' field='remarks'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffLanguagesInstance, field: 'readingValue', 'has-error')}'>
                        <label><g:message code="hrStaffLanguages.readingValue.label" default="Reading Value"/></label>
                        <g:field type="number" name="hrStaffLanguages[${i}].readingValue" class="form-control" value="${hrStaffLanguageInstance?.readingValue}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='hrStaffLanguagesInstance' field='readingValue'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffLanguagesInstance, field: 'speakingValue', 'has-error')}'>
                        <label><g:message code="hrStaffLanguages.speakingValue.label" default="Speaking Value"/></label>
                        <g:field type="number" name="hrStaffLanguages[${i}].speakingValue" class="form-control" value="${hrStaffLanguageInstance?.speakingValue}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='hrStaffLanguagesInstance' field='speakingValue'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffLanguagesInstance, field: 'understandingValue', 'has-error')}'>
                        <label><g:message code="hrStaffLanguages.understandingValue.label" default="Understanding Value"/></label>
                        <g:field type="number" name="hrStaffLanguages[${i}].understandingValue" class="form-control" value="${hrStaffLanguageInstance?.understandingValue}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='hrStaffLanguagesInstance' field='understandingValue'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffLanguagesInstance, field: 'writingValue', 'has-error')}'>
                        <label><g:message code="hrStaffLanguages.writingValue.label" default="Writing Value"/></label>
                        <g:field type="number" name="hrStaffLanguages[${i}].writingValue" class="form-control" value="${hrStaffLanguageInstance?.writingValue}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='hrStaffLanguagesInstance' field='writingValue'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffLanguagesInstance, field: 'hrStaff', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffLanguages.hrStaff.label" default="Hr Staff"/></label>
                        <g:select name="hrStaffLanguages[${i}].hrStaff" class="form-control many-to-one" from="${org.reflection.hr.HrStaff.list()}" value="${hrStaffLanguageInstance?.hrStaff?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='hrStaffLanguagesInstance' field='hrStaff'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("hrStaffLanguagesDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>