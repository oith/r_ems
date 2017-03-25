<%@ page import="org.reflection.com.ComDepartment" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comDepartmentInstance, field: 'name', 'has-error')} required'>
            <label class='required'><g:message code="comDepartment.name.label" default="Name"/></label>
            <g:textField name="name" class="form-control" value="${comDepartmentInstance?.name}" maxlength="100" required="required"/>
            <g:renderErrors bean='comDepartmentInstance' field='name'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comDepartmentInstance, field: 'code', 'has-error')} required'>
            <label class='required'><g:message code="comDepartment.code.label" default="Code"/></label>
            <g:textField name="code" class="form-control" value="${comDepartmentInstance?.code}" maxlength="30" required="required"/>
            <g:renderErrors bean='comDepartmentInstance' field='code'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: comDepartmentInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="comDepartment.remarks.label" default="Remarks"/></label>
            <g:textArea name="remarks" class="form-control" value="${comDepartmentInstance?.remarks}" rows="2" cols="40" maxlength="500"/>
            <g:renderErrors bean='comDepartmentInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comDepartmentInstance, field: 'shortName', 'has-error')}'>
            <label><g:message code="comDepartment.shortName.label" default="Short Name"/></label>
            <g:textField name="shortName" class="form-control" value="${comDepartmentInstance?.shortName}" maxlength="20"/>
            <g:renderErrors bean='comDepartmentInstance' field='shortName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comDepartmentInstance, field: 'keyword', 'has-error')}'>
            <label><g:message code="comDepartment.keyword.label" default="Keyword"/></label>
            <g:textField name="keyword" class="form-control" value="${comDepartmentInstance?.keyword}"/>
            <g:renderErrors bean='comDepartmentInstance' field='keyword'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comDepartmentInstance, field: 'sortOrder', 'has-error')}'>
            <label><g:message code="comDepartment.sortOrder.label" default="Sort Order"/></label>
            <g:field type="number" name="sortOrder" class="form-control" value="${comDepartmentInstance?.sortOrder}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comDepartmentInstance' field='sortOrder'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comDepartmentInstance, field: 'isActive', 'has-error')}'>
            <label><g:message code="comDepartment.isActive.label" default="Is Active"/></label>
            <g:checkBox class="cb" name="isActive"  value="${comDepartmentInstance?.isActive}" />
            <g:renderErrors bean='comDepartmentInstance' field='isActive'/>
        </div>
    </div>

</fieldset>
