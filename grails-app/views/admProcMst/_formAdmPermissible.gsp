<!--
Use These line of code for : message.properties

#------------------------------------------------------------------------------------------------------------------------------------------------------
#                Adm Permissible                                                                                                                    
#------------------------------------------------------------------------------------------------------------------------------------------------------
admPermissible.pageTitle.label=Adm Permissible Details
admPermissible.title.label=Title
admPermissible.itemType.label=Item Type
admPermissible.code.label=Code
admPermissible.parentAdmPermissible.label=Parent Adm Permissible
admPermissible.isActive.label=Is Active
admPermissible.slNo.label=Sl No
admPermissible.remarks.label=Remarks
#------------------------------------------------------------------------------------------------------------------------------------------------------

-->

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'admPermissible.pageTitle.label', default: 'Adm Permissible Details')}
    </legend>
    <g:each in="${admPermissibleList ?: new AdmPermissible()}" status="i" var="admPermissibleInstance">
        <div class='box box-info admPermissibleDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admPermissibleInstance, field: 'title', 'has-error')} required'>
                        <label class='required'><g:message code="admPermissible.title.label" default="Title"/></label>
                        <g:textField name="admPermissible[${i}].title" class="form-control" value="${admPermissibleInstance?.title}" maxlength="100" required="required"/>
                        <g:renderErrors bean='admPermissibleInstance' field='title'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admPermissibleInstance, field: 'itemType', 'has-error')} required'>
                        <label class='required'><g:message code="admPermissible.itemType.label" default="Item Type"/></label>
                        <g:textField name="admPermissible[${i}].itemType" class="form-control" value="${admPermissibleInstance?.itemType}" maxlength="3" required="required"/>
                        <g:renderErrors bean='admPermissibleInstance' field='itemType'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admPermissibleInstance, field: 'code', 'has-error')} required'>
                        <label class='required'><g:message code="admPermissible.code.label" default="Code"/></label>
                        <g:textField name="admPermissible[${i}].code" class="form-control" value="${admPermissibleInstance?.code}" maxlength="30" required="required"/>
                        <g:renderErrors bean='admPermissibleInstance' field='code'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admPermissibleInstance, field: 'parentAdmPermissible', 'has-error')}'>
                        <label><g:message code="admPermissible.parentAdmPermissible.label" default="Parent Adm Permissible"/></label>
                        <g:select name="admPermissible[${i}].parentAdmPermissible" class="form-control many-to-one" from="${org.reflection.adm.AdmPermissible.list()}" value="${admPermissibleInstance?.parentAdmPermissible?.id}" optionKey="id" noSelection="['': 'Select One']"/>
                        <g:renderErrors bean='admPermissibleInstance' field='parentAdmPermissible'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admPermissibleInstance, field: 'isActive', 'has-error')}'>
                        <label><g:message code="admPermissible.isActive.label" default="Is Active"/></label>
                        <g:checkBox class="cb" name="admPermissible[${i}].isActive"  value="${admPermissibleInstance?.isActive}" />
                        <g:renderErrors bean='admPermissibleInstance' field='isActive'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admPermissibleInstance, field: 'slNo', 'has-error')}'>
                        <label><g:message code="admPermissible.slNo.label" default="Sl No"/></label>
                        <g:field type="number" name="admPermissible[${i}].slNo" class="form-control" value="${admPermissibleInstance?.slNo}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='admPermissibleInstance' field='slNo'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
                    <div class='form-group ${hasErrors(bean: admPermissibleInstance, field: 'remarks', 'has-error')}'>
                        <label><g:message code="admPermissible.remarks.label" default="Remarks"/></label>
                        <g:textArea name="admPermissible[${i}].remarks" class="form-control" value="${admPermissibleInstance?.remarks}" rows="2" cols="40" maxlength="500"/>
                        <g:renderErrors bean='admPermissibleInstance' field='remarks'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admPermissibleInstance, field: 'admPermissible', 'has-error')}'>
                        <label><g:message code="admPermissible.admPermissible.label" default="Adm Permissible"/></label>
                        <ul class="one-to-many">
            <g:each in="${admPermissibleInstance?.admPermissible}" var="a">
                <li><g:link controller="admPermissible" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
            </g:each>
            <li class="add">
                <g:link controller="admPermissible" action="create" params="['admPermissible.id': admPermissibleInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'admPermissible.label', default: 'AdmPermissible')])}</g:link>
            </li>
        </ul>

                        <g:renderErrors bean='admPermissibleInstance' field='admPermissible'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("admPermissibleDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>