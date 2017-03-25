<%@ page import="org.reflection.auth.AuthRole" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authRoleInstance, field: 'authority', 'has-error')} required'>
            <label class='required'><g:message code="authRole.authority.label" default="Authority"/></label>
            <g:textField name="authority" class="form-control" value="${authRoleInstance?.authority}" required="required"/>
            <g:renderErrors bean='authRoleInstance' field='authority'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authRoleInstance, field: 'isActive', 'has-error')}'>
            <label><g:message code="authRole.isActive.label" default="Is Active"/></label>
            <g:checkBox class="cb" name="isActive"  value="${authRoleInstance?.isActive}" />
            <g:renderErrors bean='authRoleInstance' field='isActive'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: authRoleInstance, field: 'description', 'has-error')}'>
            <label><g:message code="authRole.description.label" default="Description"/></label>
            <g:textArea name="description" class="form-control" value="${authRoleInstance?.description}" rows="2" cols="40" maxlength="255"/>
            <g:renderErrors bean='authRoleInstance' field='description'/>
        </div>
    </div>

</fieldset>
