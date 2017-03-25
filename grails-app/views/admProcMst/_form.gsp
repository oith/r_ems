<!--
Use These line of code for : message.properties

#------------------------------------------------------------------------------------------------------------------------------------------------------
#                Adm Proc Mst                                                                                                                    
#------------------------------------------------------------------------------------------------------------------------------------------------------
admProcMst.pageTitle.label=Adm Proc Mst
admProcMst.cmd.label=Cmd
admProcMst.code.label=Code
admProcMst.frqncyType.label=Frqncy Type
admProcMst.isActive.label=Is Active
admProcMst.itemType.label=Item Type
admProcMst.parentAdmPermissible.label=Parent Adm Permissible
admProcMst.procTables.label=Proc Tables
admProcMst.remarks.label=Remarks
admProcMst.runModeType.label=Run Mode Type
admProcMst.runWith.label=Run With
admProcMst.slNo.label=Sl No
admProcMst.title.label=Title
#------------------------------------------------------------------------------------------------------------------------------------------------------

-->
<%@ page import="org.reflection.adm.AdmProcMst" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'title', 'has-error')} required'>
            <label class='required'><g:message code="admProcMst.title.label" default="Title"/></label>
            <g:textField name="title" class="form-control" value="${admProcMstInstance?.title}" maxlength="100" required="required"/>
            <g:renderErrors bean='admProcMstInstance' field='title'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'itemType', 'has-error')} required'>
            <label class='required'><g:message code="admProcMst.itemType.label" default="Item Type"/></label>
            <g:textField name="itemType" class="form-control" value="${admProcMstInstance?.itemType}" maxlength="3" required="required"/>
            <g:renderErrors bean='admProcMstInstance' field='itemType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'code', 'has-error')} required'>
            <label class='required'><g:message code="admProcMst.code.label" default="Code"/></label>
            <g:textField name="code" class="form-control" value="${admProcMstInstance?.code}" maxlength="30" required="required"/>
            <g:renderErrors bean='admProcMstInstance' field='code'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'parentAdmPermissible', 'has-error')}'>
            <label><g:message code="admProcMst.parentAdmPermissible.label" default="Parent Adm Permissible"/></label>
            <g:select name="parentAdmPermissible" class="form-control many-to-one" from="${org.reflection.adm.AdmPermissible.list()}" value="${admProcMstInstance?.parentAdmPermissible?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='admProcMstInstance' field='parentAdmPermissible'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'isActive', 'has-error')}'>
            <label><g:message code="admProcMst.isActive.label" default="Is Active"/></label>
            <g:checkBox class="cb" name="isActive"  value="${admProcMstInstance?.isActive}" />
            <g:renderErrors bean='admProcMstInstance' field='isActive'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'slNo', 'has-error')}'>
            <label><g:message code="admProcMst.slNo.label" default="Sl No"/></label>
            <g:field type="number" name="slNo" class="form-control" value="${admProcMstInstance?.slNo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='admProcMstInstance' field='slNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="admProcMst.remarks.label" default="Remarks"/></label>
            <g:textArea name="remarks" class="form-control" value="${admProcMstInstance?.remarks}" rows="2" cols="40" maxlength="500"/>
            <g:renderErrors bean='admProcMstInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'frqncyType', 'has-error')}'>
            <label><g:message code="admProcMst.frqncyType.label" default="Frqncy Type"/></label>
            <g:textField name="frqncyType" class="form-control" value="${admProcMstInstance?.frqncyType}" maxlength="20"/>
            <g:renderErrors bean='admProcMstInstance' field='frqncyType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'runWith', 'has-error')}'>
            <label><g:message code="admProcMst.runWith.label" default="Run With"/></label>
            <g:textField name="runWith" class="form-control" value="${admProcMstInstance?.runWith}" maxlength="30"/>
            <g:renderErrors bean='admProcMstInstance' field='runWith'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'runModeType', 'has-error')}'>
            <label><g:message code="admProcMst.runModeType.label" default="Run Mode Type"/></label>
            <g:textField name="runModeType" class="form-control" value="${admProcMstInstance?.runModeType}" maxlength="50"/>
            <g:renderErrors bean='admProcMstInstance' field='runModeType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'procTables', 'has-error')}'>
            <label><g:message code="admProcMst.procTables.label" default="Proc Tables"/></label>
            <g:textArea name="procTables" class="form-control" value="${admProcMstInstance?.procTables}" rows="2" cols="40" maxlength="2000"/>
            <g:renderErrors bean='admProcMstInstance' field='procTables'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'cmd', 'has-error')}'>
            <label><g:message code="admProcMst.cmd.label" default="Cmd"/></label>
            <g:textArea name="cmd" class="form-control" value="${admProcMstInstance?.cmd}" rows="2" cols="40" maxlength="4000"/>
            <g:renderErrors bean='admProcMstInstance' field='cmd'/>
        </div>
    </div>

</fieldset>
