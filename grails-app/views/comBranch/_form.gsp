<%@ page import="org.reflection.com.ComBranch" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comBranchInstance, field: 'comLocation', 'has-error')} required'>
            <label class='required'><g:message code="comBranch.comLocation.label" default="Com Location"/></label>
            <g:select name="comLocation" class="form-control many-to-one" from="${org.reflection.com.ComLocation.list()}" value="${comBranchInstance?.comLocation?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='comBranchInstance' field='comLocation'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comBranchInstance, field: 'code', 'has-error')} required'>
            <label class='required'><g:message code="comBranch.code.label" default="Code"/></label>
            <g:textField name="code" class="form-control" value="${comBranchInstance?.code}" required="required"/>
            <g:renderErrors bean='comBranchInstance' field='code'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comBranchInstance, field: 'name', 'has-error')} required'>
            <label class='required'><g:message code="comBranch.name.label" default="Name"/></label>
            <g:textField name="name" class="form-control" value="${comBranchInstance?.name}" required="required"/>
            <g:renderErrors bean='comBranchInstance' field='name'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comBranchInstance, field: 'address', 'has-error')} required'>
            <label class='required'><g:message code="comBranch.address.label" default="Address"/></label>
            <g:textField name="address" class="form-control" value="${comBranchInstance?.address}" required="required"/>
            <g:renderErrors bean='comBranchInstance' field='address'/>
        </div>
    </div>

</fieldset>
