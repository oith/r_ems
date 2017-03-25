<!--
Use These line of code for : message.properties

#------------------------------------------------------------------------------------------------------------------------------------------------------
#                Com Contact Person                                                                                                                    
#------------------------------------------------------------------------------------------------------------------------------------------------------
comContactPerson.pageTitle.label=Com Contact Person
comContactPerson.addressPermanent.label=Address Permanent
comContactPerson.addressPermanentNetive.label=Address Permanent Netive
comContactPerson.addressPresent.label=Address Present
comContactPerson.addressPresentNetive.label=Address Present Netive
comContactPerson.birthPlace.label=Birth Place
comContactPerson.comContactPersonType.label=Com Contact Person Type
comContactPerson.comLookupRefRelation.label=Com Lookup Ref Relation
comContactPerson.comMaritalStatus.label=Com Marital Status
comContactPerson.comProfession.label=Com Profession
comContactPerson.dob.label=Dob
comContactPerson.email.label=Email
comContactPerson.mobile.label=Mobile
comContactPerson.monthlySalary.label=Monthly Salary
comContactPerson.phone.label=Phone
comContactPerson.picPath.label=Pic Path
comContactPerson.portion.label=Portion
comContactPerson.remarks.label=Remarks
comContactPerson.slNo.label=Sl No
comContactPerson.title.label=Title
comContactPerson.titleDept.label=Title Dept
comContactPerson.titleJob.label=Title Job
comContactPerson.titleNetive.label=Title Netive
comContactPerson.titleOrg.label=Title Org
#------------------------------------------------------------------------------------------------------------------------------------------------------

-->
<%@ page import="org.reflection.com.ComContactPerson" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'comContactPersonType', 'has-error')} required'>
            <label class='required'><g:message code="comContactPerson.comContactPersonType.label" default="Com Contact Person Type"/></label>
            <g:select name="comContactPersonType" class="form-control" from="${org.reflection.com.ComContactPersonType?.values()}" keys="${org.reflection.com.ComContactPersonType.values()*.name()}" value="${comContactPersonInstance?.comContactPersonType?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='comContactPersonInstance' field='comContactPersonType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'comMaritalStatus', 'has-error')} required'>
            <label class='required'><g:message code="comContactPerson.comMaritalStatus.label" default="Com Marital Status"/></label>
            <g:select name="comMaritalStatus" class="form-control" from="${org.reflection.com.ComMaritalStatus?.values()}" keys="${org.reflection.com.ComMaritalStatus.values()*.name()}" value="${comContactPersonInstance?.comMaritalStatus?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='comContactPersonInstance' field='comMaritalStatus'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'addressPermanent', 'has-error')} required'>
            <label class='required'><g:message code="comContactPerson.addressPermanent.label" default="Address Permanent"/></label>
            <g:textField name="addressPermanent" class="form-control" value="${comContactPersonInstance?.addressPermanent}" required="required"/>
            <g:renderErrors bean='comContactPersonInstance' field='addressPermanent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'mobile', 'has-error')} required'>
            <label class='required'><g:message code="comContactPerson.mobile.label" default="Mobile"/></label>
            <g:textField name="mobile" class="form-control" value="${comContactPersonInstance?.mobile}" required="required"/>
            <g:renderErrors bean='comContactPersonInstance' field='mobile'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'title', 'has-error')} required'>
            <label class='required'><g:message code="comContactPerson.title.label" default="Title"/></label>
            <g:textField name="title" class="form-control" value="${comContactPersonInstance?.title}" required="required"/>
            <g:renderErrors bean='comContactPersonInstance' field='title'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'comLookupRefRelation', 'has-error')}'>
            <label><g:message code="comContactPerson.comLookupRefRelation.label" default="Com Lookup Ref Relation"/></label>
            <g:select name="comLookupRefRelation" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${comContactPersonInstance?.comLookupRefRelation?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='comContactPersonInstance' field='comLookupRefRelation'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'comProfession', 'has-error')}'>
            <label><g:message code="comContactPerson.comProfession.label" default="Com Profession"/></label>
            <g:select name="comProfession" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${comContactPersonInstance?.comProfession?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='comContactPersonInstance' field='comProfession'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'addressPermanentNetive', 'has-error')}'>
            <label><g:message code="comContactPerson.addressPermanentNetive.label" default="Address Permanent Netive"/></label>
            <g:textField name="addressPermanentNetive" class="form-control" value="${comContactPersonInstance?.addressPermanentNetive}"/>
            <g:renderErrors bean='comContactPersonInstance' field='addressPermanentNetive'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'addressPresent', 'has-error')}'>
            <label><g:message code="comContactPerson.addressPresent.label" default="Address Present"/></label>
            <g:textField name="addressPresent" class="form-control" value="${comContactPersonInstance?.addressPresent}"/>
            <g:renderErrors bean='comContactPersonInstance' field='addressPresent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'addressPresentNetive', 'has-error')}'>
            <label><g:message code="comContactPerson.addressPresentNetive.label" default="Address Present Netive"/></label>
            <g:textField name="addressPresentNetive" class="form-control" value="${comContactPersonInstance?.addressPresentNetive}"/>
            <g:renderErrors bean='comContactPersonInstance' field='addressPresentNetive'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'birthPlace', 'has-error')}'>
            <label><g:message code="comContactPerson.birthPlace.label" default="Birth Place"/></label>
            <g:textField name="birthPlace" class="form-control" value="${comContactPersonInstance?.birthPlace}"/>
            <g:renderErrors bean='comContactPersonInstance' field='birthPlace'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'email', 'has-error')}'>
            <label><g:message code="comContactPerson.email.label" default="Email"/></label>
            <g:textField name="email" class="form-control" value="${comContactPersonInstance?.email}"/>
            <g:renderErrors bean='comContactPersonInstance' field='email'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'phone', 'has-error')}'>
            <label><g:message code="comContactPerson.phone.label" default="Phone"/></label>
            <g:textField name="phone" class="form-control" value="${comContactPersonInstance?.phone}"/>
            <g:renderErrors bean='comContactPersonInstance' field='phone'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'picPath', 'has-error')}'>
            <label><g:message code="comContactPerson.picPath.label" default="Pic Path"/></label>
            <g:textField name="picPath" class="form-control" value="${comContactPersonInstance?.picPath}"/>
            <g:renderErrors bean='comContactPersonInstance' field='picPath'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'portion', 'has-error')}'>
            <label><g:message code="comContactPerson.portion.label" default="Portion"/></label>
            <g:textField name="portion" class="form-control" value="${comContactPersonInstance?.portion}"/>
            <g:renderErrors bean='comContactPersonInstance' field='portion'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="comContactPerson.remarks.label" default="Remarks"/></label>
            <g:textField name="remarks" class="form-control" value="${comContactPersonInstance?.remarks}"/>
            <g:renderErrors bean='comContactPersonInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'titleNetive', 'has-error')}'>
            <label><g:message code="comContactPerson.titleNetive.label" default="Title Netive"/></label>
            <g:textField name="titleNetive" class="form-control" value="${comContactPersonInstance?.titleNetive}"/>
            <g:renderErrors bean='comContactPersonInstance' field='titleNetive'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'titleDept', 'has-error')}'>
            <label><g:message code="comContactPerson.titleDept.label" default="Title Dept"/></label>
            <g:textField name="titleDept" class="form-control" value="${comContactPersonInstance?.titleDept}"/>
            <g:renderErrors bean='comContactPersonInstance' field='titleDept'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'titleJob', 'has-error')}'>
            <label><g:message code="comContactPerson.titleJob.label" default="Title Job"/></label>
            <g:textField name="titleJob" class="form-control" value="${comContactPersonInstance?.titleJob}"/>
            <g:renderErrors bean='comContactPersonInstance' field='titleJob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'titleOrg', 'has-error')}'>
            <label><g:message code="comContactPerson.titleOrg.label" default="Title Org"/></label>
            <g:textField name="titleOrg" class="form-control" value="${comContactPersonInstance?.titleOrg}"/>
            <g:renderErrors bean='comContactPersonInstance' field='titleOrg'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'monthlySalary', 'has-error')}'>
            <label><g:message code="comContactPerson.monthlySalary.label" default="Monthly Salary"/></label>
            <g:field type="number" name="monthlySalary" class="form-control" value="${comContactPersonInstance?.monthlySalary}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comContactPersonInstance' field='monthlySalary'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'slNo', 'has-error')}'>
            <label><g:message code="comContactPerson.slNo.label" default="Sl No"/></label>
            <g:field type="number" name="slNo" class="form-control" value="${comContactPersonInstance?.slNo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comContactPersonInstance' field='slNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comContactPersonInstance, field: 'dob', 'has-error')}'>
            <label><g:message code="comContactPerson.dob.label" default="Dob"/></label>
            <g:textField name="dob" class="form-control dtp-date" value="${comContactPersonInstance?.dob?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comContactPersonInstance' field='dob'/>
        </div>
    </div>

</fieldset>
