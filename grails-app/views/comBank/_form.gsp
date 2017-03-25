<%@ page import="org.reflection.com.ComBank" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comBankInstance, field: 'title', 'has-error')} required'>
            <label class='required'><g:message code="comBank.title.label" default="Title"/></label>
            <g:textField name="title" class="form-control" value="${comBankInstance?.title}" required="required"/>
            <g:renderErrors bean='comBankInstance' field='title'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comBankInstance, field: 'isActive', 'has-error')}'>
            <label><g:message code="comBank.isActive.label" default="Is Active"/></label>
            <g:checkBox class="cb" name="isActive" value="${comBankInstance?.isActive}"/>
            <g:renderErrors bean='comBankInstance' field='isActive'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comBankInstance, field: 'sortOrder', 'has-error')}'>
            <label><g:message code="comBank.sortOrder.label" default="Sort Order"/></label>
            <g:field type="number" name="sortOrder" class="form-control" value="${comBankInstance?.sortOrder}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comBankInstance' field='sortOrder'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comBankInstance, field: 'titleNative', 'has-error')}'>
            <label><g:message code="comBank.titleNative.label" default="Title Native"/></label>
            <g:textField name="titleNative" class="form-control" value="${comBankInstance?.titleNative}"/>
            <g:renderErrors bean='comBankInstance' field='titleNative'/>
        </div>
    </div>

</fieldset>
