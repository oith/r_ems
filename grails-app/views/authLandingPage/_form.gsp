<%@ page import="org.reflection.auth.AuthLandingPage" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: authLandingPageInstance, field: 'pageUrl', 'has-error')} required'>
            <label class='required'><g:message code="authLandingPage.pageUrl.label" default="Page Url"/></label>
            <g:textArea name="pageUrl" class="form-control" value="${authLandingPageInstance?.pageUrl}" rows="2" cols="40" maxlength="2000" required="required"/>
            <g:renderErrors bean='authLandingPageInstance' field='pageUrl'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authLandingPageInstance, field: 'authRole', 'has-error')} required'>
            <label class='required'><g:message code="authLandingPage.authRole.label" default="Auth Role"/></label>
            <g:select name="authRole" class="form-control many-to-one" from="${org.reflection.auth.AuthRole.list()}" value="${authLandingPageInstance?.authRole?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='authLandingPageInstance' field='authRole'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authLandingPageInstance, field: 'isActive', 'has-error')}'>
            <label><g:message code="authLandingPage.isActive.label" default="Is Active"/></label>
            <g:checkBox class="cb" name="isActive"  value="${authLandingPageInstance?.isActive}" />
            <g:renderErrors bean='authLandingPageInstance' field='isActive'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: authLandingPageInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="authLandingPage.remarks.label" default="Remarks"/></label>
            <g:textArea name="remarks" class="form-control" value="${authLandingPageInstance?.remarks}" rows="2" cols="40" maxlength="500"/>
            <g:renderErrors bean='authLandingPageInstance' field='remarks'/>
        </div>
    </div>

</fieldset>
