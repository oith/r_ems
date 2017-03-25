<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'admRptFormat.pageTitle.label', default: 'Adm Rpt Format Details')}
    </legend>
    <g:each in="${admRptFormatList ?: new org.reflection.adm.AdmRptFormat()}" status="i" var="admRptFormatInstance">
        <div class='box box-info admRptFormatDetails'>
            <div class='box-body'>

                <g:hiddenField name="admRptFormat[${i}].id" value="${admRptFormatInstance?.id}"/>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: admRptFormatInstance, field: 'reportFormat', 'has-error')} required'>
                        <label class='required'><g:message code="admRptFormat.reportFormat.label" default="Report Format"/></label>
                        <g:select name="admRptFormat[${i}].reportFormat" class="form-control" from="${org.reflection.adm.ReportFormat?.values()}" keys="${org.reflection.adm.ReportFormat.values()*.name()}" value="${admRptFormatInstance?.reportFormat?.name()}"  noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='admRptFormatInstance' field='reportFormat'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("admRptFormatDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>