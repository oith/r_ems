

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsStudentFingerPrints.pageTitle.label', default: 'Ems Student Finger Prints Details')}
    </legend>
    <g:each in="${emsStudentFingerPrintsList ?: new org.reflection.ems.EmsStudentFingerPrint()}" status="i" var="emsStudentFingerPrintsInstance">
        <div class='box box-info emsStudentFingerPrintsDetails'>
            <div class='box-body'>

                <g:hiddenField name="emsStudentFingerPrints[${i}].id" value="${emsStudentFingerPrintsInstance?.id}"/>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStudentFingerPrintsInstance, field: 'comFingerPrint', 'has-error')} required'>
                        <label class='required'><g:message code="emsStudentFingerPrints.comFingerPrint.label" default="Com Finger Print"/></label>
                        <g:select name="emsStudentFingerPrints[${i}].comFingerPrint" class="form-control" from="${org.reflection.com.ComFingerPrint?.values()}" keys="${org.reflection.com.ComFingerPrint.values()*.name()}" value="${emsStudentFingerPrintInstance?.comFingerPrint?.name()}"  noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsStudentFingerPrintsInstance' field='comFingerPrint'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStudentFingerPrintsInstance, field: 'fpData', 'has-error')} required'>
                        <label class='required'><g:message code="emsStudentFingerPrints.fpData.label" default="Fp Data"/></label>
                        <input name="emsStudentFingerPrints[${i}].fpData\" id="fpData\" class="file" type="file"/>
                        <g:renderErrors bean='emsStudentFingerPrintsInstance' field='fpData'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsStudentFingerPrintsDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>