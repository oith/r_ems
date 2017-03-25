<div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
    <div class='form-group'>
        <label class="required"><g:message code="corAttendance.quarter.label" default="Quarter"/></label>
        <g:select id="quarter" name="quarter" class="form-control many-to-one" from="${quarterList}" value="${quarter}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
    </div>
</div>