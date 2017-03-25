<div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
    <div class='form-group'>
        <label class="required"><g:message code="corAttendance.sessionType.label" default="Session Type"/></label>
        <g:select name="sessionType" class="form-control many-to-one" from="${serviceTypeList}" value="${serviceType}" noSelection="['': 'Select One']" required="required"/>
    </div>
</div>

