<!--
Use These line of code for : message.properties

#------------------------------------------------------------------------------------------------------------------------------------------------------
#                Adm Permissible                                                                                                                    
#------------------------------------------------------------------------------------------------------------------------------------------------------
admProcMst.pageTitle.label=Adm Permissible Details
admProcMst.title.label=Title
admProcMst.itemType.label=Item Type
admProcMst.code.label=Code
admProcMst.parentAdmProcMst.label=Parent Adm Permissible
admProcMst.isActive.label=Is Active
admProcMst.slNo.label=Sl No
admProcMst.remarks.label=Remarks
#------------------------------------------------------------------------------------------------------------------------------------------------------

-->

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'admProcMst.pageTitle.label', default: 'Adm Permissible Details')}
    </legend>
    <g:each in="${admProcMstList ?: new org.reflection.adm.AdmProcMst()}" status="i" var="admProcMstInstance">
        <div class='box box-info admProcMstDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'title', 'has-error')} required'>
                        <label class='required'><g:message code="admProcMst.title.label" default="Title"/></label>
                        <g:textField name="admProcMst[${i}].title" class="form-control" value="${admProcMstInstance?.title}" maxlength="100" required="required"/>
                        <g:renderErrors bean='admProcMstInstance' field='title'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'itemType', 'has-error')} required'>
                        <label class='required'><g:message code="admProcMst.itemType.label" default="Item Type"/></label>
                        <g:textField name="admProcMst[${i}].itemType" class="form-control" value="${admProcMstInstance?.itemType}" maxlength="3" required="required"/>
                        <g:renderErrors bean='admProcMstInstance' field='itemType'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'code', 'has-error')} required'>
                        <label class='required'><g:message code="admProcMst.code.label" default="Code"/></label>
                        <g:textField name="admProcMst[${i}].code" class="form-control" value="${admProcMstInstance?.code}" maxlength="30" required="required"/>
                        <g:renderErrors bean='admProcMstInstance' field='code'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'parentAdmProcMst', 'has-error')}'>
                        <label><g:message code="admProcMst.parentAdmProcMst.label" default="Parent Adm Permissible"/></label>
                        <g:select name="admProcMst[${i}].parentAdmProcMst" class="form-control many-to-one" from="${org.reflection.adm.AdmProcMst.list()}" value="${admProcMstInstance?.parentAdmProcMst?.id}" optionKey="id" noSelection="['': 'Select One']"/>
                        <g:renderErrors bean='admProcMstInstance' field='parentAdmProcMst'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'isActive', 'has-error')}'>
                        <label><g:message code="admProcMst.isActive.label" default="Is Active"/></label>
                        <g:checkBox class="cb" name="admProcMst[${i}].isActive"  value="${admProcMstInstance?.isActive}" />
                        <g:renderErrors bean='admProcMstInstance' field='isActive'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'slNo', 'has-error')}'>
                        <label><g:message code="admProcMst.slNo.label" default="Sl No"/></label>
                        <g:field type="number" name="admProcMst[${i}].slNo" class="form-control" value="${admProcMstInstance?.slNo}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='admProcMstInstance' field='slNo'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
                    <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'remarks', 'has-error')}'>
                        <label><g:message code="admProcMst.remarks.label" default="Remarks"/></label>
                        <g:textArea name="admProcMst[${i}].remarks" class="form-control" value="${admProcMstInstance?.remarks}" rows="2" cols="40" maxlength="500"/>
                        <g:renderErrors bean='admProcMstInstance' field='remarks'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admProcMstInstance, field: 'admProcMst', 'has-error')}'>
                        <label><g:message code="admProcMst.admProcMst.label" default="Adm Permissible"/></label>
                        <ul class="one-to-many">
            <g:each in="${admProcMstInstance?.admProcMst}" var="a">
                <li><g:link controller="admProcMst" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
            </g:each>
            <li class="add">
                <g:link controller="admProcMst" action="create" params="['admProcMst.id': admProcMstInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'admProcMst.label', default: 'AdmProcMst')])}</g:link>
            </li>
        </ul>

                        <g:renderErrors bean='admProcMstInstance' field='admProcMst'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("admProcMstDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>