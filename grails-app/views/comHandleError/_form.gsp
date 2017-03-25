<%@ page import="org.reflection.com.ComHandleError" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comHandleErrorInstance, field: 'functionName', 'has-error')} required'>
            <label class='required'><g:message code="comHandleError.functionName.label" default="Function Name"/></label>
            <g:textField name="functionName" class="form-control" value="${comHandleErrorInstance?.functionName}" maxlength="30" required="required"/>
            <g:renderErrors bean='comHandleErrorInstance' field='functionName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: comHandleErrorInstance, field: 'errorMessage', 'has-error')} required'>
            <label class='required'><g:message code="comHandleError.errorMessage.label" default="Error Message"/></label>
            <g:textArea name="errorMessage" class="form-control" value="${comHandleErrorInstance?.errorMessage}" rows="2" cols="40" maxlength="2000" required="required"/>
            <g:renderErrors bean='comHandleErrorInstance' field='errorMessage'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comHandleErrorInstance, field: 'errorCode', 'has-error')} required'>
            <label class='required'><g:message code="comHandleError.errorCode.label" default="Error Code"/></label>
            <g:textField name="errorCode" class="form-control" value="${comHandleErrorInstance?.errorCode}" maxlength="30" required="required"/>
            <g:renderErrors bean='comHandleErrorInstance' field='errorCode'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comHandleErrorInstance, field: 'errorDate', 'has-error')} required'>
            <label class='required'><g:message code="comHandleError.errorDate.label" default="Error Date"/></label>
            <g:textField name="errorDate" class="form-control dtp-date" value="${comHandleErrorInstance?.errorDate?.format(grailsApplication.config.format.dtp.date)}" precision="day" required="required"/>
            <g:renderErrors bean='comHandleErrorInstance' field='errorDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comHandleErrorInstance, field: 'authUserProcBy', 'has-error')} required'>
            <label class='required'><g:message code="comHandleError.authUserProcBy.label" default="Auth User Proc By"/></label>
            <g:select name="authUserProcBy" class="form-control many-to-one" from="${org.reflection.auth.AuthUser.list()}" value="${comHandleErrorInstance?.authUserProcBy?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='comHandleErrorInstance' field='authUserProcBy'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comHandleErrorInstance, field: 'uniqueId', 'has-error')} required'>
            <label class='required'><g:message code="comHandleError.uniqueId.label" default="Unique Id"/></label>
            <g:textField name="uniqueId" class="form-control" value="${comHandleErrorInstance?.uniqueId}" required="required"/>
            <g:renderErrors bean='comHandleErrorInstance' field='uniqueId'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comHandleErrorInstance, field: 'uniqueIdSub', 'has-error')}'>
            <label><g:message code="comHandleError.uniqueIdSub.label" default="Unique Id Sub"/></label>
            <g:textField name="uniqueIdSub" class="form-control" value="${comHandleErrorInstance?.uniqueIdSub}" maxlength="100"/>
            <g:renderErrors bean='comHandleErrorInstance' field='uniqueIdSub'/>
        </div>
    </div>

</fieldset>
