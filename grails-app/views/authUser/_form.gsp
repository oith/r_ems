<%@ page import="org.reflection.auth.AuthUser" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authUserInstance, field: 'fullName', 'has-error')} required'>
            <label class='required'><g:message code="authUser.fullName.label" default="Full Name"/></label>
            <g:textField name="fullName" class="form-control" value="${authUserInstance?.fullName}" maxlength="45" required="required"/>
            <g:renderErrors bean='authUserInstance' field='fullName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authUserInstance, field: 'displayName', 'has-error')} required'>
            <label class='required'><g:message code="authUser.displayName.label" default="Display Name"/></label>
            <g:textField name="displayName" class="form-control" value="${authUserInstance?.displayName}" maxlength="9" required="required"/>
            <g:renderErrors bean='authUserInstance' field='displayName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authUserInstance, field: 'password', 'has-error')} required'>
            <label class='required'><g:message code="authUser.password.label" default="Password"/></label>
            <g:textField name="password" class="form-control" value="${authUserInstance?.password}" maxlength="128" required="required"/>
            <g:renderErrors bean='authUserInstance' field='password'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authUserInstance, field: 'username', 'has-error')} required'>
            <label class='required'><g:message code="authUser.username.label" default="Username"/></label>
            <g:textField name="username" class="form-control" value="${authUserInstance?.username}" maxlength="9" required="required"/>
            <g:renderErrors bean='authUserInstance' field='username'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authUserInstance, field: 'enabled', 'has-error')}'>
            <label><g:message code="authUser.enabled.label" default="Enabled"/></label>
            <g:checkBox class="cb" name="enabled"  value="${authUserInstance?.enabled}" />
            <g:renderErrors bean='authUserInstance' field='enabled'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authUserInstance, field: 'accountExpired', 'has-error')}'>
            <label><g:message code="authUser.accountExpired.label" default="Account Expired"/></label>
            <g:checkBox class="cb" name="accountExpired"  value="${authUserInstance?.accountExpired}" />
            <g:renderErrors bean='authUserInstance' field='accountExpired'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authUserInstance, field: 'accountLocked', 'has-error')}'>
            <label><g:message code="authUser.accountLocked.label" default="Account Locked"/></label>
            <g:checkBox class="cb" name="accountLocked"  value="${authUserInstance?.accountLocked}" />
            <g:renderErrors bean='authUserInstance' field='accountLocked'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authUserInstance, field: 'passwordExpired', 'has-error')}'>
            <label><g:message code="authUser.passwordExpired.label" default="Password Expired"/></label>
            <g:checkBox class="cb" name="passwordExpired"  value="${authUserInstance?.passwordExpired}" />
            <g:renderErrors bean='authUserInstance' field='passwordExpired'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authUserInstance, field: 'phone', 'has-error')}'>
            <label><g:message code="authUser.phone.label" default="Phone"/></label>
            <g:textField name="phone" class="form-control" value="${authUserInstance?.phone}" maxlength="14"/>
            <g:renderErrors bean='authUserInstance' field='phone'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authUserInstance, field: 'email', 'has-error')}'>
            <label><g:message code="authUser.email.label" default="Email"/></label>
            <g:field type="email" name="email" class="form-control" value="${authUserInstance?.email}" placeholder="someone@example.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}\$" title="someone@example.com"/>
            <g:renderErrors bean='authUserInstance' field='email'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: authUserInstance, field: 'image', 'has-error')}'>
            <label><g:message code="authUser.image.label" default="Image"/></label>
            <g:textArea name="image" class="form-control" value="${authUserInstance?.image}" rows="2" cols="40" maxlength="255"/>
            <g:renderErrors bean='authUserInstance' field='image'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: authUserInstance, field: 'signature', 'has-error')}'>
            <label><g:message code="authUser.signature.label" default="Signature"/></label>
            <g:textArea name="signature" class="form-control" value="${authUserInstance?.signature}" rows="2" cols="40" maxlength="255"/>
            <g:renderErrors bean='authUserInstance' field='signature'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: authUserInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="authUser.remarks.label" default="Remarks"/></label>
            <g:textArea name="remarks" class="form-control" value="${authUserInstance?.remarks}" rows="2" cols="40" maxlength="255"/>
            <g:renderErrors bean='authUserInstance' field='remarks'/>
        </div>
    </div>

</fieldset>
