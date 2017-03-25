

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsStaffAcademicLanguages.pageTitle.label', default: 'Ems Staff Academic Languages Details')}
    </legend>
    <g:each in="${emsStaffAcademicLanguagesList ?: new org.reflection.ems.EmsStaffAcademicLanguage()}" status="i" var="emsStaffAcademicLanguagesInstance">
        <div class='box box-info emsStaffAcademicLanguagesDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicLanguagesInstance, field: 'comLookupLanguage', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicLanguages.comLookupLanguage.label" default="Com Lookup Language"/></label>
                        <g:select name="emsStaffAcademicLanguages[${i}].comLookupLanguage" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${emsStaffAcademicLanguageInstance?.comLookupLanguage?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicLanguagesInstance' field='comLookupLanguage'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicLanguagesInstance, field: 'sortingOrder', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicLanguages.sortingOrder.label" default="Sorting Order"/></label>
                        <g:field type="number" name="emsStaffAcademicLanguages[${i}].sortingOrder" class="form-control" value="${emsStaffAcademicLanguageInstance?.sortingOrder}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsStaffAcademicLanguagesInstance' field='sortingOrder'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicLanguagesInstance, field: 'remarks', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicLanguages.remarks.label" default="Remarks"/></label>
                        <g:textField name="emsStaffAcademicLanguages[${i}].remarks" class="form-control" value="${emsStaffAcademicLanguageInstance?.remarks}"/>
                        <g:renderErrors bean='emsStaffAcademicLanguagesInstance' field='remarks'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicLanguagesInstance, field: 'readingValue', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicLanguages.readingValue.label" default="Reading Value"/></label>
                        <g:field type="number" name="emsStaffAcademicLanguages[${i}].readingValue" class="form-control" value="${emsStaffAcademicLanguageInstance?.readingValue}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsStaffAcademicLanguagesInstance' field='readingValue'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicLanguagesInstance, field: 'speakingValue', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicLanguages.speakingValue.label" default="Speaking Value"/></label>
                        <g:field type="number" name="emsStaffAcademicLanguages[${i}].speakingValue" class="form-control" value="${emsStaffAcademicLanguageInstance?.speakingValue}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsStaffAcademicLanguagesInstance' field='speakingValue'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicLanguagesInstance, field: 'understandingValue', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicLanguages.understandingValue.label" default="Understanding Value"/></label>
                        <g:field type="number" name="emsStaffAcademicLanguages[${i}].understandingValue" class="form-control" value="${emsStaffAcademicLanguageInstance?.understandingValue}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsStaffAcademicLanguagesInstance' field='understandingValue'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicLanguagesInstance, field: 'writingValue', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicLanguages.writingValue.label" default="Writing Value"/></label>
                        <g:field type="number" name="emsStaffAcademicLanguages[${i}].writingValue" class="form-control" value="${emsStaffAcademicLanguageInstance?.writingValue}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsStaffAcademicLanguagesInstance' field='writingValue'/>
                    </div>
                </div>

                <g:hiddenField name="emsStaffAcademicLanguages[${i}].id" value="${emsStaffAcademicLanguagesInstance?.id}"/>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsStaffAcademicLanguagesDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>