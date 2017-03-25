<%@ page import="org.reflection.ems.EmsStaffAcademicLanguage" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicLanguageInstance, field: 'comLookupLanguage', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicLanguage.comLookupLanguage.label" default="Com Lookup Language"/></label>
            <g:select name="comLookupLanguage" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${emsStaffAcademicLanguageInstance?.comLookupLanguage?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicLanguageInstance' field='comLookupLanguage'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicLanguageInstance, field: 'sortingOrder', 'has-error')}'>
            <label><g:message code="emsStaffAcademicLanguage.sortingOrder.label" default="Sorting Order"/></label>
            <g:field type="number" name="sortingOrder" class="form-control" value="${emsStaffAcademicLanguageInstance?.sortingOrder}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsStaffAcademicLanguageInstance' field='sortingOrder'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicLanguageInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="emsStaffAcademicLanguage.remarks.label" default="Remarks"/></label>
            <g:textField name="remarks" class="form-control" value="${emsStaffAcademicLanguageInstance?.remarks}"/>
            <g:renderErrors bean='emsStaffAcademicLanguageInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicLanguageInstance, field: 'readingValue', 'has-error')}'>
            <label><g:message code="emsStaffAcademicLanguage.readingValue.label" default="Reading Value"/></label>
            <g:field type="number" name="readingValue" class="form-control" value="${emsStaffAcademicLanguageInstance?.readingValue}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsStaffAcademicLanguageInstance' field='readingValue'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicLanguageInstance, field: 'speakingValue', 'has-error')}'>
            <label><g:message code="emsStaffAcademicLanguage.speakingValue.label" default="Speaking Value"/></label>
            <g:field type="number" name="speakingValue" class="form-control" value="${emsStaffAcademicLanguageInstance?.speakingValue}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsStaffAcademicLanguageInstance' field='speakingValue'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicLanguageInstance, field: 'understandingValue', 'has-error')}'>
            <label><g:message code="emsStaffAcademicLanguage.understandingValue.label" default="Understanding Value"/></label>
            <g:field type="number" name="understandingValue" class="form-control" value="${emsStaffAcademicLanguageInstance?.understandingValue}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsStaffAcademicLanguageInstance' field='understandingValue'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicLanguageInstance, field: 'writingValue', 'has-error')}'>
            <label><g:message code="emsStaffAcademicLanguage.writingValue.label" default="Writing Value"/></label>
            <g:field type="number" name="writingValue" class="form-control" value="${emsStaffAcademicLanguageInstance?.writingValue}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsStaffAcademicLanguageInstance' field='writingValue'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicLanguageInstance, field: 'emsStaffAcademic', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicLanguage.emsStaffAcademic.label" default="Ems Staff Academic"/></label>
            <g:select name="emsStaffAcademic" class="form-control many-to-one" from="${org.reflection.ems.EmsStaffAcademic.list()}" value="${emsStaffAcademicLanguageInstance?.emsStaffAcademic?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicLanguageInstance' field='emsStaffAcademic'/>
        </div>
    </div>

</fieldset>
