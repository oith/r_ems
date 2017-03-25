<div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
    <div class='form-group'>
        <label class="required"><g:message code="corAttendance.beneficiaryType.label" default="Beneficiary Type"/></label>
        <g:select name="beneficiaryType" class="form-control many-to-one" from="${beneficiaryTypeList}" value="${beneficiaryType}" noSelection="['': 'Select One']" required="required"/>
    </div>
</div>