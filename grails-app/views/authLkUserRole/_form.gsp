<%@ page import="org.reflection.auth.AuthLkUserRole" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authLkUserRoleInstance, field: 'authRole', 'has-error')} required'>
            <label class='required'><g:message code="authLkUserRole.authRole.label" default="Auth Role"/></label>
            <g:select name="authRole" class="form-control many-to-one" from="${org.reflection.auth.AuthRole.list()}" value="${authLkUserRoleInstance?.authRole?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='authLkUserRoleInstance' field='authRole'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authLkUserRoleInstance, field: 'authUser', 'has-error')} required'>
            <label class='required'><g:message code="authLkUserRole.authUser.label" default="Auth User"/></label>
            <g:select name="authUser" class="form-control many-to-one" from="${org.reflection.auth.AuthUser.list()}" value="${authLkUserRoleInstance?.authUser?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='authLkUserRoleInstance' field='authUser'/>
        </div>
    </div>

</fieldset>
