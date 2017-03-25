<div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
    <div class='form-group'>
        <label><g:message code="corAttendance.comQuarter.label" default="Quarter"/></label>
        <g:select name="comQuarter" class="form-control many-to-one" from="${quarterList}" value="${quarter}" optionKey="id" noSelection="['': 'Select One']"/>
    </div>
</div>