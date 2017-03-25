<div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
    <div class='form-group'>
        <label><g:message code="corAttendance.entBeneficiaryType.label" default="Beneficiary Type"/></label>
        <g:select name="entBeneficiaryType" class="form-control many-to-one" from="${beneficiaryTypeList}" value="${beneficiaryType}" noSelection="['': 'Select One']"/>
    </div>
</div>