<%@ page import="org.reflection.com.ComDesignation" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comDesignationInstance, field: 'name', 'has-error')} required'>
            <label class='required'><g:message code="comDesignation.name.label" default="Name"/></label>
            <g:textField name="name" class="form-control" value="${comDesignationInstance?.name}" maxlength="100" required="required"/>
            <g:renderErrors bean='comDesignationInstance' field='name'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comDesignationInstance, field: 'code', 'has-error')} required'>
            <label class='required'><g:message code="comDesignation.code.label" default="Code"/></label>
            <g:textField name="code" class="form-control" value="${comDesignationInstance?.code}" maxlength="30" required="required"/>
            <g:renderErrors bean='comDesignationInstance' field='code'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comDesignationInstance, field: 'keyword', 'has-error')}'>
            <label><g:message code="comDesignation.keyword.label" default="Keyword"/></label>
            <g:textField name="keyword" class="form-control" value="${comDesignationInstance?.keyword}"/>
            <g:renderErrors bean='comDesignationInstance' field='keyword'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comDesignationInstance, field: 'sortOrder', 'has-error')}'>
            <label><g:message code="comDesignation.sortOrder.label" default="Sort Order"/></label>
            <g:field type="number" name="sortOrder" class="form-control" value="${comDesignationInstance?.sortOrder}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comDesignationInstance' field='sortOrder'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comDesignationInstance, field: 'isActive', 'has-error')}'>
            <label><g:message code="comDesignation.isActive.label" default="Is Active"/></label>
            <g:checkBox class="cb" name="isActive"  value="${comDesignationInstance?.isActive}" />
            <g:renderErrors bean='comDesignationInstance' field='isActive'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comDesignationInstance, field: 'shortName', 'has-error')}'>
            <label><g:message code="comDesignation.shortName.label" default="Short Name"/></label>
            <g:textField name="shortName" class="form-control" value="${comDesignationInstance?.shortName}" maxlength="20"/>
            <g:renderErrors bean='comDesignationInstance' field='shortName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: comDesignationInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="comDesignation.remarks.label" default="Remarks"/></label>
            <g:textArea name="remarks" class="form-control" value="${comDesignationInstance?.remarks}" rows="2" cols="40" maxlength="500"/>
            <g:renderErrors bean='comDesignationInstance' field='remarks'/>
        </div>
    </div>

</fieldset>
