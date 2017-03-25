<%@ page import="org.reflection.adm.AdmProcDtl" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcDtlInstance, field: 'admProcMst', 'has-error')} required'>
            <label class='required'><g:message code="admProcDtl.admProcMst.label" default="Adm Proc Mst"/></label>
            <g:select name="admProcMst" class="form-control many-to-one" from="${org.reflection.adm.AdmProcMst.list()}" value="${admProcDtlInstance?.admProcMst?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='admProcDtlInstance' field='admProcMst'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcDtlInstance, field: 'zoneType', 'has-error')} required'>
            <label class='required'><g:message code="admProcDtl.zoneType.label" default="Zone Type"/></label>
            <g:select name="zoneType" class="form-control" from="${org.reflection.adm.ZoneType?.values()}" keys="${org.reflection.adm.ZoneType.values()*.name()}" value="${admProcDtlInstance?.zoneType?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='admProcDtlInstance' field='zoneType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcDtlInstance, field: 'isActive', 'has-error')}'>
            <label><g:message code="admProcDtl.isActive.label" default="Is Active"/></label>
            <g:checkBox class="cb" name="isActive"  value="${admProcDtlInstance?.isActive}" />
            <g:renderErrors bean='admProcDtlInstance' field='isActive'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcDtlInstance, field: 'isMandatory', 'has-error')}'>
            <label><g:message code="admProcDtl.isMandatory.label" default="Is Mandatory"/></label>
            <g:checkBox class="cb" name="isMandatory"  value="${admProcDtlInstance?.isMandatory}" />
            <g:renderErrors bean='admProcDtlInstance' field='isMandatory'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcDtlInstance, field: 'slNo', 'has-error')}'>
            <label><g:message code="admProcDtl.slNo.label" default="Sl No"/></label>
            <g:field type="number" name="slNo" class="form-control" value="${admProcDtlInstance?.slNo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='admProcDtlInstance' field='slNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcDtlInstance, field: 'admParam', 'has-error')}'>
            <label><g:message code="admProcDtl.admParam.label" default="Adm Param"/></label>
            <g:select name="admParam" class="form-control many-to-one" from="${org.reflection.adm.AdmParam.list()}" value="${admProcDtlInstance?.admParam?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='admProcDtlInstance' field='admParam'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcDtlInstance, field: 'widgetType', 'has-error')}'>
            <label><g:message code="admProcDtl.widgetType.label" default="Widget Type"/></label>
            <g:select name="widgetType" class="form-control" from="${org.reflection.adm.WidgetType?.values()}" keys="${org.reflection.adm.WidgetType.values()*.name()}" value="${admProcDtlInstance?.widgetType?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='admProcDtlInstance' field='widgetType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcDtlInstance, field: 'widgetIdentity', 'has-error')}'>
            <label><g:message code="admProcDtl.widgetIdentity.label" default="Widget Identity"/></label>
            <g:textField name="widgetIdentity" class="form-control" value="${admProcDtlInstance?.widgetIdentity}" maxlength="30"/>
            <g:renderErrors bean='admProcDtlInstance' field='widgetIdentity'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcDtlInstance, field: 'widgetLabel', 'has-error')}'>
            <label><g:message code="admProcDtl.widgetLabel.label" default="Widget Label"/></label>
            <g:textField name="widgetLabel" class="form-control" value="${admProcDtlInstance?.widgetLabel}" maxlength="30"/>
            <g:renderErrors bean='admProcDtlInstance' field='widgetLabel'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admProcDtlInstance, field: 'defaultVal', 'has-error')}'>
            <label><g:message code="admProcDtl.defaultVal.label" default="Default Val"/></label>
            <g:textArea name="defaultVal" class="form-control" value="${admProcDtlInstance?.defaultVal}" rows="2" cols="40" maxlength="500"/>
            <g:renderErrors bean='admProcDtlInstance' field='defaultVal'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admProcDtlInstance, field: 'cmd', 'has-error')}'>
            <label><g:message code="admProcDtl.cmd.label" default="Cmd"/></label>
            <g:textArea name="cmd" class="form-control" value="${admProcDtlInstance?.cmd}" rows="2" cols="40" maxlength="1000"/>
            <g:renderErrors bean='admProcDtlInstance' field='cmd'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admProcDtlInstance, field: 'helpText', 'has-error')}'>
            <label><g:message code="admProcDtl.helpText.label" default="Help Text"/></label>
            <g:textArea name="helpText" class="form-control" value="${admProcDtlInstance?.helpText}" rows="2" cols="40" maxlength="1000"/>
            <g:renderErrors bean='admProcDtlInstance' field='helpText'/>
        </div>
    </div>

</fieldset>
