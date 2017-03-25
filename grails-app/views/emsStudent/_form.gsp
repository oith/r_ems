<!--
Use These line of code for : message.properties

#------------------------------------------------------------------------------------------------------------------------------------------------------
#                Ems Student                                                                                                                    
#------------------------------------------------------------------------------------------------------------------------------------------------------
emsStudent.pageTitle.label=Ems Student
emsStudent.addressPrmnHn.label=Address Prmn Hn
emsStudent.addressPrmnHnNative.label=Address Prmn Hn Native
emsStudent.addressPrmnPo.label=Address Prmn Po
emsStudent.addressPrmnPoNative.label=Address Prmn Po Native
emsStudent.addressPrmnVill.label=Address Prmn Vill
emsStudent.addressPrmnVillNative.label=Address Prmn Vill Native
emsStudent.addressPrsnHn.label=Address Prsn Hn
emsStudent.addressPrsnHnNative.label=Address Prsn Hn Native
emsStudent.addressPrsnPo.label=Address Prsn Po
emsStudent.addressPrsnPoNative.label=Address Prsn Po Native
emsStudent.addressPrsnVill.label=Address Prsn Vill
emsStudent.addressPrsnVillNative.label=Address Prsn Vill Native
emsStudent.admissionDate.label=Admission Date
emsStudent.birthRegNo.label=Birth Reg No
emsStudent.code.label=Code
emsStudent.comBloodGroup.label=Com Blood Group
emsStudent.comGender.label=Com Gender
emsStudent.comLocationPermanent.label=Com Location Permanent
emsStudent.comLocationPresent.label=Com Location Present
emsStudent.comProfessionFather.label=Com Profession Father
emsStudent.comProfessionMother.label=Com Profession Mother
emsStudent.comReligion.label=Com Religion
emsStudent.comTitle.label=Com Title
emsStudent.dob.label=Dob
emsStudent.email.label=Email
emsStudent.emsApplicant.label=Ems Applicant
emsStudent.emsClass.label=Ems Class
emsStudent.emsQuota.label=Ems Quota
emsStudent.emsYear.label=Ems Year
emsStudent.fatherName.label=Father Name
emsStudent.fatherNameNative.label=Father Name Native
emsStudent.firstName.label=First Name
emsStudent.firstNameNative.label=First Name Native
emsStudent.fullName.label=Full Name
emsStudent.fullNameNative.label=Full Name Native
emsStudent.imagePath.label=Image Path
emsStudent.lastName.label=Last Name
emsStudent.lastNameNative.label=Last Name Native
emsStudent.middleName.label=Middle Name
emsStudent.middleNameNative.label=Middle Name Native
emsStudent.mobile.label=Mobile
emsStudent.motherName.label=Mother Name
emsStudent.motherNameNative.label=Mother Name Native
emsStudent.nickName.label=Nick Name
emsStudent.nickNameNative.label=Nick Name Native
#------------------------------------------------------------------------------------------------------------------------------------------------------

-->
<%@ page import="org.reflection.ems.EmsStudent" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'comGender', 'has-error')} required'>
            <label class='required'><g:message code="emsStudent.comGender.label" default="Com Gender"/></label>
            <g:select name="comGender" class="form-control" from="${org.reflection.com.ComGender?.values()}" keys="${org.reflection.com.ComGender.values()*.name()}" value="${emsStudentInstance?.comGender?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStudentInstance' field='comGender'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'comReligion', 'has-error')} required'>
            <label class='required'><g:message code="emsStudent.comReligion.label" default="Com Religion"/></label>
            <g:select name="comReligion" class="form-control" from="${org.reflection.com.ComReligion?.values()}" keys="${org.reflection.com.ComReligion.values()*.name()}" value="${emsStudentInstance?.comReligion?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStudentInstance' field='comReligion'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'comTitle', 'has-error')} required'>
            <label class='required'><g:message code="emsStudent.comTitle.label" default="Com Title"/></label>
            <g:select name="comTitle" class="form-control" from="${org.reflection.com.ComTitle?.values()}" keys="${org.reflection.com.ComTitle.values()*.name()}" value="${emsStudentInstance?.comTitle?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStudentInstance' field='comTitle'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'dob', 'has-error')} required'>
            <label class='required'><g:message code="emsStudent.dob.label" default="Dob"/></label>
            <g:textField name="dob" class="form-control dtp-date" value="${emsStudentInstance?.dob?.format(grailsApplication.config.format.dtp.date)}" precision="day" required="required"/>
            <g:renderErrors bean='emsStudentInstance' field='dob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'fullName', 'has-error')} required'>
            <label class='required'><g:message code="emsStudent.fullName.label" default="Full Name"/></label>
            <g:textField name="fullName" class="form-control" value="${emsStudentInstance?.fullName}" required="required"/>
            <g:renderErrors bean='emsStudentInstance' field='fullName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'comBloodGroup', 'has-error')}'>
            <label><g:message code="emsStudent.comBloodGroup.label" default="Com Blood Group"/></label>
            <g:select name="comBloodGroup" class="form-control" from="${org.reflection.com.ComBloodGroup?.values()}" keys="${org.reflection.com.ComBloodGroup.values()*.name()}" value="${emsStudentInstance?.comBloodGroup?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStudentInstance' field='comBloodGroup'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'comLocationPermanent', 'has-error')}'>
            <label><g:message code="emsStudent.comLocationPermanent.label" default="Com Location Permanent"/></label>
            <g:select name="comLocationPermanent" class="form-control many-to-one" from="${org.reflection.com.ComLocation.list()}" value="${emsStudentInstance?.comLocationPermanent?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStudentInstance' field='comLocationPermanent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'comLocationPresent', 'has-error')}'>
            <label><g:message code="emsStudent.comLocationPresent.label" default="Com Location Present"/></label>
            <g:select name="comLocationPresent" class="form-control many-to-one" from="${org.reflection.com.ComLocation.list()}" value="${emsStudentInstance?.comLocationPresent?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStudentInstance' field='comLocationPresent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'comProfessionFather', 'has-error')}'>
            <label><g:message code="emsStudent.comProfessionFather.label" default="Com Profession Father"/></label>
            <g:select name="comProfessionFather" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${emsStudentInstance?.comProfessionFather?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStudentInstance' field='comProfessionFather'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'comProfessionMother', 'has-error')}'>
            <label><g:message code="emsStudent.comProfessionMother.label" default="Com Profession Mother"/></label>
            <g:select name="comProfessionMother" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${emsStudentInstance?.comProfessionMother?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStudentInstance' field='comProfessionMother'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'birthRegNo', 'has-error')}'>
            <label><g:message code="emsStudent.birthRegNo.label" default="Birth Reg No"/></label>
            <g:textField name="birthRegNo" class="form-control" value="${emsStudentInstance?.birthRegNo}"/>
            <g:renderErrors bean='emsStudentInstance' field='birthRegNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'email', 'has-error')}'>
            <label><g:message code="emsStudent.email.label" default="Email"/></label>
            <g:textField name="email" class="form-control" value="${emsStudentInstance?.email}"/>
            <g:renderErrors bean='emsStudentInstance' field='email'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'mobile', 'has-error')}'>
            <label><g:message code="emsStudent.mobile.label" default="Mobile"/></label>
            <g:textField name="mobile" class="form-control" value="${emsStudentInstance?.mobile}"/>
            <g:renderErrors bean='emsStudentInstance' field='mobile'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'addressPrmnHn', 'has-error')}'>
            <label><g:message code="emsStudent.addressPrmnHn.label" default="Address Prmn Hn"/></label>
            <g:textField name="addressPrmnHn" class="form-control" value="${emsStudentInstance?.addressPrmnHn}"/>
            <g:renderErrors bean='emsStudentInstance' field='addressPrmnHn'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'addressPrmnHnNative', 'has-error')}'>
            <label><g:message code="emsStudent.addressPrmnHnNative.label" default="Address Prmn Hn Native"/></label>
            <g:textField name="addressPrmnHnNative" class="form-control" value="${emsStudentInstance?.addressPrmnHnNative}"/>
            <g:renderErrors bean='emsStudentInstance' field='addressPrmnHnNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'addressPrmnPo', 'has-error')}'>
            <label><g:message code="emsStudent.addressPrmnPo.label" default="Address Prmn Po"/></label>
            <g:textField name="addressPrmnPo" class="form-control" value="${emsStudentInstance?.addressPrmnPo}"/>
            <g:renderErrors bean='emsStudentInstance' field='addressPrmnPo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'addressPrmnPoNative', 'has-error')}'>
            <label><g:message code="emsStudent.addressPrmnPoNative.label" default="Address Prmn Po Native"/></label>
            <g:textField name="addressPrmnPoNative" class="form-control" value="${emsStudentInstance?.addressPrmnPoNative}"/>
            <g:renderErrors bean='emsStudentInstance' field='addressPrmnPoNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'addressPrmnVill', 'has-error')}'>
            <label><g:message code="emsStudent.addressPrmnVill.label" default="Address Prmn Vill"/></label>
            <g:textField name="addressPrmnVill" class="form-control" value="${emsStudentInstance?.addressPrmnVill}"/>
            <g:renderErrors bean='emsStudentInstance' field='addressPrmnVill'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'addressPrmnVillNative', 'has-error')}'>
            <label><g:message code="emsStudent.addressPrmnVillNative.label" default="Address Prmn Vill Native"/></label>
            <g:textField name="addressPrmnVillNative" class="form-control" value="${emsStudentInstance?.addressPrmnVillNative}"/>
            <g:renderErrors bean='emsStudentInstance' field='addressPrmnVillNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'addressPrsnHn', 'has-error')}'>
            <label><g:message code="emsStudent.addressPrsnHn.label" default="Address Prsn Hn"/></label>
            <g:textField name="addressPrsnHn" class="form-control" value="${emsStudentInstance?.addressPrsnHn}"/>
            <g:renderErrors bean='emsStudentInstance' field='addressPrsnHn'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'addressPrsnHnNative', 'has-error')}'>
            <label><g:message code="emsStudent.addressPrsnHnNative.label" default="Address Prsn Hn Native"/></label>
            <g:textField name="addressPrsnHnNative" class="form-control" value="${emsStudentInstance?.addressPrsnHnNative}"/>
            <g:renderErrors bean='emsStudentInstance' field='addressPrsnHnNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'addressPrsnPo', 'has-error')}'>
            <label><g:message code="emsStudent.addressPrsnPo.label" default="Address Prsn Po"/></label>
            <g:textField name="addressPrsnPo" class="form-control" value="${emsStudentInstance?.addressPrsnPo}"/>
            <g:renderErrors bean='emsStudentInstance' field='addressPrsnPo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'addressPrsnPoNative', 'has-error')}'>
            <label><g:message code="emsStudent.addressPrsnPoNative.label" default="Address Prsn Po Native"/></label>
            <g:textField name="addressPrsnPoNative" class="form-control" value="${emsStudentInstance?.addressPrsnPoNative}"/>
            <g:renderErrors bean='emsStudentInstance' field='addressPrsnPoNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'addressPrsnVill', 'has-error')}'>
            <label><g:message code="emsStudent.addressPrsnVill.label" default="Address Prsn Vill"/></label>
            <g:textField name="addressPrsnVill" class="form-control" value="${emsStudentInstance?.addressPrsnVill}"/>
            <g:renderErrors bean='emsStudentInstance' field='addressPrsnVill'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'addressPrsnVillNative', 'has-error')}'>
            <label><g:message code="emsStudent.addressPrsnVillNative.label" default="Address Prsn Vill Native"/></label>
            <g:textField name="addressPrsnVillNative" class="form-control" value="${emsStudentInstance?.addressPrsnVillNative}"/>
            <g:renderErrors bean='emsStudentInstance' field='addressPrsnVillNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'fatherName', 'has-error')}'>
            <label><g:message code="emsStudent.fatherName.label" default="Father Name"/></label>
            <g:textField name="fatherName" class="form-control" value="${emsStudentInstance?.fatherName}"/>
            <g:renderErrors bean='emsStudentInstance' field='fatherName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'fatherNameNative', 'has-error')}'>
            <label><g:message code="emsStudent.fatherNameNative.label" default="Father Name Native"/></label>
            <g:textField name="fatherNameNative" class="form-control" value="${emsStudentInstance?.fatherNameNative}"/>
            <g:renderErrors bean='emsStudentInstance' field='fatherNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'firstName', 'has-error')}'>
            <label><g:message code="emsStudent.firstName.label" default="First Name"/></label>
            <g:textField name="firstName" class="form-control" value="${emsStudentInstance?.firstName}"/>
            <g:renderErrors bean='emsStudentInstance' field='firstName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'firstNameNative', 'has-error')}'>
            <label><g:message code="emsStudent.firstNameNative.label" default="First Name Native"/></label>
            <g:textField name="firstNameNative" class="form-control" value="${emsStudentInstance?.firstNameNative}"/>
            <g:renderErrors bean='emsStudentInstance' field='firstNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'fullNameNative', 'has-error')}'>
            <label><g:message code="emsStudent.fullNameNative.label" default="Full Name Native"/></label>
            <g:textField name="fullNameNative" class="form-control" value="${emsStudentInstance?.fullNameNative}"/>
            <g:renderErrors bean='emsStudentInstance' field='fullNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'imagePath', 'has-error')}'>
            <label><g:message code="emsStudent.imagePath.label" default="Image Path"/></label>
            <g:textField name="imagePath" class="form-control" value="${emsStudentInstance?.imagePath}"/>
            <g:renderErrors bean='emsStudentInstance' field='imagePath'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'lastName', 'has-error')}'>
            <label><g:message code="emsStudent.lastName.label" default="Last Name"/></label>
            <g:textField name="lastName" class="form-control" value="${emsStudentInstance?.lastName}"/>
            <g:renderErrors bean='emsStudentInstance' field='lastName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'lastNameNative', 'has-error')}'>
            <label><g:message code="emsStudent.lastNameNative.label" default="Last Name Native"/></label>
            <g:textField name="lastNameNative" class="form-control" value="${emsStudentInstance?.lastNameNative}"/>
            <g:renderErrors bean='emsStudentInstance' field='lastNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'middleName', 'has-error')}'>
            <label><g:message code="emsStudent.middleName.label" default="Middle Name"/></label>
            <g:textField name="middleName" class="form-control" value="${emsStudentInstance?.middleName}"/>
            <g:renderErrors bean='emsStudentInstance' field='middleName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'middleNameNative', 'has-error')}'>
            <label><g:message code="emsStudent.middleNameNative.label" default="Middle Name Native"/></label>
            <g:textField name="middleNameNative" class="form-control" value="${emsStudentInstance?.middleNameNative}"/>
            <g:renderErrors bean='emsStudentInstance' field='middleNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'motherName', 'has-error')}'>
            <label><g:message code="emsStudent.motherName.label" default="Mother Name"/></label>
            <g:textField name="motherName" class="form-control" value="${emsStudentInstance?.motherName}"/>
            <g:renderErrors bean='emsStudentInstance' field='motherName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'motherNameNative', 'has-error')}'>
            <label><g:message code="emsStudent.motherNameNative.label" default="Mother Name Native"/></label>
            <g:textField name="motherNameNative" class="form-control" value="${emsStudentInstance?.motherNameNative}"/>
            <g:renderErrors bean='emsStudentInstance' field='motherNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'nickName', 'has-error')}'>
            <label><g:message code="emsStudent.nickName.label" default="Nick Name"/></label>
            <g:textField name="nickName" class="form-control" value="${emsStudentInstance?.nickName}"/>
            <g:renderErrors bean='emsStudentInstance' field='nickName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'nickNameNative', 'has-error')}'>
            <label><g:message code="emsStudent.nickNameNative.label" default="Nick Name Native"/></label>
            <g:textField name="nickNameNative" class="form-control" value="${emsStudentInstance?.nickNameNative}"/>
            <g:renderErrors bean='emsStudentInstance' field='nickNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'emsClass', 'has-error')} required'>
            <label class='required'><g:message code="emsStudent.emsClass.label" default="Ems Class"/></label>
            <g:select name="emsClass" class="form-control" from="${org.reflection.ems.EmsClass?.values()}" keys="${org.reflection.ems.EmsClass.values()*.name()}" value="${emsStudentInstance?.emsClass?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStudentInstance' field='emsClass'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'emsYear', 'has-error')} required'>
            <label class='required'><g:message code="emsStudent.emsYear.label" default="Ems Year"/></label>
            <g:select name="emsYear" class="form-control" from="${org.reflection.ems.EmsYear?.values()}" keys="${org.reflection.ems.EmsYear.values()*.name()}" value="${emsStudentInstance?.emsYear?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStudentInstance' field='emsYear'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'code', 'has-error')} required'>
            <label class='required'><g:message code="emsStudent.code.label" default="Code"/></label>
            <g:textField name="code" class="form-control" value="${emsStudentInstance?.code}" required="required"/>
            <g:renderErrors bean='emsStudentInstance' field='code'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'admissionDate', 'has-error')} required'>
            <label class='required'><g:message code="emsStudent.admissionDate.label" default="Admission Date"/></label>
            <g:textField name="admissionDate" class="form-control dtp-date" value="${emsStudentInstance?.admissionDate?.format(grailsApplication.config.format.dtp.date)}" precision="day" required="required"/>
            <g:renderErrors bean='emsStudentInstance' field='admissionDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'emsQuota', 'has-error')}'>
            <label><g:message code="emsStudent.emsQuota.label" default="Ems Quota"/></label>
            <g:select name="emsQuota" class="form-control" from="${org.reflection.ems.EmsQuota?.values()}" keys="${org.reflection.ems.EmsQuota.values()*.name()}" value="${emsStudentInstance?.emsQuota?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStudentInstance' field='emsQuota'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStudentInstance, field: 'emsApplicant', 'has-error')} required'>
            <label class='required'><g:message code="emsStudent.emsApplicant.label" default="Ems Applicant"/></label>
            <g:select name="emsApplicant" class="form-control many-to-one" from="${org.reflection.ems.EmsApplicant.list()}" value="${emsStudentInstance?.emsApplicant?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStudentInstance' field='emsApplicant'/>
        </div>
    </div>

</fieldset>
