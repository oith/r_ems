

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'emsStaffAcademicContactPersons.pageTitle.label', default: 'Ems Staff Academic Contact Persons Details')}
    </legend>
    <g:each in="${emsStaffAcademicContactPersonsList ?: new org.reflection.ems.EmsStaffAcademicContactPerson()}" status="i" var="emsStaffAcademicContactPersonsInstance">
        <div class='box box-info emsStaffAcademicContactPersonsDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'comContactPersonType', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicContactPersons.comContactPersonType.label" default="Com Contact Person Type"/></label>
                        <g:select name="emsStaffAcademicContactPersons[${i}].comContactPersonType" class="form-control" from="${org.reflection.com.ComContactPersonType?.values()}" keys="${org.reflection.com.ComContactPersonType.values()*.name()}" value="${emsStaffAcademicContactPersonInstance?.comContactPersonType?.name()}"  noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='comContactPersonType'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'comMaritalStatus', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicContactPersons.comMaritalStatus.label" default="Com Marital Status"/></label>
                        <g:select name="emsStaffAcademicContactPersons[${i}].comMaritalStatus" class="form-control" from="${org.reflection.com.ComMaritalStatus?.values()}" keys="${org.reflection.com.ComMaritalStatus.values()*.name()}" value="${emsStaffAcademicContactPersonInstance?.comMaritalStatus?.name()}"  noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='comMaritalStatus'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'addressPermanent', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicContactPersons.addressPermanent.label" default="Address Permanent"/></label>
                        <g:textField name="emsStaffAcademicContactPersons[${i}].addressPermanent" class="form-control" value="${emsStaffAcademicContactPersonInstance?.addressPermanent}" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='addressPermanent'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'mobile', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicContactPersons.mobile.label" default="Mobile"/></label>
                        <g:textField name="emsStaffAcademicContactPersons[${i}].mobile" class="form-control" value="${emsStaffAcademicContactPersonInstance?.mobile}" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='mobile'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'title', 'has-error')} required'>
                        <label class='required'><g:message code="emsStaffAcademicContactPersons.title.label" default="Title"/></label>
                        <g:textField name="emsStaffAcademicContactPersons[${i}].title" class="form-control" value="${emsStaffAcademicContactPersonInstance?.title}" required="required"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='title'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'comLookupRefRelation', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.comLookupRefRelation.label" default="Com Lookup Ref Relation"/></label>
                        <g:select name="emsStaffAcademicContactPersons[${i}].comLookupRefRelation" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${emsStaffAcademicContactPersonInstance?.comLookupRefRelation?.id}" optionKey="id" noSelection="['': 'Select One']"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='comLookupRefRelation'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'comProfession', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.comProfession.label" default="Com Profession"/></label>
                        <g:select name="emsStaffAcademicContactPersons[${i}].comProfession" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${emsStaffAcademicContactPersonInstance?.comProfession?.name()}"  noSelection="['': 'Select One']"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='comProfession'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'addressPermanentNetive', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.addressPermanentNetive.label" default="Address Permanent Netive"/></label>
                        <g:textField name="emsStaffAcademicContactPersons[${i}].addressPermanentNetive" class="form-control" value="${emsStaffAcademicContactPersonInstance?.addressPermanentNetive}"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='addressPermanentNetive'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'addressPresent', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.addressPresent.label" default="Address Present"/></label>
                        <g:textField name="emsStaffAcademicContactPersons[${i}].addressPresent" class="form-control" value="${emsStaffAcademicContactPersonInstance?.addressPresent}"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='addressPresent'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'addressPresentNetive', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.addressPresentNetive.label" default="Address Present Netive"/></label>
                        <g:textField name="emsStaffAcademicContactPersons[${i}].addressPresentNetive" class="form-control" value="${emsStaffAcademicContactPersonInstance?.addressPresentNetive}"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='addressPresentNetive'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'birthPlace', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.birthPlace.label" default="Birth Place"/></label>
                        <g:textField name="emsStaffAcademicContactPersons[${i}].birthPlace" class="form-control" value="${emsStaffAcademicContactPersonInstance?.birthPlace}"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='birthPlace'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'email', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.email.label" default="Email"/></label>
                        <g:textField name="emsStaffAcademicContactPersons[${i}].email" class="form-control" value="${emsStaffAcademicContactPersonInstance?.email}"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='email'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'phone', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.phone.label" default="Phone"/></label>
                        <g:textField name="emsStaffAcademicContactPersons[${i}].phone" class="form-control" value="${emsStaffAcademicContactPersonInstance?.phone}"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='phone'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'picPath', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.picPath.label" default="Pic Path"/></label>
                        <g:textField name="emsStaffAcademicContactPersons[${i}].picPath" class="form-control" value="${emsStaffAcademicContactPersonInstance?.picPath}"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='picPath'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'portion', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.portion.label" default="Portion"/></label>
                        <g:textField name="emsStaffAcademicContactPersons[${i}].portion" class="form-control" value="${emsStaffAcademicContactPersonInstance?.portion}"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='portion'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'remarks', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.remarks.label" default="Remarks"/></label>
                        <g:textField name="emsStaffAcademicContactPersons[${i}].remarks" class="form-control" value="${emsStaffAcademicContactPersonInstance?.remarks}"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='remarks'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'titleNetive', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.titleNetive.label" default="Title Netive"/></label>
                        <g:textField name="emsStaffAcademicContactPersons[${i}].titleNetive" class="form-control" value="${emsStaffAcademicContactPersonInstance?.titleNetive}"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='titleNetive'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'titleDept', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.titleDept.label" default="Title Dept"/></label>
                        <g:textField name="emsStaffAcademicContactPersons[${i}].titleDept" class="form-control" value="${emsStaffAcademicContactPersonInstance?.titleDept}"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='titleDept'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'titleJob', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.titleJob.label" default="Title Job"/></label>
                        <g:textField name="emsStaffAcademicContactPersons[${i}].titleJob" class="form-control" value="${emsStaffAcademicContactPersonInstance?.titleJob}"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='titleJob'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'titleOrg', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.titleOrg.label" default="Title Org"/></label>
                        <g:textField name="emsStaffAcademicContactPersons[${i}].titleOrg" class="form-control" value="${emsStaffAcademicContactPersonInstance?.titleOrg}"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='titleOrg'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'monthlySalary', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.monthlySalary.label" default="Monthly Salary"/></label>
                        <g:field type="number" name="emsStaffAcademicContactPersons[${i}].monthlySalary" class="form-control" value="${emsStaffAcademicContactPersonInstance?.monthlySalary}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='monthlySalary'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'slNo', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.slNo.label" default="Sl No"/></label>
                        <g:field type="number" name="emsStaffAcademicContactPersons[${i}].slNo" class="form-control" value="${emsStaffAcademicContactPersonInstance?.slNo}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='slNo'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonsInstance, field: 'dob', 'has-error')}'>
                        <label><g:message code="emsStaffAcademicContactPersons.dob.label" default="Dob"/></label>
                        <g:textField name="emsStaffAcademicContactPersons[${i}].dob" class="form-control dtp-date" value="${emsStaffAcademicContactPersonInstance?.dob?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
                        <g:renderErrors bean='emsStaffAcademicContactPersonsInstance' field='dob'/>
                    </div>
                </div>

                <g:hiddenField name="emsStaffAcademicContactPersons[${i}].id" value="${emsStaffAcademicContactPersonsInstance?.id}"/>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("emsStaffAcademicContactPersonsDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>