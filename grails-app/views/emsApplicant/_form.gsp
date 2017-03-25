<%@ page import="org.reflection.ems.EmsApplicant" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'comGender', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicant.comGender.label" default="Com Gender"/></label>
            <g:select name="comGender" class="form-control" from="${org.reflection.com.ComGender?.values()}" keys="${org.reflection.com.ComGender.values()*.name()}" value="${emsApplicantInstance?.comGender?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsApplicantInstance' field='comGender'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'comReligion', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicant.comReligion.label" default="Com Religion"/></label>
            <g:select name="comReligion" class="form-control" from="${org.reflection.com.ComReligion?.values()}" keys="${org.reflection.com.ComReligion.values()*.name()}" value="${emsApplicantInstance?.comReligion?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsApplicantInstance' field='comReligion'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'comTitle', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicant.comTitle.label" default="Com Title"/></label>
            <g:select name="comTitle" class="form-control" from="${org.reflection.com.ComTitle?.values()}" keys="${org.reflection.com.ComTitle.values()*.name()}" value="${emsApplicantInstance?.comTitle?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsApplicantInstance' field='comTitle'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'dob', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicant.dob.label" default="Dob"/></label>
            <g:textField name="dob" class="form-control dtp-date" value="${emsApplicantInstance?.dob?.format(grailsApplication.config.format.dtp.date)}" precision="day" required="required"/>
            <g:renderErrors bean='emsApplicantInstance' field='dob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'fullName', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicant.fullName.label" default="Full Name"/></label>
            <g:textField name="fullName" class="form-control" value="${emsApplicantInstance?.fullName}" required="required"/>
            <g:renderErrors bean='emsApplicantInstance' field='fullName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'comBloodGroup', 'has-error')}'>
            <label><g:message code="emsApplicant.comBloodGroup.label" default="Com Blood Group"/></label>
            <g:select name="comBloodGroup" class="form-control" from="${bloodGroupList}" keys="${org.reflection.com.ComBloodGroup.values()*.name()}" value="${emsApplicantInstance?.comBloodGroup?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsApplicantInstance' field='comBloodGroup'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'comLocationPermanent', 'has-error')}'>
            <label><g:message code="emsApplicant.comLocationPermanent.label" default="Com Location Permanent"/></label>
            <g:select name="comLocationPermanent" class="form-control many-to-one" from="${org.reflection.com.ComLocation.list()}" value="${emsApplicantInstance?.comLocationPermanent?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsApplicantInstance' field='comLocationPermanent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'comLocationPresent', 'has-error')}'>
            <label><g:message code="emsApplicant.comLocationPresent.label" default="Com Location Present"/></label>
            <g:select name="comLocationPresent" class="form-control many-to-one" from="${org.reflection.com.ComLocation.list()}" value="${emsApplicantInstance?.comLocationPresent?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsApplicantInstance' field='comLocationPresent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'comProfessionFather', 'has-error')}'>
            <label><g:message code="emsApplicant.comProfessionFather.label" default="Com Profession Father"/></label>
            <g:select name="comProfessionFather" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${emsApplicantInstance?.comProfessionFather?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsApplicantInstance' field='comProfessionFather'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'comProfessionMother', 'has-error')}'>
            <label><g:message code="emsApplicant.comProfessionMother.label" default="Com Profession Mother"/></label>
            <g:select name="comProfessionMother" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${emsApplicantInstance?.comProfessionMother?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsApplicantInstance' field='comProfessionMother'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'birthRegNo', 'has-error')}'>
            <label><g:message code="emsApplicant.birthRegNo.label" default="Birth Reg No"/></label>
            <g:textField name="birthRegNo" class="form-control" value="${emsApplicantInstance?.birthRegNo}"/>
            <g:renderErrors bean='emsApplicantInstance' field='birthRegNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'email', 'has-error')}'>
            <label><g:message code="emsApplicant.email.label" default="Email"/></label>
            <g:textField name="email" class="form-control" value="${emsApplicantInstance?.email}"/>
            <g:renderErrors bean='emsApplicantInstance' field='email'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'mobile', 'has-error')}'>
            <label><g:message code="emsApplicant.mobile.label" default="Mobile"/></label>
            <g:textField name="mobile" class="form-control" value="${emsApplicantInstance?.mobile}"/>
            <g:renderErrors bean='emsApplicantInstance' field='mobile'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'addressPrmnHn', 'has-error')}'>
            <label><g:message code="emsApplicant.addressPrmnHn.label" default="Address Prmn Hn"/></label>
            <g:textField name="addressPrmnHn" class="form-control" value="${emsApplicantInstance?.addressPrmnHn}"/>
            <g:renderErrors bean='emsApplicantInstance' field='addressPrmnHn'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'addressPrmnHnNative', 'has-error')}'>
            <label><g:message code="emsApplicant.addressPrmnHnNative.label" default="Address Prmn Hn Native"/></label>
            <g:textField name="addressPrmnHnNative" class="form-control" value="${emsApplicantInstance?.addressPrmnHnNative}"/>
            <g:renderErrors bean='emsApplicantInstance' field='addressPrmnHnNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'addressPrmnPo', 'has-error')}'>
            <label><g:message code="emsApplicant.addressPrmnPo.label" default="Address Prmn Po"/></label>
            <g:textField name="addressPrmnPo" class="form-control" value="${emsApplicantInstance?.addressPrmnPo}"/>
            <g:renderErrors bean='emsApplicantInstance' field='addressPrmnPo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'addressPrmnPoNative', 'has-error')}'>
            <label><g:message code="emsApplicant.addressPrmnPoNative.label" default="Address Prmn Po Native"/></label>
            <g:textField name="addressPrmnPoNative" class="form-control" value="${emsApplicantInstance?.addressPrmnPoNative}"/>
            <g:renderErrors bean='emsApplicantInstance' field='addressPrmnPoNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'addressPrmnVill', 'has-error')}'>
            <label><g:message code="emsApplicant.addressPrmnVill.label" default="Address Prmn Vill"/></label>
            <g:textField name="addressPrmnVill" class="form-control" value="${emsApplicantInstance?.addressPrmnVill}"/>
            <g:renderErrors bean='emsApplicantInstance' field='addressPrmnVill'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'addressPrmnVillNative', 'has-error')}'>
            <label><g:message code="emsApplicant.addressPrmnVillNative.label" default="Address Prmn Vill Native"/></label>
            <g:textField name="addressPrmnVillNative" class="form-control" value="${emsApplicantInstance?.addressPrmnVillNative}"/>
            <g:renderErrors bean='emsApplicantInstance' field='addressPrmnVillNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'addressPrsnHn', 'has-error')}'>
            <label><g:message code="emsApplicant.addressPrsnHn.label" default="Address Prsn Hn"/></label>
            <g:textField name="addressPrsnHn" class="form-control" value="${emsApplicantInstance?.addressPrsnHn}"/>
            <g:renderErrors bean='emsApplicantInstance' field='addressPrsnHn'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'addressPrsnHnNative', 'has-error')}'>
            <label><g:message code="emsApplicant.addressPrsnHnNative.label" default="Address Prsn Hn Native"/></label>
            <g:textField name="addressPrsnHnNative" class="form-control" value="${emsApplicantInstance?.addressPrsnHnNative}"/>
            <g:renderErrors bean='emsApplicantInstance' field='addressPrsnHnNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'addressPrsnPo', 'has-error')}'>
            <label><g:message code="emsApplicant.addressPrsnPo.label" default="Address Prsn Po"/></label>
            <g:textField name="addressPrsnPo" class="form-control" value="${emsApplicantInstance?.addressPrsnPo}"/>
            <g:renderErrors bean='emsApplicantInstance' field='addressPrsnPo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'addressPrsnPoNative', 'has-error')}'>
            <label><g:message code="emsApplicant.addressPrsnPoNative.label" default="Address Prsn Po Native"/></label>
            <g:textField name="addressPrsnPoNative" class="form-control" value="${emsApplicantInstance?.addressPrsnPoNative}"/>
            <g:renderErrors bean='emsApplicantInstance' field='addressPrsnPoNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'addressPrsnVill', 'has-error')}'>
            <label><g:message code="emsApplicant.addressPrsnVill.label" default="Address Prsn Vill"/></label>
            <g:textField name="addressPrsnVill" class="form-control" value="${emsApplicantInstance?.addressPrsnVill}"/>
            <g:renderErrors bean='emsApplicantInstance' field='addressPrsnVill'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'addressPrsnVillNative', 'has-error')}'>
            <label><g:message code="emsApplicant.addressPrsnVillNative.label" default="Address Prsn Vill Native"/></label>
            <g:textField name="addressPrsnVillNative" class="form-control" value="${emsApplicantInstance?.addressPrsnVillNative}"/>
            <g:renderErrors bean='emsApplicantInstance' field='addressPrsnVillNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'fatherName', 'has-error')}'>
            <label><g:message code="emsApplicant.fatherName.label" default="Father Name"/></label>
            <g:textField name="fatherName" class="form-control" value="${emsApplicantInstance?.fatherName}"/>
            <g:renderErrors bean='emsApplicantInstance' field='fatherName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'fatherNameNative', 'has-error')}'>
            <label><g:message code="emsApplicant.fatherNameNative.label" default="Father Name Native"/></label>
            <g:textField name="fatherNameNative" class="form-control" value="${emsApplicantInstance?.fatherNameNative}"/>
            <g:renderErrors bean='emsApplicantInstance' field='fatherNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'firstName', 'has-error')}'>
            <label><g:message code="emsApplicant.firstName.label" default="First Name"/></label>
            <g:textField name="firstName" class="form-control" value="${emsApplicantInstance?.firstName}"/>
            <g:renderErrors bean='emsApplicantInstance' field='firstName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'firstNameNative', 'has-error')}'>
            <label><g:message code="emsApplicant.firstNameNative.label" default="First Name Native"/></label>
            <g:textField name="firstNameNative" class="form-control" value="${emsApplicantInstance?.firstNameNative}"/>
            <g:renderErrors bean='emsApplicantInstance' field='firstNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'fullNameNative', 'has-error')}'>
            <label><g:message code="emsApplicant.fullNameNative.label" default="Full Name Native"/></label>
            <g:textField name="fullNameNative" class="form-control" value="${emsApplicantInstance?.fullNameNative}"/>
            <g:renderErrors bean='emsApplicantInstance' field='fullNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'imagePath', 'has-error')}'>
            <label><g:message code="emsApplicant.imagePath.label" default="Image Path"/></label>
            <g:textField name="imagePath" class="form-control" value="${emsApplicantInstance?.imagePath}"/>
            <g:renderErrors bean='emsApplicantInstance' field='imagePath'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'lastName', 'has-error')}'>
            <label><g:message code="emsApplicant.lastName.label" default="Last Name"/></label>
            <g:textField name="lastName" class="form-control" value="${emsApplicantInstance?.lastName}"/>
            <g:renderErrors bean='emsApplicantInstance' field='lastName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'lastNameNative', 'has-error')}'>
            <label><g:message code="emsApplicant.lastNameNative.label" default="Last Name Native"/></label>
            <g:textField name="lastNameNative" class="form-control" value="${emsApplicantInstance?.lastNameNative}"/>
            <g:renderErrors bean='emsApplicantInstance' field='lastNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'middleName', 'has-error')}'>
            <label><g:message code="emsApplicant.middleName.label" default="Middle Name"/></label>
            <g:textField name="middleName" class="form-control" value="${emsApplicantInstance?.middleName}"/>
            <g:renderErrors bean='emsApplicantInstance' field='middleName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'middleNameNative', 'has-error')}'>
            <label><g:message code="emsApplicant.middleNameNative.label" default="Middle Name Native"/></label>
            <g:textField name="middleNameNative" class="form-control" value="${emsApplicantInstance?.middleNameNative}"/>
            <g:renderErrors bean='emsApplicantInstance' field='middleNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'motherName', 'has-error')}'>
            <label><g:message code="emsApplicant.motherName.label" default="Mother Name"/></label>
            <g:textField name="motherName" class="form-control" value="${emsApplicantInstance?.motherName}"/>
            <g:renderErrors bean='emsApplicantInstance' field='motherName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'motherNameNative', 'has-error')}'>
            <label><g:message code="emsApplicant.motherNameNative.label" default="Mother Name Native"/></label>
            <g:textField name="motherNameNative" class="form-control" value="${emsApplicantInstance?.motherNameNative}"/>
            <g:renderErrors bean='emsApplicantInstance' field='motherNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'nickName', 'has-error')}'>
            <label><g:message code="emsApplicant.nickName.label" default="Nick Name"/></label>
            <g:textField name="nickName" class="form-control" value="${emsApplicantInstance?.nickName}"/>
            <g:renderErrors bean='emsApplicantInstance' field='nickName'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'nickNameNative', 'has-error')}'>
            <label><g:message code="emsApplicant.nickNameNative.label" default="Nick Name Native"/></label>
            <g:textField name="nickNameNative" class="form-control" value="${emsApplicantInstance?.nickNameNative}"/>
            <g:renderErrors bean='emsApplicantInstance' field='nickNameNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'emsClass', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicant.emsClass.label" default="Ems Class"/></label>
            <g:select name="emsClass" class="form-control" from="${org.reflection.ems.EmsClass?.values()}" keys="${org.reflection.ems.EmsClass.values()*.name()}" value="${emsApplicantInstance?.emsClass?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsApplicantInstance' field='emsClass'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'emsYear', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicant.emsYear.label" default="Ems Year"/></label>
            <g:select name="emsYear" class="form-control" from="${org.reflection.ems.EmsYear?.values()}" keys="${org.reflection.ems.EmsYear.values()*.name()}" value="${emsApplicantInstance?.emsYear?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsApplicantInstance' field='emsYear'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'code', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicant.code.label" default="Code"/></label>
            <g:textField name="code" class="form-control" value="${emsApplicantInstance?.code}" required="required"/>
            <g:renderErrors bean='emsApplicantInstance' field='code'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'admissionDate', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicant.admissionDate.label" default="Admission Date"/></label>
            <g:textField name="admissionDate" class="form-control dtp-date" value="${emsApplicantInstance?.admissionDate?.format(grailsApplication.config.format.dtp.date)}" precision="day" required="required"/>
            <g:renderErrors bean='emsApplicantInstance' field='admissionDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantInstance, field: 'emsQuota', 'has-error')}'>
            <label><g:message code="emsApplicant.emsQuota.label" default="Ems Quota"/></label>
            <g:select name="emsQuota" class="form-control" from="${org.reflection.ems.EmsQuota?.values()}" keys="${org.reflection.ems.EmsQuota.values()*.name()}" value="${emsApplicantInstance?.emsQuota?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsApplicantInstance' field='emsQuota'/>
        </div>
    </div>

</fieldset>
