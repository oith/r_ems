<%@ page import="org.reflection.adm.AdmParam" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admParamInstance, field: 'cmd', 'has-error')}'>
            <label><g:message code="admParam.cmd.label" default="Cmd"/></label>
            <g:textArea name="cmd" class="form-control" value="${admParamInstance?.cmd}" rows="2" cols="40" maxlength="1000"/>
            <g:renderErrors bean='admParamInstance' field='cmd'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admParamInstance, field: 'captionNative', 'has-error')}'>
            <label><g:message code="admParam.captionNative.label" default="Caption Native"/></label>
            <g:textArea name="captionNative" class="form-control" value="${admParamInstance?.captionNative}" rows="2" cols="40" maxlength="1000"/>
            <g:renderErrors bean='admParamInstance' field='captionNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admParamInstance, field: 'defaultVal', 'has-error')}'>
            <label><g:message code="admParam.defaultVal.label" default="Default Val"/></label>
            <g:textArea name="defaultVal" class="form-control" value="${admParamInstance?.defaultVal}" rows="2" cols="40" maxlength="500"/>
            <g:renderErrors bean='admParamInstance' field='defaultVal'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admParamInstance, field: 'helpText', 'has-error')}'>
            <label><g:message code="admParam.helpText.label" default="Help Text"/></label>
            <g:textArea name="helpText" class="form-control" value="${admParamInstance?.helpText}" rows="2" cols="40" maxlength="1000"/>
            <g:renderErrors bean='admParamInstance' field='helpText'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admParamInstance, field: 'paramName', 'has-error')}'>
            <label><g:message code="admParam.paramName.label" default="Param Name"/></label>
            <g:textField name="paramName" class="form-control" value="${admParamInstance?.paramName}" maxlength="30"/>
            <g:renderErrors bean='admParamInstance' field='paramName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admParamInstance, field: 'paramType', 'has-error')}'>
            <label><g:message code="admParam.paramType.label" default="Param Type"/></label>
            <g:textField name="paramType" class="form-control" value="${admParamInstance?.paramType}" maxlength="20"/>
            <g:renderErrors bean='admParamInstance' field='paramType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admParamInstance, field: 'caption', 'has-error')} required'>
            <label class='required'><g:message code="admParam.caption.label" default="Caption"/></label>
            <g:textField name="caption" class="form-control" value="${admParamInstance?.caption}" required="required"/>
            <g:renderErrors bean='admParamInstance' field='caption'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admParamInstance, field: 'isActive', 'has-error')}'>
            <label><g:message code="admParam.isActive.label" default="Is Active"/></label>
            <g:checkBox class="cb" name="isActive" value="${admParamInstance?.isActive}"/>
            <g:renderErrors bean='admParamInstance' field='isActive'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admParamInstance, field: 'slNo', 'has-error')} required'>
            <label class='required'><g:message code="admParam.slNo.label" default="Sl No"/></label>
            <g:field type="number" name="slNo" class="form-control" value="${admParamInstance?.slNo}" min="0" max="9999999" step="1.00" required="required"/>
            <g:renderErrors bean='admParamInstance' field='slNo'/>
        </div>
    </div>

</fieldset>
