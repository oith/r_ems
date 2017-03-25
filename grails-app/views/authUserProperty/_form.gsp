<!--
Use These line of code for : message.properties

#------------------------------------------------------------------------------------------------------------------------------------------------------
#                Auth User Property                                                                                                                    
#------------------------------------------------------------------------------------------------------------------------------------------------------
authUserProperty.pageTitle.label=Auth User Property
authUserProperty.authMenuType.label=Auth Menu Type
authUserProperty.authUser.label=Auth User
authUserProperty.createdBy.label=Created By
authUserProperty.createdDate.label=Created Date
authUserProperty.isActive.label=Is Active
authUserProperty.modifiedBy.label=Modified By
authUserProperty.modifiedDate.label=Modified Date
authUserProperty.remarks.label=Remarks
#------------------------------------------------------------------------------------------------------------------------------------------------------

-->
<%@ page import="org.reflection.auth.AuthUserProperty" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authUserPropertyInstance, field: 'authMenuType', 'has-error')} required'>
            <label class='required'><g:message code="authUserProperty.authMenuType.label" default="Auth Menu Type"/></label>
            <g:select name="authMenuType" class="form-control" from="${org.reflection.auth.AuthMenuType?.values()}" keys="${org.reflection.auth.AuthMenuType.values()*.name()}" value="${authUserPropertyInstance?.authMenuType?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='authUserPropertyInstance' field='authMenuType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authUserPropertyInstance, field: 'authUser', 'has-error')} required'>
            <label class='required'><g:message code="authUserProperty.authUser.label" default="Auth User"/></label>
            <g:select name="authUser" class="form-control many-to-one" from="${org.reflection.auth.AuthUser.list()}" value="${authUserPropertyInstance?.authUser?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='authUserPropertyInstance' field='authUser'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: authUserPropertyInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="authUserProperty.remarks.label" default="Remarks"/></label>
            <g:textArea name="remarks" class="form-control" value="${authUserPropertyInstance?.remarks}" rows="2" cols="40" maxlength="500"/>
            <g:renderErrors bean='authUserPropertyInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: authUserPropertyInstance, field: 'isActive', 'has-error')}'>
            <label><g:message code="authUserProperty.isActive.label" default="Is Active"/></label>
            <g:checkBox class="cb" name="isActive"  value="${authUserPropertyInstance?.isActive}" />
            <g:renderErrors bean='authUserPropertyInstance' field='isActive'/>
        </div>
    </div>

</fieldset>
