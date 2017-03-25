<%@ page import="org.reflection.ems.EmsStaffAcademicContactPerson" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'comContactPersonType', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicContactPerson.comContactPersonType.label" default="Com Contact Person Type"/></label>
            <g:select name="comContactPersonType" class="form-control" from="${org.reflection.com.ComContactPersonType?.values()}" keys="${org.reflection.com.ComContactPersonType.values()*.name()}" value="${emsStaffAcademicContactPersonInstance?.comContactPersonType?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='comContactPersonType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'comMaritalStatus', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicContactPerson.comMaritalStatus.label" default="Com Marital Status"/></label>
            <g:select name="comMaritalStatus" class="form-control" from="${org.reflection.com.ComMaritalStatus?.values()}" keys="${org.reflection.com.ComMaritalStatus.values()*.name()}" value="${emsStaffAcademicContactPersonInstance?.comMaritalStatus?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='comMaritalStatus'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'addressPermanent', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicContactPerson.addressPermanent.label" default="Address Permanent"/></label>
            <g:textField name="addressPermanent" class="form-control" value="${emsStaffAcademicContactPersonInstance?.addressPermanent}" required="required"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='addressPermanent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'mobile', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicContactPerson.mobile.label" default="Mobile"/></label>
            <g:textField name="mobile" class="form-control" value="${emsStaffAcademicContactPersonInstance?.mobile}" required="required"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='mobile'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'title', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicContactPerson.title.label" default="Title"/></label>
            <g:textField name="title" class="form-control" value="${emsStaffAcademicContactPersonInstance?.title}" required="required"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='title'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'comLookupRefRelation', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.comLookupRefRelation.label" default="Com Lookup Ref Relation"/></label>
            <g:select name="comLookupRefRelation" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${emsStaffAcademicContactPersonInstance?.comLookupRefRelation?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='comLookupRefRelation'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'comProfession', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.comProfession.label" default="Com Profession"/></label>
            <g:select name="comProfession" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${emsStaffAcademicContactPersonInstance?.comProfession?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='comProfession'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'addressPermanentNetive', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.addressPermanentNetive.label" default="Address Permanent Netive"/></label>
            <g:textField name="addressPermanentNetive" class="form-control" value="${emsStaffAcademicContactPersonInstance?.addressPermanentNetive}"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='addressPermanentNetive'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'addressPresent', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.addressPresent.label" default="Address Present"/></label>
            <g:textField name="addressPresent" class="form-control" value="${emsStaffAcademicContactPersonInstance?.addressPresent}"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='addressPresent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'addressPresentNetive', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.addressPresentNetive.label" default="Address Present Netive"/></label>
            <g:textField name="addressPresentNetive" class="form-control" value="${emsStaffAcademicContactPersonInstance?.addressPresentNetive}"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='addressPresentNetive'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'birthPlace', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.birthPlace.label" default="Birth Place"/></label>
            <g:textField name="birthPlace" class="form-control" value="${emsStaffAcademicContactPersonInstance?.birthPlace}"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='birthPlace'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'email', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.email.label" default="Email"/></label>
            <g:textField name="email" class="form-control" value="${emsStaffAcademicContactPersonInstance?.email}"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='email'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'phone', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.phone.label" default="Phone"/></label>
            <g:textField name="phone" class="form-control" value="${emsStaffAcademicContactPersonInstance?.phone}"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='phone'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'picPath', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.picPath.label" default="Pic Path"/></label>
            <g:textField name="picPath" class="form-control" value="${emsStaffAcademicContactPersonInstance?.picPath}"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='picPath'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'portion', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.portion.label" default="Portion"/></label>
            <g:textField name="portion" class="form-control" value="${emsStaffAcademicContactPersonInstance?.portion}"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='portion'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.remarks.label" default="Remarks"/></label>
            <g:textField name="remarks" class="form-control" value="${emsStaffAcademicContactPersonInstance?.remarks}"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'titleNetive', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.titleNetive.label" default="Title Netive"/></label>
            <g:textField name="titleNetive" class="form-control" value="${emsStaffAcademicContactPersonInstance?.titleNetive}"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='titleNetive'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'titleDept', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.titleDept.label" default="Title Dept"/></label>
            <g:textField name="titleDept" class="form-control" value="${emsStaffAcademicContactPersonInstance?.titleDept}"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='titleDept'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'titleJob', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.titleJob.label" default="Title Job"/></label>
            <g:textField name="titleJob" class="form-control" value="${emsStaffAcademicContactPersonInstance?.titleJob}"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='titleJob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'titleOrg', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.titleOrg.label" default="Title Org"/></label>
            <g:textField name="titleOrg" class="form-control" value="${emsStaffAcademicContactPersonInstance?.titleOrg}"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='titleOrg'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'monthlySalary', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.monthlySalary.label" default="Monthly Salary"/></label>
            <g:field type="number" name="monthlySalary" class="form-control" value="${emsStaffAcademicContactPersonInstance?.monthlySalary}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='monthlySalary'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'slNo', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.slNo.label" default="Sl No"/></label>
            <g:field type="number" name="slNo" class="form-control" value="${emsStaffAcademicContactPersonInstance?.slNo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='slNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'dob', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.dob.label" default="Dob"/></label>
            <g:textField name="dob" class="form-control dtp-date" value="${emsStaffAcademicContactPersonInstance?.dob?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='dob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicContactPersonInstance, field: 'emsStaffAcademic', 'has-error')}'>
            <label><g:message code="emsStaffAcademicContactPerson.emsStaffAcademic.label" default="Ems Staff Academic"/></label>
            <g:select name="emsStaffAcademic" class="form-control many-to-one" from="${org.reflection.ems.EmsStaffAcademic.list()}" value="${emsStaffAcademicContactPersonInstance?.emsStaffAcademic?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStaffAcademicContactPersonInstance' field='emsStaffAcademic'/>
        </div>
    </div>

</fieldset>
