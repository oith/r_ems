<%@ page import="org.reflection.ems.EmsGuardianContactInfo" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianContactInfoInstance, field: 'comContactType', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardianContactInfo.comContactType.label" default="Com Contact Type"/></label>
            <g:select name="comContactType" class="form-control" from="${org.reflection.com.ComContactType?.values()}" keys="${org.reflection.com.ComContactType.values()*.name()}" value="${emsGuardianContactInfoInstance?.comContactType?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsGuardianContactInfoInstance' field='comContactType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianContactInfoInstance, field: 'contactValue', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardianContactInfo.contactValue.label" default="Contact Value"/></label>
            <g:textField name="contactValue" class="form-control" value="${emsGuardianContactInfoInstance?.contactValue}" required="required"/>
            <g:renderErrors bean='emsGuardianContactInfoInstance' field='contactValue'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianContactInfoInstance, field: 'slNo', 'has-error')}'>
            <label><g:message code="emsGuardianContactInfo.slNo.label" default="Sl No"/></label>
            <g:field type="number" name="slNo" class="form-control" value="${emsGuardianContactInfoInstance?.slNo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsGuardianContactInfoInstance' field='slNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianContactInfoInstance, field: 'imeiNo', 'has-error')}'>
            <label><g:message code="emsGuardianContactInfo.imeiNo.label" default="Imei No"/></label>
            <g:textField name="imeiNo" class="form-control" value="${emsGuardianContactInfoInstance?.imeiNo}"/>
            <g:renderErrors bean='emsGuardianContactInfoInstance' field='imeiNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianContactInfoInstance, field: 'emsGuardian', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardianContactInfo.emsGuardian.label" default="Ems Guardian"/></label>
            <g:select name="emsGuardian" class="form-control many-to-one" from="${org.reflection.ems.EmsGuardian.list()}" value="${emsGuardianContactInfoInstance?.emsGuardian?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsGuardianContactInfoInstance' field='emsGuardian'/>
        </div>
    </div>

</fieldset>
