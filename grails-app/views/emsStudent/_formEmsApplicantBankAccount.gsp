

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsApplicantBankAccount.pageTitle.label', default: 'Ems Applicant Bank Account Details')}
    </legend>
    <g:each in="${emsApplicantBankAccountList ?: new org.reflection.ems.EmsApplicantBankAccount()}" status="i" var="emsApplicantBankAccountInstance">
        <div class='box box-info emsApplicantBankAccountDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantBankAccountInstance, field: 'emsApplicant', 'has-error')} required'>
                        <label class='required'><g:message code="emsApplicantBankAccount.emsApplicant.label" default="Ems Applicant"/></label>
                        <g:select name="emsApplicantBankAccount[${i}].emsApplicant" class="form-control many-to-one" from="${org.reflection.ems.EmsApplicant.list()}" value="${emsApplicantBankAccountInstance?.emsApplicant?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsApplicantBankAccountInstance' field='emsApplicant'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantBankAccountInstance, field: 'accountTitle', 'has-error')} required'>
                        <label class='required'><g:message code="emsApplicantBankAccount.accountTitle.label" default="Account Title"/></label>
                        <g:textField name="emsApplicantBankAccount[${i}].accountTitle" class="form-control" value="${emsApplicantBankAccountInstance?.accountTitle}" required="required"/>
                        <g:renderErrors bean='emsApplicantBankAccountInstance' field='accountTitle'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantBankAccountInstance, field: 'comBank', 'has-error')} required'>
                        <label class='required'><g:message code="emsApplicantBankAccount.comBank.label" default="Com Bank"/></label>
                        <g:select name="emsApplicantBankAccount[${i}].comBank" class="form-control many-to-one" from="${org.reflection.com.ComBank.list()}" value="${emsApplicantBankAccountInstance?.comBank?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsApplicantBankAccountInstance' field='comBank'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsApplicantBankAccountInstance, field: 'bankAccountNo', 'has-error')} required'>
                        <label class='required'><g:message code="emsApplicantBankAccount.bankAccountNo.label" default="Bank Account No"/></label>
                        <g:textField name="emsApplicantBankAccount[${i}].bankAccountNo" class="form-control" value="${emsApplicantBankAccountInstance?.bankAccountNo}" required="required"/>
                        <g:renderErrors bean='emsApplicantBankAccountInstance' field='bankAccountNo'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsApplicantBankAccountDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>