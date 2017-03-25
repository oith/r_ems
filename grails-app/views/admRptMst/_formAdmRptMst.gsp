<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'admRptMst.pageTitle.label', default: 'Adm Permissible Details')}
    </legend>
    <g:each in="${admRptMstList ?: new org.reflection.adm.AdmRptMst()}" status="i" var="admRptMstInstance">
        <div class='box box-info admRptMstDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admRptMstInstance, field: 'title', 'has-error')} required'>
                        <label class='required'><g:message code="admRptMst.title.label" default="Title"/></label>
                        <g:textField name="admRptMst[${i}].title" class="form-control" value="${admRptMstInstance?.title}" maxlength="100" required="required"/>
                        <g:renderErrors bean='admRptMstInstance' field='title'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admRptMstInstance, field: 'itemType', 'has-error')} required'>
                        <label class='required'><g:message code="admRptMst.itemType.label" default="Item Type"/></label>
                        <g:textField name="admRptMst[${i}].itemType" class="form-control" value="${admRptMstInstance?.itemType}" maxlength="3" required="required"/>
                        <g:renderErrors bean='admRptMstInstance' field='itemType'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admRptMstInstance, field: 'code', 'has-error')} required'>
                        <label class='required'><g:message code="admRptMst.code.label" default="Code"/></label>
                        <g:textField name="admRptMst[${i}].code" class="form-control" value="${admRptMstInstance?.code}" maxlength="30" required="required"/>
                        <g:renderErrors bean='admRptMstInstance' field='code'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admRptMstInstance, field: 'parentAdmRptMst', 'has-error')}'>
                        <label><g:message code="admRptMst.parentAdmRptMst.label" default="Parent Adm Permissible"/></label>
                        <g:select name="admRptMst[${i}].parentAdmRptMst" class="form-control many-to-one" from="${org.reflection.adm.AdmRptMst.list()}" value="${admRptMstInstance?.parentAdmRptMst?.id}" optionKey="id" noSelection="['': 'Select One']"/>
                        <g:renderErrors bean='admRptMstInstance' field='parentAdmRptMst'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admRptMstInstance, field: 'isActive', 'has-error')}'>
                        <label><g:message code="admRptMst.isActive.label" default="Is Active"/></label>
                        <g:checkBox class="cb" name="admRptMst[${i}].isActive"  value="${admRptMstInstance?.isActive}" />
                        <g:renderErrors bean='admRptMstInstance' field='isActive'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admRptMstInstance, field: 'slNo', 'has-error')}'>
                        <label><g:message code="admRptMst.slNo.label" default="Sl No"/></label>
                        <g:field type="number" name="admRptMst[${i}].slNo" class="form-control" value="${admRptMstInstance?.slNo}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='admRptMstInstance' field='slNo'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
                    <div class='form-group ${hasErrors(bean: admRptMstInstance, field: 'remarks', 'has-error')}'>
                        <label><g:message code="admRptMst.remarks.label" default="Remarks"/></label>
                        <g:textArea name="admRptMst[${i}].remarks" class="form-control" value="${admRptMstInstance?.remarks}" rows="2" cols="40" maxlength="500"/>
                        <g:renderErrors bean='admRptMstInstance' field='remarks'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admRptMstInstance, field: 'admRptMst', 'has-error')}'>
                        <label><g:message code="admRptMst.admRptMst.label" default="Adm Permissible"/></label>
                        <ul class="one-to-many">
            <g:each in="${admRptMstInstance?.admRptMst}" var="a">
                <li><g:link controller="admRptMst" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
            </g:each>
            <li class="add">
                <g:link controller="admRptMst" action="create" params="['admRptMst.id': admRptMstInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'admRptMst.label', default: 'AdmRptMst')])}</g:link>
            </li>
        </ul>

                        <g:renderErrors bean='admRptMstInstance' field='admRptMst'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("admRptMstDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>