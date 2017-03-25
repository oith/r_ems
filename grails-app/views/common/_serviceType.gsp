<div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
    <div class='form-group'>
        <label><g:message code="corAttendance.corServiceType.label" default="Service Type"/></label>
        <g:select name="corServiceType" class="form-control many-to-one" from="${serviceTypeList}" value="${serviceType}" noSelection="['': 'Select One']"/>
    </div>
</div>

