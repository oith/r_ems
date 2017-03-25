<%@ page import="org.reflection.com.ComLanguage" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comLanguageInstance, field: 'comLookupLanguage', 'has-error')} required'>
            <label class='required'><g:message code="comLanguage.comLookupLanguage.label" default="Com Lookup Language"/></label>
            <g:select name="comLookupLanguage" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${comLanguageInstance?.comLookupLanguage?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='comLanguageInstance' field='comLookupLanguage'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comLanguageInstance, field: 'sortingOrder', 'has-error')}'>
            <label><g:message code="comLanguage.sortingOrder.label" default="Sorting Order"/></label>
            <g:field type="number" name="sortingOrder" class="form-control" value="${comLanguageInstance?.sortingOrder}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comLanguageInstance' field='sortingOrder'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comLanguageInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="comLanguage.remarks.label" default="Remarks"/></label>
            <g:textField name="remarks" class="form-control" value="${comLanguageInstance?.remarks}"/>
            <g:renderErrors bean='comLanguageInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comLanguageInstance, field: 'readingValue', 'has-error')}'>
            <label><g:message code="comLanguage.readingValue.label" default="Reading Value"/></label>
            <g:field type="number" name="readingValue" class="form-control" value="${comLanguageInstance?.readingValue}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comLanguageInstance' field='readingValue'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comLanguageInstance, field: 'speakingValue', 'has-error')}'>
            <label><g:message code="comLanguage.speakingValue.label" default="Speaking Value"/></label>
            <g:field type="number" name="speakingValue" class="form-control" value="${comLanguageInstance?.speakingValue}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comLanguageInstance' field='speakingValue'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comLanguageInstance, field: 'understandingValue', 'has-error')}'>
            <label><g:message code="comLanguage.understandingValue.label" default="Understanding Value"/></label>
            <g:field type="number" name="understandingValue" class="form-control" value="${comLanguageInstance?.understandingValue}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comLanguageInstance' field='understandingValue'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comLanguageInstance, field: 'writingValue', 'has-error')}'>
            <label><g:message code="comLanguage.writingValue.label" default="Writing Value"/></label>
            <g:field type="number" name="writingValue" class="form-control" value="${comLanguageInstance?.writingValue}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comLanguageInstance' field='writingValue'/>
        </div>
    </div>

</fieldset>
