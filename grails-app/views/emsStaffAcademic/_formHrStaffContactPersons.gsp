

<fieldset class='oneToMany'>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <legend class='text-purple' style='padding-top: 10px'>
        ${message(code: 'hrStaffContactPersons.pageTitle.label', default: 'Hr Staff Contact Persons Details')}
    </legend>
    <g:each in="${hrStaffContactPersonsList ?: new org.reflection.hr.HrStaffContactPerson()}" status="i" var="hrStaffContactPersonsInstance">
        <div class='box box-info hrStaffContactPersonsDetails'>
            <div class='box-body'>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'comContactPersonType', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffContactPersons.comContactPersonType.label" default="Com Contact Person Type"/></label>
                        <g:select name="hrStaffContactPersons[${i}].comContactPersonType" class="form-control" from="${org.reflection.com.ComContactPersonType?.values()}" keys="${org.reflection.com.ComContactPersonType.values()*.name()}" value="${hrStaffContactPersonInstance?.comContactPersonType?.name()}"  noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='comContactPersonType'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'comMaritalStatus', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffContactPersons.comMaritalStatus.label" default="Com Marital Status"/></label>
                        <g:select name="hrStaffContactPersons[${i}].comMaritalStatus" class="form-control" from="${org.reflection.com.ComMaritalStatus?.values()}" keys="${org.reflection.com.ComMaritalStatus.values()*.name()}" value="${hrStaffContactPersonInstance?.comMaritalStatus?.name()}"  noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='comMaritalStatus'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'addressPermanent', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffContactPersons.addressPermanent.label" default="Address Permanent"/></label>
                        <g:textField name="hrStaffContactPersons[${i}].addressPermanent" class="form-control" value="${hrStaffContactPersonInstance?.addressPermanent}" required="required"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='addressPermanent'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'mobile', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffContactPersons.mobile.label" default="Mobile"/></label>
                        <g:textField name="hrStaffContactPersons[${i}].mobile" class="form-control" value="${hrStaffContactPersonInstance?.mobile}" required="required"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='mobile'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'title', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffContactPersons.title.label" default="Title"/></label>
                        <g:textField name="hrStaffContactPersons[${i}].title" class="form-control" value="${hrStaffContactPersonInstance?.title}" required="required"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='title'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'comLookupRefRelation', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.comLookupRefRelation.label" default="Com Lookup Ref Relation"/></label>
                        <g:select name="hrStaffContactPersons[${i}].comLookupRefRelation" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${hrStaffContactPersonInstance?.comLookupRefRelation?.id}" optionKey="id" noSelection="['': 'Select One']"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='comLookupRefRelation'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'comProfession', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.comProfession.label" default="Com Profession"/></label>
                        <g:select name="hrStaffContactPersons[${i}].comProfession" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${hrStaffContactPersonInstance?.comProfession?.name()}"  noSelection="['': 'Select One']"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='comProfession'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'addressPermanentNetive', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.addressPermanentNetive.label" default="Address Permanent Netive"/></label>
                        <g:textField name="hrStaffContactPersons[${i}].addressPermanentNetive" class="form-control" value="${hrStaffContactPersonInstance?.addressPermanentNetive}"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='addressPermanentNetive'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'addressPresent', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.addressPresent.label" default="Address Present"/></label>
                        <g:textField name="hrStaffContactPersons[${i}].addressPresent" class="form-control" value="${hrStaffContactPersonInstance?.addressPresent}"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='addressPresent'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'addressPresentNetive', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.addressPresentNetive.label" default="Address Present Netive"/></label>
                        <g:textField name="hrStaffContactPersons[${i}].addressPresentNetive" class="form-control" value="${hrStaffContactPersonInstance?.addressPresentNetive}"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='addressPresentNetive'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'birthPlace', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.birthPlace.label" default="Birth Place"/></label>
                        <g:textField name="hrStaffContactPersons[${i}].birthPlace" class="form-control" value="${hrStaffContactPersonInstance?.birthPlace}"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='birthPlace'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'email', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.email.label" default="Email"/></label>
                        <g:textField name="hrStaffContactPersons[${i}].email" class="form-control" value="${hrStaffContactPersonInstance?.email}"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='email'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'phone', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.phone.label" default="Phone"/></label>
                        <g:textField name="hrStaffContactPersons[${i}].phone" class="form-control" value="${hrStaffContactPersonInstance?.phone}"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='phone'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'picPath', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.picPath.label" default="Pic Path"/></label>
                        <g:textField name="hrStaffContactPersons[${i}].picPath" class="form-control" value="${hrStaffContactPersonInstance?.picPath}"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='picPath'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'portion', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.portion.label" default="Portion"/></label>
                        <g:textField name="hrStaffContactPersons[${i}].portion" class="form-control" value="${hrStaffContactPersonInstance?.portion}"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='portion'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'remarks', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.remarks.label" default="Remarks"/></label>
                        <g:textField name="hrStaffContactPersons[${i}].remarks" class="form-control" value="${hrStaffContactPersonInstance?.remarks}"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='remarks'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'titleNetive', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.titleNetive.label" default="Title Netive"/></label>
                        <g:textField name="hrStaffContactPersons[${i}].titleNetive" class="form-control" value="${hrStaffContactPersonInstance?.titleNetive}"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='titleNetive'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'titleDept', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.titleDept.label" default="Title Dept"/></label>
                        <g:textField name="hrStaffContactPersons[${i}].titleDept" class="form-control" value="${hrStaffContactPersonInstance?.titleDept}"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='titleDept'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'titleJob', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.titleJob.label" default="Title Job"/></label>
                        <g:textField name="hrStaffContactPersons[${i}].titleJob" class="form-control" value="${hrStaffContactPersonInstance?.titleJob}"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='titleJob'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'titleOrg', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.titleOrg.label" default="Title Org"/></label>
                        <g:textField name="hrStaffContactPersons[${i}].titleOrg" class="form-control" value="${hrStaffContactPersonInstance?.titleOrg}"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='titleOrg'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'monthlySalary', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.monthlySalary.label" default="Monthly Salary"/></label>
                        <g:field type="number" name="hrStaffContactPersons[${i}].monthlySalary" class="form-control" value="${hrStaffContactPersonInstance?.monthlySalary}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='monthlySalary'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'slNo', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.slNo.label" default="Sl No"/></label>
                        <g:field type="number" name="hrStaffContactPersons[${i}].slNo" class="form-control" value="${hrStaffContactPersonInstance?.slNo}" min="0" max="9999999" step="1.00"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='slNo'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'dob', 'has-error')}'>
                        <label><g:message code="hrStaffContactPersons.dob.label" default="Dob"/></label>
                        <g:textField name="hrStaffContactPersons[${i}].dob" class="form-control dtp-date" value="${hrStaffContactPersonInstance?.dob?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='dob'/>
                    </div>
                </div>

                <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
                    <div class='form-group ${hasErrors(bean: hrStaffContactPersonsInstance, field: 'hrStaff', 'has-error')} required'>
                        <label class='required'><g:message code="hrStaffContactPersons.hrStaff.label" default="Hr Staff"/></label>
                        <g:select name="hrStaffContactPersons[${i}].hrStaff" class="form-control many-to-one" from="${org.reflection.hr.HrStaff.list()}" value="${hrStaffContactPersonInstance?.hrStaff?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
                        <g:renderErrors bean='hrStaffContactPersonsInstance' field='hrStaff'/>
                    </div>
                </div>

            </div>  %{-- /.box-body --}%
        </div>  %{-- /.box /.box-info --}%
    </g:each>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
    <div class='pull-right'>
        <a class='btn btn-block btn-primary btn-xs' onclick='dtlAdd("hrStaffContactPersonsDetails");'>
            <i class='fa fa-plus'></i>
            <g:message code='default.button.addMore.label' default='Add more'/>
        </a>
    </div>
%{------------------------------------------------------------------------------------------------------------------------------------------------------------}%
</fieldset>