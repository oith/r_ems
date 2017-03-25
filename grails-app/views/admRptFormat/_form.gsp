<%@ page import="org.reflection.adm.AdmRptFormat" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admRptFormatInstance, field: 'admRptMst', 'has-error')} required'>
            <label class='required'><g:message code="admRptFormat.admRptMst.label" default="Adm Rpt Mst"/></label>
            <g:select name="admRptMst" class="form-control many-to-one" from="${org.reflection.adm.AdmRptMst.list()}" value="${admRptFormatInstance?.admRptMst?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='admRptFormatInstance' field='admRptMst'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: admRptFormatInstance, field: 'reportFormat', 'has-error')} required'>
            <label class='required'><g:message code="admRptFormat.reportFormat.label" default="Report Format"/></label>
            <g:select name="reportFormat" class="form-control" from="${org.reflection.adm.ReportFormat?.values()}" keys="${org.reflection.adm.ReportFormat.values()*.name()}" value="${admRptFormatInstance?.reportFormat?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='admRptFormatInstance' field='reportFormat'/>
        </div>
    </div>

</fieldset>
