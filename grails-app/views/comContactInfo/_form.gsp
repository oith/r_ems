<%@ page import="org.reflection.com.ComContactInfo" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactInfoInstance, field: 'comContactType', 'has-error')} required'>
            <label class='required'><g:message code="comContactInfo.comContactType.label" default="Com Contact Type"/></label>
            <g:select name="comContactType" class="form-control" from="${org.reflection.com.ComContactType?.values()}" keys="${org.reflection.com.ComContactType.values()*.name()}" value="${comContactInfoInstance?.comContactType?.name()}" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='comContactInfoInstance' field='comContactType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactInfoInstance, field: 'contactValue', 'has-error')} required'>
            <label class='required'><g:message code="comContactInfo.contactValue.label" default="Contact Value"/></label>
            <g:textField name="contactValue" class="form-control" value="${comContactInfoInstance?.contactValue}" required="required"/>
            <g:renderErrors bean='comContactInfoInstance' field='contactValue'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactInfoInstance, field: 'slNo', 'has-error')}'>
            <label><g:message code="comContactInfo.slNo.label" default="Sl No"/></label>
            <g:field type="number" name="slNo" class="form-control" value="${comContactInfoInstance?.slNo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comContactInfoInstance' field='slNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactInfoInstance, field: 'imeiNo', 'has-error')}'>
            <label><g:message code="comContactInfo.imeiNo.label" default="Imei No"/></label>
            <g:textField name="imeiNo" class="form-control" value="${comContactInfoInstance?.imeiNo}"/>
            <g:renderErrors bean='comContactInfoInstance' field='imeiNo'/>
        </div>
    </div>

</fieldset>
