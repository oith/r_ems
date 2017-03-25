<%@ page import="org.reflection.adm.AdmRptDtl" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admRptDtlInstance, field: 'admRptMst', 'has-error')} required'>
            <label class='required'><g:message code="admRptDtl.admRptMst.label" default="Adm Rpt Mst"/></label>
            <g:select name="admRptMst" class="form-control many-to-one" from="${org.reflection.adm.AdmRptMst.list()}" value="${admRptDtlInstance?.admRptMst?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='admRptDtlInstance' field='admRptMst'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admRptDtlInstance, field: 'isActive', 'has-error')}'>
            <label><g:message code="admRptDtl.isActive.label" default="Is Active"/></label>
            <g:checkBox class="cb" name="isActive"  value="${admRptDtlInstance?.isActive}" />
            <g:renderErrors bean='admRptDtlInstance' field='isActive'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admRptDtlInstance, field: 'isMandatory', 'has-error')}'>
            <label><g:message code="admRptDtl.isMandatory.label" default="Is Mandatory"/></label>
            <g:checkBox class="cb" name="isMandatory"  value="${admRptDtlInstance?.isMandatory}" />
            <g:renderErrors bean='admRptDtlInstance' field='isMandatory'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admRptDtlInstance, field: 'sortingOrder', 'has-error')}'>
            <label><g:message code="admRptDtl.sortingOrder.label" default="Sorting Order"/></label>
            <g:field type="number" name="sortingOrder" class="form-control" value="${admRptDtlInstance?.sortingOrder}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='admRptDtlInstance' field='sortingOrder'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admRptDtlInstance, field: 'admParam', 'has-error')}'>
            <label><g:message code="admRptDtl.admParam.label" default="Adm Param"/></label>
            <g:select name="admParam" class="form-control many-to-one" from="${org.reflection.adm.AdmParam.list()}" value="${admRptDtlInstance?.admParam?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='admRptDtlInstance' field='admParam'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admRptDtlInstance, field: 'paramType', 'has-error')}'>
            <label><g:message code="admRptDtl.paramType.label" default="Param Type"/></label>
            <g:textField name="paramType" class="form-control" value="${admRptDtlInstance?.paramType}" maxlength="20"/>
            <g:renderErrors bean='admRptDtlInstance' field='paramType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admRptDtlInstance, field: 'paramName', 'has-error')}'>
            <label><g:message code="admRptDtl.paramName.label" default="Param Name"/></label>
            <g:textField name="paramName" class="form-control" value="${admRptDtlInstance?.paramName}" maxlength="30"/>
            <g:renderErrors bean='admRptDtlInstance' field='paramName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admRptDtlInstance, field: 'title', 'has-error')}'>
            <label><g:message code="admRptDtl.title.label" default="Title"/></label>
            <g:textArea name="title" class="form-control" value="${admRptDtlInstance?.title}" rows="2" cols="40" maxlength="256"/>
            <g:renderErrors bean='admRptDtlInstance' field='title'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admRptDtlInstance, field: 'cmd', 'has-error')}'>
            <label><g:message code="admRptDtl.cmd.label" default="Cmd"/></label>
            <g:textArea name="cmd" class="form-control" value="${admRptDtlInstance?.cmd}" rows="2" cols="40" maxlength="1000"/>
            <g:renderErrors bean='admRptDtlInstance' field='cmd'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admRptDtlInstance, field: 'defaultVal', 'has-error')}'>
            <label><g:message code="admRptDtl.defaultVal.label" default="Default Val"/></label>
            <g:textArea name="defaultVal" class="form-control" value="${admRptDtlInstance?.defaultVal}" rows="2" cols="40" maxlength="1000"/>
            <g:renderErrors bean='admRptDtlInstance' field='defaultVal'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admRptDtlInstance, field: 'helpText', 'has-error')}'>
            <label><g:message code="admRptDtl.helpText.label" default="Help Text"/></label>
            <g:textArea name="helpText" class="form-control" value="${admRptDtlInstance?.helpText}" rows="2" cols="40" maxlength="1000"/>
            <g:renderErrors bean='admRptDtlInstance' field='helpText'/>
        </div>
    </div>

</fieldset>
