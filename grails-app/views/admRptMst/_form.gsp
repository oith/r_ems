<%@ page import="org.reflection.adm.AdmRptMst" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admRptMstInstance, field: 'title', 'has-error')} required'>
            <label class='required'><g:message code="admRptMst.title.label" default="Title"/></label>
            <g:textField name="title" class="form-control" value="${admRptMstInstance?.title}" maxlength="100" required="required"/>
            <g:renderErrors bean='admRptMstInstance' field='title'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admRptMstInstance, field: 'itemType', 'has-error')} required'>
            <label class='required'><g:message code="admRptMst.itemType.label" default="Item Type"/></label>
            <g:textField name="itemType" class="form-control" value="${admRptMstInstance?.itemType}" maxlength="3" required="required"/>
            <g:renderErrors bean='admRptMstInstance' field='itemType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admRptMstInstance, field: 'code', 'has-error')} required'>
            <label class='required'><g:message code="admRptMst.code.label" default="Code"/></label>
            <g:textField name="code" class="form-control" value="${admRptMstInstance?.code}" maxlength="30" required="required"/>
            <g:renderErrors bean='admRptMstInstance' field='code'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admRptMstInstance, field: 'parentAdmPermissible', 'has-error')}'>
            <label><g:message code="admRptMst.parentAdmPermissible.label" default="Parent Adm Permissible"/></label>
            <g:select name="parentAdmPermissible" class="form-control many-to-one" from="${org.reflection.adm.AdmPermissible.list()}" value="${admRptMstInstance?.parentAdmPermissible?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='admRptMstInstance' field='parentAdmPermissible'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admRptMstInstance, field: 'isActive', 'has-error')}'>
            <label><g:message code="admRptMst.isActive.label" default="Is Active"/></label>
            <g:checkBox class="cb" name="isActive"  value="${admRptMstInstance?.isActive}" />
            <g:renderErrors bean='admRptMstInstance' field='isActive'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admRptMstInstance, field: 'slNo', 'has-error')}'>
            <label><g:message code="admRptMst.slNo.label" default="Sl No"/></label>
            <g:field type="number" name="slNo" class="form-control" value="${admRptMstInstance?.slNo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='admRptMstInstance' field='slNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admRptMstInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="admRptMst.remarks.label" default="Remarks"/></label>
            <g:textArea name="remarks" class="form-control" value="${admRptMstInstance?.remarks}" rows="2" cols="40" maxlength="500"/>
            <g:renderErrors bean='admRptMstInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admRptMstInstance, field: 'fileName', 'has-error')}'>
            <label><g:message code="admRptMst.fileName.label" default="File Name"/></label>
            <g:textField name="fileName" class="form-control" value="${admRptMstInstance?.fileName}" maxlength="128"/>
            <g:renderErrors bean='admRptMstInstance' field='fileName'/>
        </div>
    </div>

</fieldset>
