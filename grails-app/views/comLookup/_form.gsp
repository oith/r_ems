<%@ page import="org.reflection.com.ComLookup" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comLookupInstance, field: 'title', 'has-error')} required'>
            <label class='required'><g:message code="comLookup.title.label" default="Title"/></label>
            <g:textField name="title" class="form-control" value="${comLookupInstance?.title}" maxlength="50" required="required"/>
            <g:renderErrors bean='comLookupInstance' field='title'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comLookupInstance, field: 'keyword', 'has-error')} required'>
            <label class='required'><g:message code="comLookup.keyword.label" default="Keyword"/></label>
            <g:textField name="keyword" class="form-control" value="${comLookupInstance?.keyword}" maxlength="30" required="required"/>
            <g:renderErrors bean='comLookupInstance' field='keyword'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comLookupInstance, field: 'comLookupType', 'has-error')} required'>
            <label class='required'><g:message code="comLookup.comLookupType.label" default="Com Lookup Type"/></label>
            <g:select name="comLookupType" class="form-control" from="${org.reflection.com.ComLookupType?.values()}" keys="${org.reflection.com.ComLookupType.values()*.name()}" value="${comLookupInstance?.comLookupType?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='comLookupInstance' field='comLookupType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comLookupInstance, field: 'sortOrder', 'has-error')}'>
            <label><g:message code="comLookup.sortOrder.label" default="Sort Order"/></label>
            <g:field type="number" name="sortOrder" class="form-control" value="${comLookupInstance?.sortOrder}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comLookupInstance' field='sortOrder'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comLookupInstance, field: 'isActive', 'has-error')}'>
            <label><g:message code="comLookup.isActive.label" default="Is Active"/></label><br>
            <g:checkBox class="cb" name="isActive"  value="${comLookupInstance?.isActive}" />
            <g:renderErrors bean='comLookupInstance' field='isActive'/>
        </div>
    </div>

</fieldset>
