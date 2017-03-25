<%@ page import="org.reflection.ems.EmsFeeSetup" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsFeeSetupInstance, field: 'emsTypeFee', 'has-error')} required'>
            <label class='required'><g:message code="emsFeeSetup.emsTypeFee.label" default="Ems Type Fee"/></label>
            <g:select name="emsTypeFee" class="form-control" from="${org.reflection.ems.EmsTypeFee?.values()}" keys="${org.reflection.ems.EmsTypeFee.values()*.name()}" value="${emsFeeSetupInstance?.emsTypeFee?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsFeeSetupInstance' field='emsTypeFee'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsFeeSetupInstance, field: 'emsClass', 'has-error')}'>
            <label><g:message code="emsFeeSetup.emsClass.label" default="Ems Class"/></label>
            <g:select name="emsClass" class="form-control" from="${org.reflection.ems.EmsClass?.values()}" keys="${org.reflection.ems.EmsClass.values()*.name()}" value="${emsFeeSetupInstance?.emsClass?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsFeeSetupInstance' field='emsClass'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsFeeSetupInstance, field: 'emsGroup', 'has-error')}'>
            <label><g:message code="emsFeeSetup.emsGroup.label" default="Ems Group"/></label>
            <g:select name="emsGroup" class="form-control" from="${org.reflection.ems.EmsGroup?.values()}" keys="${org.reflection.ems.EmsGroup.values()*.name()}" value="${emsFeeSetupInstance?.emsGroup?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsFeeSetupInstance' field='emsGroup'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsFeeSetupInstance, field: 'emsFrequency', 'has-error')}'>
            <label><g:message code="emsFeeSetup.emsFrequency.label" default="Ems Frequency"/></label>
            <g:select name="emsFrequency" class="form-control" from="${org.reflection.ems.EmsFrequency?.values()}" keys="${org.reflection.ems.EmsFrequency.values()*.name()}" value="${emsFeeSetupInstance?.emsFrequency?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsFeeSetupInstance' field='emsFrequency'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsFeeSetupInstance, field: 'amount', 'has-error')}'>
            <label><g:message code="emsFeeSetup.amount.label" default="Amount"/></label>
            <g:field type="number" name="amount" class="form-control" value="${fieldValue(bean: emsFeeSetupInstance, field: 'amount')}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsFeeSetupInstance' field='amount'/>
        </div>
    </div>

</fieldset>
