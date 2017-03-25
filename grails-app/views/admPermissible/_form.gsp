<!--
Use These line of code for : message.properties

#------------------------------------------------------------------------------------------------------------------------------------------------------
#                Adm Permissible                                                                                                                    
#------------------------------------------------------------------------------------------------------------------------------------------------------
admPermissible.pageTitle.label=Adm Permissible
admPermissible.code.label=Code
admPermissible.isActive.label=Is Active
admPermissible.itemType.label=Item Type
admPermissible.parentAdmPermissible.label=Parent Adm Permissible
admPermissible.remarks.label=Remarks
admPermissible.slNo.label=Sl No
admPermissible.title.label=Title
#------------------------------------------------------------------------------------------------------------------------------------------------------

-->
<%@ page import="org.reflection.adm.AdmPermissible" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admPermissibleInstance, field: 'title', 'has-error')} required'>
            <label class='required'><g:message code="admPermissible.title.label" default="Title"/></label>
            <g:textField name="title" class="form-control" value="${admPermissibleInstance?.title}" maxlength="100" required="required"/>
            <g:renderErrors bean='admPermissibleInstance' field='title'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admPermissibleInstance, field: 'itemType', 'has-error')} required'>
            <label class='required'><g:message code="admPermissible.itemType.label" default="Item Type"/></label>
            <g:textField name="itemType" class="form-control" value="${admPermissibleInstance?.itemType}" maxlength="3" required="required"/>
            <g:renderErrors bean='admPermissibleInstance' field='itemType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admPermissibleInstance, field: 'code', 'has-error')} required'>
            <label class='required'><g:message code="admPermissible.code.label" default="Code"/></label>
            <g:textField name="code" class="form-control" value="${admPermissibleInstance?.code}" maxlength="30" required="required"/>
            <g:renderErrors bean='admPermissibleInstance' field='code'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admPermissibleInstance, field: 'parentAdmPermissible', 'has-error')}'>
            <label><g:message code="admPermissible.parentAdmPermissible.label" default="Parent Adm Permissible"/></label>
            <g:select name="parentAdmPermissible" class="form-control many-to-one" from="${org.reflection.adm.AdmPermissible.list()}" value="${admPermissibleInstance?.parentAdmPermissible?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='admPermissibleInstance' field='parentAdmPermissible'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admPermissibleInstance, field: 'isActive', 'has-error')}'>
            <label><g:message code="admPermissible.isActive.label" default="Is Active"/></label>
            <g:checkBox class="cb" name="isActive"  value="${admPermissibleInstance?.isActive}" />
            <g:renderErrors bean='admPermissibleInstance' field='isActive'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admPermissibleInstance, field: 'slNo', 'has-error')}'>
            <label><g:message code="admPermissible.slNo.label" default="Sl No"/></label>
            <g:field type="number" name="slNo" class="form-control" value="${admPermissibleInstance?.slNo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='admPermissibleInstance' field='slNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admPermissibleInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="admPermissible.remarks.label" default="Remarks"/></label>
            <g:textArea name="remarks" class="form-control" value="${admPermissibleInstance?.remarks}" rows="2" cols="40" maxlength="500"/>
            <g:renderErrors bean='admPermissibleInstance' field='remarks'/>
        </div>
    </div>

</fieldset>
