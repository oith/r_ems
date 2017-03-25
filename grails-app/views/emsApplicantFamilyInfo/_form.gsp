<%@ page import="org.reflection.ems.EmsApplicantFamilyInfo" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantFamilyInfoInstance, field: 'comMaritalStatus', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicantFamilyInfo.comMaritalStatus.label" default="Com Marital Status"/></label>
            <g:select name="comMaritalStatus" class="form-control" from="${org.reflection.com.ComMaritalStatus?.values()}" keys="${org.reflection.com.ComMaritalStatus.values()*.name()}" value="${emsApplicantFamilyInfoInstance?.comMaritalStatus?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsApplicantFamilyInfoInstance' field='comMaritalStatus'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantFamilyInfoInstance, field: 'mobile', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicantFamilyInfo.mobile.label" default="Mobile"/></label>
            <g:textField name="mobile" class="form-control" value="${emsApplicantFamilyInfoInstance?.mobile}" required="required"/>
            <g:renderErrors bean='emsApplicantFamilyInfoInstance' field='mobile'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantFamilyInfoInstance, field: 'title', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicantFamilyInfo.title.label" default="Title"/></label>
            <g:textField name="title" class="form-control" value="${emsApplicantFamilyInfoInstance?.title}" required="required"/>
            <g:renderErrors bean='emsApplicantFamilyInfoInstance' field='title'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantFamilyInfoInstance, field: 'comLookupRefRelation', 'has-error')}'>
            <label><g:message code="emsApplicantFamilyInfo.comLookupRefRelation.label" default="Com Lookup Ref Relation"/></label>
            <g:select name="comLookupRefRelation" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${emsApplicantFamilyInfoInstance?.comLookupRefRelation?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsApplicantFamilyInfoInstance' field='comLookupRefRelation'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantFamilyInfoInstance, field: 'comProfession', 'has-error')}'>
            <label><g:message code="emsApplicantFamilyInfo.comProfession.label" default="Com Profession"/></label>
            <g:select name="comProfession" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${emsApplicantFamilyInfoInstance?.comProfession?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsApplicantFamilyInfoInstance' field='comProfession'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantFamilyInfoInstance, field: 'email', 'has-error')}'>
            <label><g:message code="emsApplicantFamilyInfo.email.label" default="Email"/></label>
            <g:textField name="email" class="form-control" value="${emsApplicantFamilyInfoInstance?.email}"/>
            <g:renderErrors bean='emsApplicantFamilyInfoInstance' field='email'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantFamilyInfoInstance, field: 'phone', 'has-error')}'>
            <label><g:message code="emsApplicantFamilyInfo.phone.label" default="Phone"/></label>
            <g:textField name="phone" class="form-control" value="${emsApplicantFamilyInfoInstance?.phone}"/>
            <g:renderErrors bean='emsApplicantFamilyInfoInstance' field='phone'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantFamilyInfoInstance, field: 'picPath', 'has-error')}'>
            <label><g:message code="emsApplicantFamilyInfo.picPath.label" default="Pic Path"/></label>
            <g:textField name="picPath" class="form-control" value="${emsApplicantFamilyInfoInstance?.picPath}"/>
            <g:renderErrors bean='emsApplicantFamilyInfoInstance' field='picPath'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantFamilyInfoInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="emsApplicantFamilyInfo.remarks.label" default="Remarks"/></label>
            <g:textField name="remarks" class="form-control" value="${emsApplicantFamilyInfoInstance?.remarks}"/>
            <g:renderErrors bean='emsApplicantFamilyInfoInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantFamilyInfoInstance, field: 'titleDept', 'has-error')}'>
            <label><g:message code="emsApplicantFamilyInfo.titleDept.label" default="Title Dept"/></label>
            <g:textField name="titleDept" class="form-control" value="${emsApplicantFamilyInfoInstance?.titleDept}"/>
            <g:renderErrors bean='emsApplicantFamilyInfoInstance' field='titleDept'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantFamilyInfoInstance, field: 'titleJob', 'has-error')}'>
            <label><g:message code="emsApplicantFamilyInfo.titleJob.label" default="Title Job"/></label>
            <g:textField name="titleJob" class="form-control" value="${emsApplicantFamilyInfoInstance?.titleJob}"/>
            <g:renderErrors bean='emsApplicantFamilyInfoInstance' field='titleJob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantFamilyInfoInstance, field: 'titleNative', 'has-error')}'>
            <label><g:message code="emsApplicantFamilyInfo.titleNative.label" default="Title Native"/></label>
            <g:textField name="titleNative" class="form-control" value="${emsApplicantFamilyInfoInstance?.titleNative}"/>
            <g:renderErrors bean='emsApplicantFamilyInfoInstance' field='titleNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantFamilyInfoInstance, field: 'titleOrg', 'has-error')}'>
            <label><g:message code="emsApplicantFamilyInfo.titleOrg.label" default="Title Org"/></label>
            <g:textField name="titleOrg" class="form-control" value="${emsApplicantFamilyInfoInstance?.titleOrg}"/>
            <g:renderErrors bean='emsApplicantFamilyInfoInstance' field='titleOrg'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantFamilyInfoInstance, field: 'monthlySalary', 'has-error')}'>
            <label><g:message code="emsApplicantFamilyInfo.monthlySalary.label" default="Monthly Salary"/></label>
            <g:field type="number" name="monthlySalary" class="form-control" value="${emsApplicantFamilyInfoInstance?.monthlySalary}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsApplicantFamilyInfoInstance' field='monthlySalary'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantFamilyInfoInstance, field: 'slNo', 'has-error')}'>
            <label><g:message code="emsApplicantFamilyInfo.slNo.label" default="Sl No"/></label>
            <g:field type="number" name="slNo" class="form-control" value="${emsApplicantFamilyInfoInstance?.slNo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='emsApplicantFamilyInfoInstance' field='slNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantFamilyInfoInstance, field: 'dob', 'has-error')}'>
            <label><g:message code="emsApplicantFamilyInfo.dob.label" default="Dob"/></label>
            <g:textField name="dob" class="form-control dtp-date" value="${emsApplicantFamilyInfoInstance?.dob?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='emsApplicantFamilyInfoInstance' field='dob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsApplicantFamilyInfoInstance, field: 'emsApplicant', 'has-error')} required'>
            <label class='required'><g:message code="emsApplicantFamilyInfo.emsApplicant.label" default="Ems Applicant"/></label>
            <g:select name="emsApplicant" class="form-control many-to-one" from="${org.reflection.ems.EmsApplicant.list()}" value="${emsApplicantFamilyInfoInstance?.emsApplicant?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsApplicantFamilyInfoInstance' field='emsApplicant'/>
        </div>
    </div>

</fieldset>
