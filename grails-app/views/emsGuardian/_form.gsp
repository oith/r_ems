<%@ page import="org.reflection.ems.EmsGuardian" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'comGender', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardian.comGender.label" default="Com Gender"/></label>
            <g:select name="comGender" class="form-control" from="${org.reflection.com.ComGender?.values()}" keys="${org.reflection.com.ComGender.values()*.name()}" value="${emsGuardianInstance?.comGender?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsGuardianInstance' field='comGender'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'comReligion', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardian.comReligion.label" default="Com Religion"/></label>
            <g:select name="comReligion" class="form-control" from="${org.reflection.com.ComReligion?.values()}" keys="${org.reflection.com.ComReligion.values()*.name()}" value="${emsGuardianInstance?.comReligion?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsGuardianInstance' field='comReligion'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'comTitle', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardian.comTitle.label" default="Com Title"/></label>
            <g:select name="comTitle" class="form-control" from="${org.reflection.com.ComTitle?.values()}" keys="${org.reflection.com.ComTitle.values()*.name()}" value="${emsGuardianInstance?.comTitle?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsGuardianInstance' field='comTitle'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'dob', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardian.dob.label" default="Dob"/></label>
            <g:textField name="dob" class="form-control dtp-date" value="${emsGuardianInstance?.dob?.format(grailsApplication.config.format.dtp.date)}" precision="day" required="required"/>
            <g:renderErrors bean='emsGuardianInstance' field='dob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'fullName', 'has-error')} required'>
            <label class='required'><g:message code="emsGuardian.fullName.label" default="Full Name"/></label>
            <g:textField name="fullName" class="form-control" value="${emsGuardianInstance?.fullName}" required="required"/>
            <g:renderErrors bean='emsGuardianInstance' field='fullName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'comBloodGroup', 'has-error')}'>
            <label><g:message code="emsGuardian.comBloodGroup.label" default="Com Blood Group"/></label>
            <g:select name="comBloodGroup" class="form-control" from="${org.reflection.com.ComBloodGroup?.values()}" keys="${org.reflection.com.ComBloodGroup.values()*.name()}" value="${emsGuardianInstance?.comBloodGroup?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsGuardianInstance' field='comBloodGroup'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'comLocationPermanent', 'has-error')}'>
            <label><g:message code="emsGuardian.comLocationPermanent.label" default="Com Location Permanent"/></label>
            <g:select name="comLocationPermanent" class="form-control many-to-one" from="${org.reflection.com.ComLocation.list()}" value="${emsGuardianInstance?.comLocationPermanent?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsGuardianInstance' field='comLocationPermanent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'comLocationPresent', 'has-error')}'>
            <label><g:message code="emsGuardian.comLocationPresent.label" default="Com Location Present"/></label>
            <g:select name="comLocationPresent" class="form-control many-to-one" from="${org.reflection.com.ComLocation.list()}" value="${emsGuardianInstance?.comLocationPresent?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsGuardianInstance' field='comLocationPresent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'comProfessionFather', 'has-error')}'>
            <label><g:message code="emsGuardian.comProfessionFather.label" default="Com Profession Father"/></label>
            <g:select name="comProfessionFather" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${emsGuardianInstance?.comProfessionFather?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsGuardianInstance' field='comProfessionFather'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'comProfessionMother', 'has-error')}'>
            <label><g:message code="emsGuardian.comProfessionMother.label" default="Com Profession Mother"/></label>
            <g:select name="comProfessionMother" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${emsGuardianInstance?.comProfessionMother?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsGuardianInstance' field='comProfessionMother'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'birthRegNo', 'has-error')}'>
            <label><g:message code="emsGuardian.birthRegNo.label" default="Birth Reg No"/></label>
            <g:textField name="birthRegNo" class="form-control" value="${emsGuardianInstance?.birthRegNo}"/>
            <g:renderErrors bean='emsGuardianInstance' field='birthRegNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'email', 'has-error')}'>
            <label><g:message code="emsGuardian.email.label" default="Email"/></label>
            <g:textField name="email" class="form-control" value="${emsGuardianInstance?.email}"/>
            <g:renderErrors bean='emsGuardianInstance' field='email'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'mobile', 'has-error')}'>
            <label><g:message code="emsGuardian.mobile.label" default="Mobile"/></label>
            <g:textField name="mobile" class="form-control" value="${emsGuardianInstance?.mobile}"/>
            <g:renderErrors bean='emsGuardianInstance' field='mobile'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'addressPrmnHn', 'has-error')}'>
            <label><g:message code="emsGuardian.addressPrmnHn.label" default="Address Prmn Hn"/></label>
            <g:textField name="addressPrmnHn" class="form-control" value="${emsGuardianInstance?.addressPrmnHn}"/>
            <g:renderErrors bean='emsGuardianInstance' field='addressPrmnHn'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'addressPrmnHnNative', 'has-error')}'>
            <label><g:message code="emsGuardian.addressPrmnHnNative.label" default="Address Prmn Hn Native"/></label>
            <g:textField name="addressPrmnHnNative" class="form-control" value="${emsGuardianInstance?.addressPrmnHnNative}"/>
            <g:renderErrors bean='emsGuardianInstance' field='addressPrmnHnNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'addressPrmnPo', 'has-error')}'>
            <label><g:message code="emsGuardian.addressPrmnPo.label" default="Address Prmn Po"/></label>
            <g:textField name="addressPrmnPo" class="form-control" value="${emsGuardianInstance?.addressPrmnPo}"/>
            <g:renderErrors bean='emsGuardianInstance' field='addressPrmnPo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'addressPrmnPoNative', 'has-error')}'>
            <label><g:message code="emsGuardian.addressPrmnPoNative.label" default="Address Prmn Po Native"/></label>
            <g:textField name="addressPrmnPoNative" class="form-control" value="${emsGuardianInstance?.addressPrmnPoNative}"/>
            <g:renderErrors bean='emsGuardianInstance' field='addressPrmnPoNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'addressPrmnVill', 'has-error')}'>
            <label><g:message code="emsGuardian.addressPrmnVill.label" default="Address Prmn Vill"/></label>
            <g:textField name="addressPrmnVill" class="form-control" value="${emsGuardianInstance?.addressPrmnVill}"/>
            <g:renderErrors bean='emsGuardianInstance' field='addressPrmnVill'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'addressPrmnVillNative', 'has-error')}'>
            <label><g:message code="emsGuardian.addressPrmnVillNative.label" default="Address Prmn Vill Native"/></label>
            <g:textField name="addressPrmnVillNative" class="form-control" value="${emsGuardianInstance?.addressPrmnVillNative}"/>
            <g:renderErrors bean='emsGuardianInstance' field='addressPrmnVillNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'addressPrsnHn', 'has-error')}'>
            <label><g:message code="emsGuardian.addressPrsnHn.label" default="Address Prsn Hn"/></label>
            <g:textField name="addressPrsnHn" class="form-control" value="${emsGuardianInstance?.addressPrsnHn}"/>
            <g:renderErrors bean='emsGuardianInstance' field='addressPrsnHn'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'addressPrsnHnNative', 'has-error')}'>
            <label><g:message code="emsGuardian.addressPrsnHnNative.label" default="Address Prsn Hn Native"/></label>
            <g:textField name="addressPrsnHnNative" class="form-control" value="${emsGuardianInstance?.addressPrsnHnNative}"/>
            <g:renderErrors bean='emsGuardianInstance' field='addressPrsnHnNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'addressPrsnPo', 'has-error')}'>
            <label><g:message code="emsGuardian.addressPrsnPo.label" default="Address Prsn Po"/></label>
            <g:textField name="addressPrsnPo" class="form-control" value="${emsGuardianInstance?.addressPrsnPo}"/>
            <g:renderErrors bean='emsGuardianInstance' field='addressPrsnPo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'addressPrsnPoNative', 'has-error')}'>
            <label><g:message code="emsGuardian.addressPrsnPoNative.label" default="Address Prsn Po Native"/></label>
            <g:textField name="addressPrsnPoNative" class="form-control" value="${emsGuardianInstance?.addressPrsnPoNative}"/>
            <g:renderErrors bean='emsGuardianInstance' field='addressPrsnPoNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'addressPrsnVill', 'has-error')}'>
            <label><g:message code="emsGuardian.addressPrsnVill.label" default="Address Prsn Vill"/></label>
            <g:textField name="addressPrsnVill" class="form-control" value="${emsGuardianInstance?.addressPrsnVill}"/>
            <g:renderErrors bean='emsGuardianInstance' field='addressPrsnVill'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'addressPrsnVillNative', 'has-error')}'>
            <label><g:message code="emsGuardian.addressPrsnVillNative.label" default="Address Prsn Vill Native"/></label>
            <g:textField name="addressPrsnVillNative" class="form-control" value="${emsGuardianInstance?.addressPrsnVillNative}"/>
            <g:renderErrors bean='emsGuardianInstance' field='addressPrsnVillNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'fatherName', 'has-error')}'>
            <label><g:message code="emsGuardian.fatherName.label" default="Father Name"/></label>
            <g:textField name="fatherName" class="form-control" value="${emsGuardianInstance?.fatherName}"/>
            <g:renderErrors bean='emsGuardianInstance' field='fatherName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'fatherNameNative', 'has-error')}'>
            <label><g:message code="emsGuardian.fatherNameNative.label" default="Father Name Native"/></label>
            <g:textField name="fatherNameNative" class="form-control" value="${emsGuardianInstance?.fatherNameNative}"/>
            <g:renderErrors bean='emsGuardianInstance' field='fatherNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'firstName', 'has-error')}'>
            <label><g:message code="emsGuardian.firstName.label" default="First Name"/></label>
            <g:textField name="firstName" class="form-control" value="${emsGuardianInstance?.firstName}"/>
            <g:renderErrors bean='emsGuardianInstance' field='firstName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'firstNameNative', 'has-error')}'>
            <label><g:message code="emsGuardian.firstNameNative.label" default="First Name Native"/></label>
            <g:textField name="firstNameNative" class="form-control" value="${emsGuardianInstance?.firstNameNative}"/>
            <g:renderErrors bean='emsGuardianInstance' field='firstNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'fullNameNative', 'has-error')}'>
            <label><g:message code="emsGuardian.fullNameNative.label" default="Full Name Native"/></label>
            <g:textField name="fullNameNative" class="form-control" value="${emsGuardianInstance?.fullNameNative}"/>
            <g:renderErrors bean='emsGuardianInstance' field='fullNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'imagePath', 'has-error')}'>
            <label><g:message code="emsGuardian.imagePath.label" default="Image Path"/></label>
            <g:textField name="imagePath" class="form-control" value="${emsGuardianInstance?.imagePath}"/>
            <g:renderErrors bean='emsGuardianInstance' field='imagePath'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'lastName', 'has-error')}'>
            <label><g:message code="emsGuardian.lastName.label" default="Last Name"/></label>
            <g:textField name="lastName" class="form-control" value="${emsGuardianInstance?.lastName}"/>
            <g:renderErrors bean='emsGuardianInstance' field='lastName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'lastNameNative', 'has-error')}'>
            <label><g:message code="emsGuardian.lastNameNative.label" default="Last Name Native"/></label>
            <g:textField name="lastNameNative" class="form-control" value="${emsGuardianInstance?.lastNameNative}"/>
            <g:renderErrors bean='emsGuardianInstance' field='lastNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'middleName', 'has-error')}'>
            <label><g:message code="emsGuardian.middleName.label" default="Middle Name"/></label>
            <g:textField name="middleName" class="form-control" value="${emsGuardianInstance?.middleName}"/>
            <g:renderErrors bean='emsGuardianInstance' field='middleName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'middleNameNative', 'has-error')}'>
            <label><g:message code="emsGuardian.middleNameNative.label" default="Middle Name Native"/></label>
            <g:textField name="middleNameNative" class="form-control" value="${emsGuardianInstance?.middleNameNative}"/>
            <g:renderErrors bean='emsGuardianInstance' field='middleNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'motherName', 'has-error')}'>
            <label><g:message code="emsGuardian.motherName.label" default="Mother Name"/></label>
            <g:textField name="motherName" class="form-control" value="${emsGuardianInstance?.motherName}"/>
            <g:renderErrors bean='emsGuardianInstance' field='motherName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'motherNameNative', 'has-error')}'>
            <label><g:message code="emsGuardian.motherNameNative.label" default="Mother Name Native"/></label>
            <g:textField name="motherNameNative" class="form-control" value="${emsGuardianInstance?.motherNameNative}"/>
            <g:renderErrors bean='emsGuardianInstance' field='motherNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'nickName', 'has-error')}'>
            <label><g:message code="emsGuardian.nickName.label" default="Nick Name"/></label>
            <g:textField name="nickName" class="form-control" value="${emsGuardianInstance?.nickName}"/>
            <g:renderErrors bean='emsGuardianInstance' field='nickName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'nickNameNative', 'has-error')}'>
            <label><g:message code="emsGuardian.nickNameNative.label" default="Nick Name Native"/></label>
            <g:textField name="nickNameNative" class="form-control" value="${emsGuardianInstance?.nickNameNative}"/>
            <g:renderErrors bean='emsGuardianInstance' field='nickNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'comEducationLevel', 'has-error')}'>
            <label><g:message code="emsGuardian.comEducationLevel.label" default="Com Education Level"/></label>
            <g:select name="comEducationLevel" class="form-control" from="${org.reflection.ems.ComEducationLevel?.values()}" keys="${org.reflection.ems.ComEducationLevel.values()*.name()}" value="${emsGuardianInstance?.comEducationLevel?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsGuardianInstance' field='comEducationLevel'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'childOneGender', 'has-error')}'>
            <label><g:message code="emsGuardian.childOneGender.label" default="Child One Gender"/></label>
            <g:select name="childOneGender" class="form-control" from="${org.reflection.com.ComGender?.values()}" keys="${org.reflection.com.ComGender.values()*.name()}" value="${emsGuardianInstance?.childOneGender?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsGuardianInstance' field='childOneGender'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'childThreeGender', 'has-error')}'>
            <label><g:message code="emsGuardian.childThreeGender.label" default="Child Three Gender"/></label>
            <g:select name="childThreeGender" class="form-control" from="${org.reflection.com.ComGender?.values()}" keys="${org.reflection.com.ComGender.values()*.name()}" value="${emsGuardianInstance?.childThreeGender?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsGuardianInstance' field='childThreeGender'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'childTwoGender', 'has-error')}'>
            <label><g:message code="emsGuardian.childTwoGender.label" default="Child Two Gender"/></label>
            <g:select name="childTwoGender" class="form-control" from="${org.reflection.com.ComGender?.values()}" keys="${org.reflection.com.ComGender.values()*.name()}" value="${emsGuardianInstance?.childTwoGender?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsGuardianInstance' field='childTwoGender'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'comProfession', 'has-error')}'>
            <label><g:message code="emsGuardian.comProfession.label" default="Com Profession"/></label>
            <g:select name="comProfession" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${emsGuardianInstance?.comProfession?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsGuardianInstance' field='comProfession'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'comProfessionSpouse', 'has-error')}'>
            <label><g:message code="emsGuardian.comProfessionSpouse.label" default="Com Profession Spouse"/></label>
            <g:select name="comProfessionSpouse" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${emsGuardianInstance?.comProfessionSpouse?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsGuardianInstance' field='comProfessionSpouse'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'childOneName', 'has-error')}'>
            <label><g:message code="emsGuardian.childOneName.label" default="Child One Name"/></label>
            <g:textField name="childOneName" class="form-control" value="${emsGuardianInstance?.childOneName}"/>
            <g:renderErrors bean='emsGuardianInstance' field='childOneName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'childThreeName', 'has-error')}'>
            <label><g:message code="emsGuardian.childThreeName.label" default="Child Three Name"/></label>
            <g:textField name="childThreeName" class="form-control" value="${emsGuardianInstance?.childThreeName}"/>
            <g:renderErrors bean='emsGuardianInstance' field='childThreeName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'childTwoName', 'has-error')}'>
            <label><g:message code="emsGuardian.childTwoName.label" default="Child Two Name"/></label>
            <g:textField name="childTwoName" class="form-control" value="${emsGuardianInstance?.childTwoName}"/>
            <g:renderErrors bean='emsGuardianInstance' field='childTwoName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'nid', 'has-error')}'>
            <label><g:message code="emsGuardian.nid.label" default="Nid"/></label>
            <g:textField name="nid" class="form-control" value="${emsGuardianInstance?.nid}"/>
            <g:renderErrors bean='emsGuardianInstance' field='nid'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'spouseName', 'has-error')}'>
            <label><g:message code="emsGuardian.spouseName.label" default="Spouse Name"/></label>
            <g:textField name="spouseName" class="form-control" value="${emsGuardianInstance?.spouseName}"/>
            <g:renderErrors bean='emsGuardianInstance' field='spouseName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'spouseNameBng', 'has-error')}'>
            <label><g:message code="emsGuardian.spouseNameBng.label" default="Spouse Name Bng"/></label>
            <g:textField name="spouseNameBng" class="form-control" value="${emsGuardianInstance?.spouseNameBng}"/>
            <g:renderErrors bean='emsGuardianInstance' field='spouseNameBng'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'tinNumber', 'has-error')}'>
            <label><g:message code="emsGuardian.tinNumber.label" default="Tin Number"/></label>
            <g:textField name="tinNumber" class="form-control" value="${emsGuardianInstance?.tinNumber}"/>
            <g:renderErrors bean='emsGuardianInstance' field='tinNumber'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'voterIdentityNumber', 'has-error')}'>
            <label><g:message code="emsGuardian.voterIdentityNumber.label" default="Voter Identity Number"/></label>
            <g:textField name="voterIdentityNumber" class="form-control" value="${emsGuardianInstance?.voterIdentityNumber}"/>
            <g:renderErrors bean='emsGuardianInstance' field='voterIdentityNumber'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'noOfChildren', 'has-error')}'>
            <label><g:message code="emsGuardian.noOfChildren.label" default="No Of Children"/></label>
            <g:field type="number" name="noOfChildren" class="form-control" value="${emsGuardianInstance?.noOfChildren}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsGuardianInstance' field='noOfChildren'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'childOneDob', 'has-error')}'>
            <label><g:message code="emsGuardian.childOneDob.label" default="Child One Dob"/></label>
            <g:textField name="childOneDob" class="form-control dtp-date" value="${emsGuardianInstance?.childOneDob?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='emsGuardianInstance' field='childOneDob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'childThreeDob', 'has-error')}'>
            <label><g:message code="emsGuardian.childThreeDob.label" default="Child Three Dob"/></label>
            <g:textField name="childThreeDob" class="form-control dtp-date" value="${emsGuardianInstance?.childThreeDob?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='emsGuardianInstance' field='childThreeDob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'childTwoDob', 'has-error')}'>
            <label><g:message code="emsGuardian.childTwoDob.label" default="Child Two Dob"/></label>
            <g:textField name="childTwoDob" class="form-control dtp-date" value="${emsGuardianInstance?.childTwoDob?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='emsGuardianInstance' field='childTwoDob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'isFreedomFighter', 'has-error')}'>
            <label><g:message code="emsGuardian.isFreedomFighter.label" default="Is Freedom Fighter"/></label>
            <g:checkBox class="cb" name="isFreedomFighter"  value="${emsGuardianInstance?.isFreedomFighter}" />
            <g:renderErrors bean='emsGuardianInstance' field='isFreedomFighter'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'isEmailNotification', 'has-error')}'>
            <label><g:message code="emsGuardian.isEmailNotification.label" default="Is Email Notification"/></label>
            <g:checkBox class="cb" name="isEmailNotification"  value="${emsGuardianInstance?.isEmailNotification}" />
            <g:renderErrors bean='emsGuardianInstance' field='isEmailNotification'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsGuardianInstance, field: 'isMobileNotification', 'has-error')}'>
            <label><g:message code="emsGuardian.isMobileNotification.label" default="Is Mobile Notification"/></label>
            <g:checkBox class="cb" name="isMobileNotification"  value="${emsGuardianInstance?.isMobileNotification}" />
            <g:renderErrors bean='emsGuardianInstance' field='isMobileNotification'/>
        </div>
    </div>

</fieldset>
