<%@ page import="org.reflection.com.ComPersonAdult" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'comGender', 'has-error')} required'>
            <label class='required'><g:message code="comPersonAdult.comGender.label" default="Com Gender"/></label>
            <g:select name="comGender" class="form-control" from="${org.reflection.com.ComGender?.values()}" keys="${org.reflection.com.ComGender.values()*.name()}" value="${comPersonAdultInstance?.comGender?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='comPersonAdultInstance' field='comGender'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'comReligion', 'has-error')} required'>
            <label class='required'><g:message code="comPersonAdult.comReligion.label" default="Com Religion"/></label>
            <g:select name="comReligion" class="form-control" from="${org.reflection.com.ComReligion?.values()}" keys="${org.reflection.com.ComReligion.values()*.name()}" value="${comPersonAdultInstance?.comReligion?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='comPersonAdultInstance' field='comReligion'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'comTitle', 'has-error')} required'>
            <label class='required'><g:message code="comPersonAdult.comTitle.label" default="Com Title"/></label>
            <g:select name="comTitle" class="form-control" from="${org.reflection.com.ComTitle?.values()}" keys="${org.reflection.com.ComTitle.values()*.name()}" value="${comPersonAdultInstance?.comTitle?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='comPersonAdultInstance' field='comTitle'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'dob', 'has-error')} required'>
            <label class='required'><g:message code="comPersonAdult.dob.label" default="Dob"/></label>
            <g:textField name="dob" class="form-control dtp-date" value="${comPersonAdultInstance?.dob?.format(grailsApplication.config.format.dtp.date)}" precision="day" required="required"/>
            <g:renderErrors bean='comPersonAdultInstance' field='dob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'fullName', 'has-error')} required'>
            <label class='required'><g:message code="comPersonAdult.fullName.label" default="Full Name"/></label>
            <g:textField name="fullName" class="form-control" value="${comPersonAdultInstance?.fullName}" required="required"/>
            <g:renderErrors bean='comPersonAdultInstance' field='fullName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'comBloodGroup', 'has-error')}'>
            <label><g:message code="comPersonAdult.comBloodGroup.label" default="Com Blood Group"/></label>
            <g:select name="comBloodGroup" class="form-control" from="${org.reflection.com.ComBloodGroup?.values()}" keys="${org.reflection.com.ComBloodGroup.values()*.name()}" value="${comPersonAdultInstance?.comBloodGroup?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='comPersonAdultInstance' field='comBloodGroup'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'comLocationPermanent', 'has-error')}'>
            <label><g:message code="comPersonAdult.comLocationPermanent.label" default="Com Location Permanent"/></label>
            <g:select name="comLocationPermanent" class="form-control many-to-one" from="${org.reflection.com.ComLocation.list()}" value="${comPersonAdultInstance?.comLocationPermanent?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='comPersonAdultInstance' field='comLocationPermanent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'comLocationPresent', 'has-error')}'>
            <label><g:message code="comPersonAdult.comLocationPresent.label" default="Com Location Present"/></label>
            <g:select name="comLocationPresent" class="form-control many-to-one" from="${org.reflection.com.ComLocation.list()}" value="${comPersonAdultInstance?.comLocationPresent?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='comPersonAdultInstance' field='comLocationPresent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'comProfessionFather', 'has-error')}'>
            <label><g:message code="comPersonAdult.comProfessionFather.label" default="Com Profession Father"/></label>
            <g:select name="comProfessionFather" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${comPersonAdultInstance?.comProfessionFather?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='comPersonAdultInstance' field='comProfessionFather'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'comProfessionMother', 'has-error')}'>
            <label><g:message code="comPersonAdult.comProfessionMother.label" default="Com Profession Mother"/></label>
            <g:select name="comProfessionMother" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${comPersonAdultInstance?.comProfessionMother?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='comPersonAdultInstance' field='comProfessionMother'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'birthRegNo', 'has-error')}'>
            <label><g:message code="comPersonAdult.birthRegNo.label" default="Birth Reg No"/></label>
            <g:textField name="birthRegNo" class="form-control" value="${comPersonAdultInstance?.birthRegNo}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='birthRegNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'email', 'has-error')}'>
            <label><g:message code="comPersonAdult.email.label" default="Email"/></label>
            <g:textField name="email" class="form-control" value="${comPersonAdultInstance?.email}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='email'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'mobile', 'has-error')}'>
            <label><g:message code="comPersonAdult.mobile.label" default="Mobile"/></label>
            <g:textField name="mobile" class="form-control" value="${comPersonAdultInstance?.mobile}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='mobile'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'addressPrmnHn', 'has-error')}'>
            <label><g:message code="comPersonAdult.addressPrmnHn.label" default="Address Prmn Hn"/></label>
            <g:textField name="addressPrmnHn" class="form-control" value="${comPersonAdultInstance?.addressPrmnHn}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='addressPrmnHn'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'addressPrmnHnNative', 'has-error')}'>
            <label><g:message code="comPersonAdult.addressPrmnHnNative.label" default="Address Prmn Hn Native"/></label>
            <g:textField name="addressPrmnHnNative" class="form-control" value="${comPersonAdultInstance?.addressPrmnHnNative}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='addressPrmnHnNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'addressPrmnPo', 'has-error')}'>
            <label><g:message code="comPersonAdult.addressPrmnPo.label" default="Address Prmn Po"/></label>
            <g:textField name="addressPrmnPo" class="form-control" value="${comPersonAdultInstance?.addressPrmnPo}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='addressPrmnPo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'addressPrmnPoNative', 'has-error')}'>
            <label><g:message code="comPersonAdult.addressPrmnPoNative.label" default="Address Prmn Po Native"/></label>
            <g:textField name="addressPrmnPoNative" class="form-control" value="${comPersonAdultInstance?.addressPrmnPoNative}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='addressPrmnPoNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'addressPrmnVill', 'has-error')}'>
            <label><g:message code="comPersonAdult.addressPrmnVill.label" default="Address Prmn Vill"/></label>
            <g:textField name="addressPrmnVill" class="form-control" value="${comPersonAdultInstance?.addressPrmnVill}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='addressPrmnVill'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'addressPrmnVillNative', 'has-error')}'>
            <label><g:message code="comPersonAdult.addressPrmnVillNative.label" default="Address Prmn Vill Native"/></label>
            <g:textField name="addressPrmnVillNative" class="form-control" value="${comPersonAdultInstance?.addressPrmnVillNative}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='addressPrmnVillNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'addressPrsnHn', 'has-error')}'>
            <label><g:message code="comPersonAdult.addressPrsnHn.label" default="Address Prsn Hn"/></label>
            <g:textField name="addressPrsnHn" class="form-control" value="${comPersonAdultInstance?.addressPrsnHn}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='addressPrsnHn'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'addressPrsnHnNative', 'has-error')}'>
            <label><g:message code="comPersonAdult.addressPrsnHnNative.label" default="Address Prsn Hn Native"/></label>
            <g:textField name="addressPrsnHnNative" class="form-control" value="${comPersonAdultInstance?.addressPrsnHnNative}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='addressPrsnHnNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'addressPrsnPo', 'has-error')}'>
            <label><g:message code="comPersonAdult.addressPrsnPo.label" default="Address Prsn Po"/></label>
            <g:textField name="addressPrsnPo" class="form-control" value="${comPersonAdultInstance?.addressPrsnPo}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='addressPrsnPo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'addressPrsnPoNative', 'has-error')}'>
            <label><g:message code="comPersonAdult.addressPrsnPoNative.label" default="Address Prsn Po Native"/></label>
            <g:textField name="addressPrsnPoNative" class="form-control" value="${comPersonAdultInstance?.addressPrsnPoNative}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='addressPrsnPoNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'addressPrsnVill', 'has-error')}'>
            <label><g:message code="comPersonAdult.addressPrsnVill.label" default="Address Prsn Vill"/></label>
            <g:textField name="addressPrsnVill" class="form-control" value="${comPersonAdultInstance?.addressPrsnVill}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='addressPrsnVill'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'addressPrsnVillNative', 'has-error')}'>
            <label><g:message code="comPersonAdult.addressPrsnVillNative.label" default="Address Prsn Vill Native"/></label>
            <g:textField name="addressPrsnVillNative" class="form-control" value="${comPersonAdultInstance?.addressPrsnVillNative}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='addressPrsnVillNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'fatherName', 'has-error')}'>
            <label><g:message code="comPersonAdult.fatherName.label" default="Father Name"/></label>
            <g:textField name="fatherName" class="form-control" value="${comPersonAdultInstance?.fatherName}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='fatherName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'fatherNameNative', 'has-error')}'>
            <label><g:message code="comPersonAdult.fatherNameNative.label" default="Father Name Native"/></label>
            <g:textField name="fatherNameNative" class="form-control" value="${comPersonAdultInstance?.fatherNameNative}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='fatherNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'firstName', 'has-error')}'>
            <label><g:message code="comPersonAdult.firstName.label" default="First Name"/></label>
            <g:textField name="firstName" class="form-control" value="${comPersonAdultInstance?.firstName}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='firstName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'firstNameNative', 'has-error')}'>
            <label><g:message code="comPersonAdult.firstNameNative.label" default="First Name Native"/></label>
            <g:textField name="firstNameNative" class="form-control" value="${comPersonAdultInstance?.firstNameNative}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='firstNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'fullNameNative', 'has-error')}'>
            <label><g:message code="comPersonAdult.fullNameNative.label" default="Full Name Native"/></label>
            <g:textField name="fullNameNative" class="form-control" value="${comPersonAdultInstance?.fullNameNative}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='fullNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'imagePath', 'has-error')}'>
            <label><g:message code="comPersonAdult.imagePath.label" default="Image Path"/></label>
            <g:textField name="imagePath" class="form-control" value="${comPersonAdultInstance?.imagePath}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='imagePath'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'lastName', 'has-error')}'>
            <label><g:message code="comPersonAdult.lastName.label" default="Last Name"/></label>
            <g:textField name="lastName" class="form-control" value="${comPersonAdultInstance?.lastName}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='lastName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'lastNameNative', 'has-error')}'>
            <label><g:message code="comPersonAdult.lastNameNative.label" default="Last Name Native"/></label>
            <g:textField name="lastNameNative" class="form-control" value="${comPersonAdultInstance?.lastNameNative}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='lastNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'middleName', 'has-error')}'>
            <label><g:message code="comPersonAdult.middleName.label" default="Middle Name"/></label>
            <g:textField name="middleName" class="form-control" value="${comPersonAdultInstance?.middleName}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='middleName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'middleNameNative', 'has-error')}'>
            <label><g:message code="comPersonAdult.middleNameNative.label" default="Middle Name Native"/></label>
            <g:textField name="middleNameNative" class="form-control" value="${comPersonAdultInstance?.middleNameNative}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='middleNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'motherName', 'has-error')}'>
            <label><g:message code="comPersonAdult.motherName.label" default="Mother Name"/></label>
            <g:textField name="motherName" class="form-control" value="${comPersonAdultInstance?.motherName}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='motherName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'motherNameNative', 'has-error')}'>
            <label><g:message code="comPersonAdult.motherNameNative.label" default="Mother Name Native"/></label>
            <g:textField name="motherNameNative" class="form-control" value="${comPersonAdultInstance?.motherNameNative}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='motherNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'nickName', 'has-error')}'>
            <label><g:message code="comPersonAdult.nickName.label" default="Nick Name"/></label>
            <g:textField name="nickName" class="form-control" value="${comPersonAdultInstance?.nickName}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='nickName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'nickNameNative', 'has-error')}'>
            <label><g:message code="comPersonAdult.nickNameNative.label" default="Nick Name Native"/></label>
            <g:textField name="nickNameNative" class="form-control" value="${comPersonAdultInstance?.nickNameNative}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='nickNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'comEducationLevel', 'has-error')}'>
            <label><g:message code="comPersonAdult.comEducationLevel.label" default="Com Education Level"/></label>
            <g:select name="comEducationLevel" class="form-control" from="${org.reflection.ems.ComEducationLevel?.values()}" keys="${org.reflection.ems.ComEducationLevel.values()*.name()}" value="${comPersonAdultInstance?.comEducationLevel?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='comPersonAdultInstance' field='comEducationLevel'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'childOneGender', 'has-error')}'>
            <label><g:message code="comPersonAdult.childOneGender.label" default="Child One Gender"/></label>
            <g:select name="childOneGender" class="form-control" from="${org.reflection.com.ComGender?.values()}" keys="${org.reflection.com.ComGender.values()*.name()}" value="${comPersonAdultInstance?.childOneGender?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='comPersonAdultInstance' field='childOneGender'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'childThreeGender', 'has-error')}'>
            <label><g:message code="comPersonAdult.childThreeGender.label" default="Child Three Gender"/></label>
            <g:select name="childThreeGender" class="form-control" from="${org.reflection.com.ComGender?.values()}" keys="${org.reflection.com.ComGender.values()*.name()}" value="${comPersonAdultInstance?.childThreeGender?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='comPersonAdultInstance' field='childThreeGender'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'childTwoGender', 'has-error')}'>
            <label><g:message code="comPersonAdult.childTwoGender.label" default="Child Two Gender"/></label>
            <g:select name="childTwoGender" class="form-control" from="${org.reflection.com.ComGender?.values()}" keys="${org.reflection.com.ComGender.values()*.name()}" value="${comPersonAdultInstance?.childTwoGender?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='comPersonAdultInstance' field='childTwoGender'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'comProfession', 'has-error')}'>
            <label><g:message code="comPersonAdult.comProfession.label" default="Com Profession"/></label>
            <g:select name="comProfession" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${comPersonAdultInstance?.comProfession?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='comPersonAdultInstance' field='comProfession'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'comProfessionSpouse', 'has-error')}'>
            <label><g:message code="comPersonAdult.comProfessionSpouse.label" default="Com Profession Spouse"/></label>
            <g:select name="comProfessionSpouse" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${comPersonAdultInstance?.comProfessionSpouse?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='comPersonAdultInstance' field='comProfessionSpouse'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'childOneName', 'has-error')}'>
            <label><g:message code="comPersonAdult.childOneName.label" default="Child One Name"/></label>
            <g:textField name="childOneName" class="form-control" value="${comPersonAdultInstance?.childOneName}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='childOneName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'childThreeName', 'has-error')}'>
            <label><g:message code="comPersonAdult.childThreeName.label" default="Child Three Name"/></label>
            <g:textField name="childThreeName" class="form-control" value="${comPersonAdultInstance?.childThreeName}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='childThreeName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'childTwoName', 'has-error')}'>
            <label><g:message code="comPersonAdult.childTwoName.label" default="Child Two Name"/></label>
            <g:textField name="childTwoName" class="form-control" value="${comPersonAdultInstance?.childTwoName}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='childTwoName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'nid', 'has-error')}'>
            <label><g:message code="comPersonAdult.nid.label" default="Nid"/></label>
            <g:textField name="nid" class="form-control" value="${comPersonAdultInstance?.nid}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='nid'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'spouseName', 'has-error')}'>
            <label><g:message code="comPersonAdult.spouseName.label" default="Spouse Name"/></label>
            <g:textField name="spouseName" class="form-control" value="${comPersonAdultInstance?.spouseName}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='spouseName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'spouseNameBng', 'has-error')}'>
            <label><g:message code="comPersonAdult.spouseNameBng.label" default="Spouse Name Bng"/></label>
            <g:textField name="spouseNameBng" class="form-control" value="${comPersonAdultInstance?.spouseNameBng}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='spouseNameBng'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'tinNumber', 'has-error')}'>
            <label><g:message code="comPersonAdult.tinNumber.label" default="Tin Number"/></label>
            <g:textField name="tinNumber" class="form-control" value="${comPersonAdultInstance?.tinNumber}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='tinNumber'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'voterIdentityNumber', 'has-error')}'>
            <label><g:message code="comPersonAdult.voterIdentityNumber.label" default="Voter Identity Number"/></label>
            <g:textField name="voterIdentityNumber" class="form-control" value="${comPersonAdultInstance?.voterIdentityNumber}"/>
            <g:renderErrors bean='comPersonAdultInstance' field='voterIdentityNumber'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'noOfChildren', 'has-error')}'>
            <label><g:message code="comPersonAdult.noOfChildren.label" default="No Of Children"/></label>
            <g:field type="number" name="noOfChildren" class="form-control" value="${comPersonAdultInstance?.noOfChildren}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comPersonAdultInstance' field='noOfChildren'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'childOneDob', 'has-error')}'>
            <label><g:message code="comPersonAdult.childOneDob.label" default="Child One Dob"/></label>
            <g:textField name="childOneDob" class="form-control dtp-date" value="${comPersonAdultInstance?.childOneDob?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comPersonAdultInstance' field='childOneDob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'childThreeDob', 'has-error')}'>
            <label><g:message code="comPersonAdult.childThreeDob.label" default="Child Three Dob"/></label>
            <g:textField name="childThreeDob" class="form-control dtp-date" value="${comPersonAdultInstance?.childThreeDob?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comPersonAdultInstance' field='childThreeDob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'childTwoDob', 'has-error')}'>
            <label><g:message code="comPersonAdult.childTwoDob.label" default="Child Two Dob"/></label>
            <g:textField name="childTwoDob" class="form-control dtp-date" value="${comPersonAdultInstance?.childTwoDob?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comPersonAdultInstance' field='childTwoDob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comPersonAdultInstance, field: 'isFreedomFighter', 'has-error')}'>
            <label><g:message code="comPersonAdult.isFreedomFighter.label" default="Is Freedom Fighter"/></label>
            <g:checkBox class="cb" name="isFreedomFighter"  value="${comPersonAdultInstance?.isFreedomFighter}" />
            <g:renderErrors bean='comPersonAdultInstance' field='isFreedomFighter'/>
        </div>
    </div>

</fieldset>
