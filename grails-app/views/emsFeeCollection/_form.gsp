<%@ page import="org.reflection.ems.EmsFeeCollection" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsFeeCollectionInstance, field: 'emsStudent', 'has-error')} required'>
            <label class='required'><g:message code="emsFeeCollection.emsStudent.label" default="Ems Student"/></label>
            <g:select name="emsStudent" class="form-control many-to-one" from="${org.reflection.ems.EmsStudent.list()}" value="${emsFeeCollectionInstance?.emsStudent?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsFeeCollectionInstance' field='emsStudent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsFeeCollectionInstance, field: 'emsFeeType', 'has-error')} required'>
            <label class='required'><g:message code="emsFeeCollection.emsFeeType.label" default="Ems Fee Type"/></label>
            <g:select name="emsFeeType" class="form-control" from="${org.reflection.ems.EmsTypeFee?.values()}" keys="${org.reflection.ems.EmsTypeFee.values()*.name()}" value="${emsFeeCollectionInstance?.emsFeeType?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsFeeCollectionInstance' field='emsFeeType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsFeeCollectionInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="emsFeeCollection.remarks.label" default="Remarks"/></label>
            <g:textField name="remarks" class="form-control" value="${emsFeeCollectionInstance?.remarks}"/>
            <g:renderErrors bean='emsFeeCollectionInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsFeeCollectionInstance, field: 'amount', 'has-error')}'>
            <label><g:message code="emsFeeCollection.amount.label" default="Amount"/></label>
            <g:field type="number" name="amount" class="form-control" value="${fieldValue(bean: emsFeeCollectionInstance, field: 'amount')}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsFeeCollectionInstance' field='amount'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsFeeCollectionInstance, field: 'collectionDate', 'has-error')}'>
            <label><g:message code="emsFeeCollection.collectionDate.label" default="Collection Date"/></label>
            <g:textField name="collectionDate" class="form-control dtp-date" value="${emsFeeCollectionInstance?.collectionDate?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='emsFeeCollectionInstance' field='collectionDate'/>
        </div>
    </div>

</fieldset>
