<%@ page import="org.reflection.adm.AdmProcSts" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcStsInstance, field: 'startTime', 'has-error')} required'>
            <label class='required'><g:message code="admProcSts.startTime.label" default="Start Time"/></label>
            <g:textField name="startTime" class="form-control dtp-date" value="${admProcStsInstance?.startTime?.format(grailsApplication.config.format.dtp.date)}" precision="day" required="required"/>
            <g:renderErrors bean='admProcStsInstance' field='startTime'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcStsInstance, field: 'authUser', 'has-error')} required'>
            <label class='required'><g:message code="admProcSts.authUser.label" default="Auth User"/></label>
            <g:select name="authUser" class="form-control many-to-one" from="${org.reflection.auth.AuthUser.list()}" value="${admProcStsInstance?.authUser?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='admProcStsInstance' field='authUser'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcStsInstance, field: 'procTitle', 'has-error')} required'>
            <label class='required'><g:message code="admProcSts.procTitle.label" default="Proc Title"/></label>
            <g:textField name="procTitle" class="form-control" value="${admProcStsInstance?.procTitle}" maxlength="100" required="required"/>
            <g:renderErrors bean='admProcStsInstance' field='procTitle'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcStsInstance, field: 'status', 'has-error')} required'>
            <label class='required'><g:message code="admProcSts.status.label" default="Status"/></label>
            <g:textField name="status" class="form-control" value="${admProcStsInstance?.status}" maxlength="20" required="required"/>
            <g:renderErrors bean='admProcStsInstance' field='status'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcStsInstance, field: 'endTime', 'has-error')}'>
            <label><g:message code="admProcSts.endTime.label" default="End Time"/></label>
            <g:textField name="endTime" class="form-control dtp-date" value="${admProcStsInstance?.endTime?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='admProcStsInstance' field='endTime'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcStsInstance, field: 'donePct', 'has-error')}'>
            <label><g:message code="admProcSts.donePct.label" default="Done Pct"/></label>
            <g:field type="number" name="donePct" class="form-control" value="${admProcStsInstance?.donePct}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='admProcStsInstance' field='donePct'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcStsInstance, field: 'remainPct', 'has-error')}'>
            <label><g:message code="admProcSts.remainPct.label" default="Remain Pct"/></label>
            <g:field type="number" name="remainPct" class="form-control" value="${admProcStsInstance?.remainPct}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='admProcStsInstance' field='remainPct'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcStsInstance, field: 'outResult', 'has-error')}'>
            <label><g:message code="admProcSts.outResult.label" default="Out Result"/></label>
            <g:field type="number" name="outResult" class="form-control" value="${admProcStsInstance?.outResult}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='admProcStsInstance' field='outResult'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcStsInstance, field: 'donePctSub', 'has-error')}'>
            <label><g:message code="admProcSts.donePctSub.label" default="Done Pct Sub"/></label>
            <g:field type="number" name="donePctSub" class="form-control" value="${admProcStsInstance?.donePctSub}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='admProcStsInstance' field='donePctSub'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admProcStsInstance, field: 'remainPctSub', 'has-error')}'>
            <label><g:message code="admProcSts.remainPctSub.label" default="Remain Pct Sub"/></label>
            <g:field type="number" name="remainPctSub" class="form-control" value="${admProcStsInstance?.remainPctSub}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='admProcStsInstance' field='remainPctSub'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admProcStsInstance, field: 'params', 'has-error')}'>
            <label><g:message code="admProcSts.params.label" default="Params"/></label>
            <g:textArea name="params" class="form-control" value="${admProcStsInstance?.params}" rows="2" cols="40" maxlength="2000"/>
            <g:renderErrors bean='admProcStsInstance' field='params'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admProcStsInstance, field: 'outMessage', 'has-error')}'>
            <label><g:message code="admProcSts.outMessage.label" default="Out Message"/></label>
            <g:textArea name="outMessage" class="form-control" value="${admProcStsInstance?.outMessage}" rows="2" cols="40" maxlength="2000"/>
            <g:renderErrors bean='admProcStsInstance' field='outMessage'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-12 col-md-12 col-lg-12'>
        <div class='form-group ${hasErrors(bean: admProcStsInstance, field: 'sqlError', 'has-error')}'>
            <label><g:message code="admProcSts.sqlError.label" default="Sql Error"/></label>
            <g:textArea name="sqlError" class="form-control" value="${admProcStsInstance?.sqlError}" rows="2" cols="40" maxlength="2000"/>
            <g:renderErrors bean='admProcStsInstance' field='sqlError'/>
        </div>
    </div>

</fieldset>
