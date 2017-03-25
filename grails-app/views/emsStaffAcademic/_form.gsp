<%@ page import="org.reflection.ems.EmsStaffAcademic" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'comGender', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademic.comGender.label" default="Com Gender"/></label>
            <g:select name="comGender" class="form-control" from="${org.reflection.com.ComGender?.values()}" keys="${org.reflection.com.ComGender.values()*.name()}" value="${emsStaffAcademicInstance?.comGender?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='comGender'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'comReligion', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademic.comReligion.label" default="Com Religion"/></label>
            <g:select name="comReligion" class="form-control" from="${org.reflection.com.ComReligion?.values()}" keys="${org.reflection.com.ComReligion.values()*.name()}" value="${emsStaffAcademicInstance?.comReligion?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='comReligion'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'comTitle', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademic.comTitle.label" default="Com Title"/></label>
            <g:select name="comTitle" class="form-control" from="${org.reflection.com.ComTitle?.values()}" keys="${org.reflection.com.ComTitle.values()*.name()}" value="${emsStaffAcademicInstance?.comTitle?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='comTitle'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'dob', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademic.dob.label" default="Dob"/></label>
            <g:textField name="dob" class="form-control dtp-date" value="${emsStaffAcademicInstance?.dob?.format(grailsApplication.config.format.dtp.date)}" precision="day" required="required"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='dob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'fullName', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademic.fullName.label" default="Full Name"/></label>
            <g:textField name="fullName" class="form-control" value="${emsStaffAcademicInstance?.fullName}" required="required"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='fullName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'comBloodGroup', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.comBloodGroup.label" default="Com Blood Group"/></label>
            <g:select name="comBloodGroup" class="form-control" from="${org.reflection.com.ComBloodGroup?.values()}" keys="${org.reflection.com.ComBloodGroup.values()*.name()}" value="${emsStaffAcademicInstance?.comBloodGroup?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='comBloodGroup'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'comLocationPermanent', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.comLocationPermanent.label" default="Com Location Permanent"/></label>
            <g:select name="comLocationPermanent" class="form-control many-to-one" from="${org.reflection.com.ComLocation.list()}" value="${emsStaffAcademicInstance?.comLocationPermanent?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='comLocationPermanent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'comLocationPresent', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.comLocationPresent.label" default="Com Location Present"/></label>
            <g:select name="comLocationPresent" class="form-control many-to-one" from="${org.reflection.com.ComLocation.list()}" value="${emsStaffAcademicInstance?.comLocationPresent?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='comLocationPresent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'comProfessionFather', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.comProfessionFather.label" default="Com Profession Father"/></label>
            <g:select name="comProfessionFather" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${emsStaffAcademicInstance?.comProfessionFather?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='comProfessionFather'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'comProfessionMother', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.comProfessionMother.label" default="Com Profession Mother"/></label>
            <g:select name="comProfessionMother" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${emsStaffAcademicInstance?.comProfessionMother?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='comProfessionMother'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'birthRegNo', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.birthRegNo.label" default="Birth Reg No"/></label>
            <g:textField name="birthRegNo" class="form-control" value="${emsStaffAcademicInstance?.birthRegNo}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='birthRegNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'email', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.email.label" default="Email"/></label>
            <g:textField name="email" class="form-control" value="${emsStaffAcademicInstance?.email}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='email'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'mobile', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.mobile.label" default="Mobile"/></label>
            <g:textField name="mobile" class="form-control" value="${emsStaffAcademicInstance?.mobile}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='mobile'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'addressPrmnHn', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.addressPrmnHn.label" default="Address Prmn Hn"/></label>
            <g:textField name="addressPrmnHn" class="form-control" value="${emsStaffAcademicInstance?.addressPrmnHn}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='addressPrmnHn'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'addressPrmnHnNative', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.addressPrmnHnNative.label" default="Address Prmn Hn Native"/></label>
            <g:textField name="addressPrmnHnNative" class="form-control" value="${emsStaffAcademicInstance?.addressPrmnHnNative}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='addressPrmnHnNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'addressPrmnPo', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.addressPrmnPo.label" default="Address Prmn Po"/></label>
            <g:textField name="addressPrmnPo" class="form-control" value="${emsStaffAcademicInstance?.addressPrmnPo}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='addressPrmnPo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'addressPrmnPoNative', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.addressPrmnPoNative.label" default="Address Prmn Po Native"/></label>
            <g:textField name="addressPrmnPoNative" class="form-control" value="${emsStaffAcademicInstance?.addressPrmnPoNative}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='addressPrmnPoNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'addressPrmnVill', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.addressPrmnVill.label" default="Address Prmn Vill"/></label>
            <g:textField name="addressPrmnVill" class="form-control" value="${emsStaffAcademicInstance?.addressPrmnVill}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='addressPrmnVill'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'addressPrmnVillNative', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.addressPrmnVillNative.label" default="Address Prmn Vill Native"/></label>
            <g:textField name="addressPrmnVillNative" class="form-control" value="${emsStaffAcademicInstance?.addressPrmnVillNative}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='addressPrmnVillNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'addressPrsnHn', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.addressPrsnHn.label" default="Address Prsn Hn"/></label>
            <g:textField name="addressPrsnHn" class="form-control" value="${emsStaffAcademicInstance?.addressPrsnHn}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='addressPrsnHn'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'addressPrsnHnNative', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.addressPrsnHnNative.label" default="Address Prsn Hn Native"/></label>
            <g:textField name="addressPrsnHnNative" class="form-control" value="${emsStaffAcademicInstance?.addressPrsnHnNative}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='addressPrsnHnNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'addressPrsnPo', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.addressPrsnPo.label" default="Address Prsn Po"/></label>
            <g:textField name="addressPrsnPo" class="form-control" value="${emsStaffAcademicInstance?.addressPrsnPo}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='addressPrsnPo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'addressPrsnPoNative', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.addressPrsnPoNative.label" default="Address Prsn Po Native"/></label>
            <g:textField name="addressPrsnPoNative" class="form-control" value="${emsStaffAcademicInstance?.addressPrsnPoNative}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='addressPrsnPoNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'addressPrsnVill', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.addressPrsnVill.label" default="Address Prsn Vill"/></label>
            <g:textField name="addressPrsnVill" class="form-control" value="${emsStaffAcademicInstance?.addressPrsnVill}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='addressPrsnVill'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'addressPrsnVillNative', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.addressPrsnVillNative.label" default="Address Prsn Vill Native"/></label>
            <g:textField name="addressPrsnVillNative" class="form-control" value="${emsStaffAcademicInstance?.addressPrsnVillNative}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='addressPrsnVillNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'fatherName', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.fatherName.label" default="Father Name"/></label>
            <g:textField name="fatherName" class="form-control" value="${emsStaffAcademicInstance?.fatherName}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='fatherName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'fatherNameNative', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.fatherNameNative.label" default="Father Name Native"/></label>
            <g:textField name="fatherNameNative" class="form-control" value="${emsStaffAcademicInstance?.fatherNameNative}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='fatherNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'firstName', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.firstName.label" default="First Name"/></label>
            <g:textField name="firstName" class="form-control" value="${emsStaffAcademicInstance?.firstName}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='firstName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'firstNameNative', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.firstNameNative.label" default="First Name Native"/></label>
            <g:textField name="firstNameNative" class="form-control" value="${emsStaffAcademicInstance?.firstNameNative}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='firstNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'fullNameNative', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.fullNameNative.label" default="Full Name Native"/></label>
            <g:textField name="fullNameNative" class="form-control" value="${emsStaffAcademicInstance?.fullNameNative}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='fullNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'imagePath', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.imagePath.label" default="Image Path"/></label>
            <g:textField name="imagePath" class="form-control" value="${emsStaffAcademicInstance?.imagePath}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='imagePath'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'lastName', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.lastName.label" default="Last Name"/></label>
            <g:textField name="lastName" class="form-control" value="${emsStaffAcademicInstance?.lastName}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='lastName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'lastNameNative', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.lastNameNative.label" default="Last Name Native"/></label>
            <g:textField name="lastNameNative" class="form-control" value="${emsStaffAcademicInstance?.lastNameNative}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='lastNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'middleName', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.middleName.label" default="Middle Name"/></label>
            <g:textField name="middleName" class="form-control" value="${emsStaffAcademicInstance?.middleName}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='middleName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'middleNameNative', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.middleNameNative.label" default="Middle Name Native"/></label>
            <g:textField name="middleNameNative" class="form-control" value="${emsStaffAcademicInstance?.middleNameNative}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='middleNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'motherName', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.motherName.label" default="Mother Name"/></label>
            <g:textField name="motherName" class="form-control" value="${emsStaffAcademicInstance?.motherName}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='motherName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'motherNameNative', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.motherNameNative.label" default="Mother Name Native"/></label>
            <g:textField name="motherNameNative" class="form-control" value="${emsStaffAcademicInstance?.motherNameNative}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='motherNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'nickName', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.nickName.label" default="Nick Name"/></label>
            <g:textField name="nickName" class="form-control" value="${emsStaffAcademicInstance?.nickName}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='nickName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'nickNameNative', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.nickNameNative.label" default="Nick Name Native"/></label>
            <g:textField name="nickNameNative" class="form-control" value="${emsStaffAcademicInstance?.nickNameNative}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='nickNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'comEducationLevel', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.comEducationLevel.label" default="Com Education Level"/></label>
            <g:select name="comEducationLevel" class="form-control" from="${org.reflection.ems.ComEducationLevel?.values()}" keys="${org.reflection.ems.ComEducationLevel.values()*.name()}" value="${emsStaffAcademicInstance?.comEducationLevel?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='comEducationLevel'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'childOneGender', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.childOneGender.label" default="Child One Gender"/></label>
            <g:select name="childOneGender" class="form-control" from="${org.reflection.com.ComGender?.values()}" keys="${org.reflection.com.ComGender.values()*.name()}" value="${emsStaffAcademicInstance?.childOneGender?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='childOneGender'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'childThreeGender', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.childThreeGender.label" default="Child Three Gender"/></label>
            <g:select name="childThreeGender" class="form-control" from="${org.reflection.com.ComGender?.values()}" keys="${org.reflection.com.ComGender.values()*.name()}" value="${emsStaffAcademicInstance?.childThreeGender?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='childThreeGender'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'childTwoGender', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.childTwoGender.label" default="Child Two Gender"/></label>
            <g:select name="childTwoGender" class="form-control" from="${org.reflection.com.ComGender?.values()}" keys="${org.reflection.com.ComGender.values()*.name()}" value="${emsStaffAcademicInstance?.childTwoGender?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='childTwoGender'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'comProfession', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.comProfession.label" default="Com Profession"/></label>
            <g:select name="comProfession" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${emsStaffAcademicInstance?.comProfession?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='comProfession'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'comProfessionSpouse', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.comProfessionSpouse.label" default="Com Profession Spouse"/></label>
            <g:select name="comProfessionSpouse" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${emsStaffAcademicInstance?.comProfessionSpouse?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='comProfessionSpouse'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'childOneName', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.childOneName.label" default="Child One Name"/></label>
            <g:textField name="childOneName" class="form-control" value="${emsStaffAcademicInstance?.childOneName}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='childOneName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'childThreeName', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.childThreeName.label" default="Child Three Name"/></label>
            <g:textField name="childThreeName" class="form-control" value="${emsStaffAcademicInstance?.childThreeName}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='childThreeName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'childTwoName', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.childTwoName.label" default="Child Two Name"/></label>
            <g:textField name="childTwoName" class="form-control" value="${emsStaffAcademicInstance?.childTwoName}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='childTwoName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'nid', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.nid.label" default="Nid"/></label>
            <g:textField name="nid" class="form-control" value="${emsStaffAcademicInstance?.nid}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='nid'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'spouseName', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.spouseName.label" default="Spouse Name"/></label>
            <g:textField name="spouseName" class="form-control" value="${emsStaffAcademicInstance?.spouseName}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='spouseName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'spouseNameBng', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.spouseNameBng.label" default="Spouse Name Bng"/></label>
            <g:textField name="spouseNameBng" class="form-control" value="${emsStaffAcademicInstance?.spouseNameBng}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='spouseNameBng'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'tinNumber', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.tinNumber.label" default="Tin Number"/></label>
            <g:textField name="tinNumber" class="form-control" value="${emsStaffAcademicInstance?.tinNumber}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='tinNumber'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'voterIdentityNumber', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.voterIdentityNumber.label" default="Voter Identity Number"/></label>
            <g:textField name="voterIdentityNumber" class="form-control" value="${emsStaffAcademicInstance?.voterIdentityNumber}"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='voterIdentityNumber'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'noOfChildren', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.noOfChildren.label" default="No Of Children"/></label>
            <g:field type="number" name="noOfChildren" class="form-control" value="${emsStaffAcademicInstance?.noOfChildren}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='noOfChildren'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'childOneDob', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.childOneDob.label" default="Child One Dob"/></label>
            <g:textField name="childOneDob" class="form-control dtp-date" value="${emsStaffAcademicInstance?.childOneDob?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='childOneDob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'childThreeDob', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.childThreeDob.label" default="Child Three Dob"/></label>
            <g:textField name="childThreeDob" class="form-control dtp-date" value="${emsStaffAcademicInstance?.childThreeDob?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='childThreeDob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'childTwoDob', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.childTwoDob.label" default="Child Two Dob"/></label>
            <g:textField name="childTwoDob" class="form-control dtp-date" value="${emsStaffAcademicInstance?.childTwoDob?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='childTwoDob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'isFreedomFighter', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.isFreedomFighter.label" default="Is Freedom Fighter"/></label>
            <g:checkBox class="cb" name="isFreedomFighter"  value="${emsStaffAcademicInstance?.isFreedomFighter}" />
            <g:renderErrors bean='emsStaffAcademicInstance' field='isFreedomFighter'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'staffGroup', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademic.staffGroup.label" default="Staff Group"/></label>
            <g:select name="staffGroup" class="form-control" from="${org.reflection.ems.EmsStaffGroup?.values()}" keys="${org.reflection.ems.EmsStaffGroup.values()*.name()}" value="${emsStaffAcademicInstance?.staffGroup?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='staffGroup'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'code', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademic.code.label" default="Code"/></label>
            <g:textField name="code" class="form-control" value="${emsStaffAcademicInstance?.code}" required="required"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='code'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'joiningDate', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademic.joiningDate.label" default="Joining Date"/></label>
            <g:textField name="joiningDate" class="form-control dtp-date" value="${emsStaffAcademicInstance?.joiningDate?.format(grailsApplication.config.format.dtp.date)}" precision="day" required="required"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='joiningDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'salaryBasic', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.salaryBasic.label" default="Salary Basic"/></label>
            <g:field type="number" name="salaryBasic" class="form-control" value="${fieldValue(bean: emsStaffAcademicInstance, field: 'salaryBasic')}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='salaryBasic'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'salaryGross', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.salaryGross.label" default="Salary Gross"/></label>
            <g:field type="number" name="salaryGross" class="form-control" value="${fieldValue(bean: emsStaffAcademicInstance, field: 'salaryGross')}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='salaryGross'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicInstance, field: 'hrStaffAdditionalInfo', 'has-error')}'>
            <label><g:message code="emsStaffAcademic.hrStaffAdditionalInfo.label" default="Hr Staff Additional Info"/></label>
            <g:select name="hrStaffAdditionalInfo" class="form-control many-to-one" from="${org.reflection.hr.HrStaffAdditionalInfo.list()}" value="${emsStaffAcademicInstance?.hrStaffAdditionalInfo?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStaffAcademicInstance' field='hrStaffAdditionalInfo'/>
        </div>
    </div>

</fieldset>
