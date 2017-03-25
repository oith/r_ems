<%@ page import="org.reflection.com.ComFamilyInfo" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comFamilyInfoInstance, field: 'comMaritalStatus', 'has-error')} required'>
            <label class='required'><g:message code="comFamilyInfo.comMaritalStatus.label" default="Com Marital Status"/></label>
            <g:select name="comMaritalStatus" class="form-control" from="${org.reflection.com.ComMaritalStatus?.values()}" keys="${org.reflection.com.ComMaritalStatus.values()*.name()}" value="${comFamilyInfoInstance?.comMaritalStatus?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='comFamilyInfoInstance' field='comMaritalStatus'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comFamilyInfoInstance, field: 'mobile', 'has-error')} required'>
            <label class='required'><g:message code="comFamilyInfo.mobile.label" default="Mobile"/></label>
            <g:textField name="mobile" class="form-control" value="${comFamilyInfoInstance?.mobile}" required="required"/>
            <g:renderErrors bean='comFamilyInfoInstance' field='mobile'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comFamilyInfoInstance, field: 'title', 'has-error')} required'>
            <label class='required'><g:message code="comFamilyInfo.title.label" default="Title"/></label>
            <g:textField name="title" class="form-control" value="${comFamilyInfoInstance?.title}" required="required"/>
            <g:renderErrors bean='comFamilyInfoInstance' field='title'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comFamilyInfoInstance, field: 'comLookupRefRelation', 'has-error')}'>
            <label><g:message code="comFamilyInfo.comLookupRefRelation.label" default="Com Lookup Ref Relation"/></label>
            <g:select name="comLookupRefRelation" class="form-control many-to-one" from="${org.reflection.com.ComLookup.list()}" value="${comFamilyInfoInstance?.comLookupRefRelation?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='comFamilyInfoInstance' field='comLookupRefRelation'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comFamilyInfoInstance, field: 'comProfession', 'has-error')}'>
            <label><g:message code="comFamilyInfo.comProfession.label" default="Com Profession"/></label>
            <g:select name="comProfession" class="form-control" from="${org.reflection.com.ComProfession?.values()}" keys="${org.reflection.com.ComProfession.values()*.name()}" value="${comFamilyInfoInstance?.comProfession?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='comFamilyInfoInstance' field='comProfession'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comFamilyInfoInstance, field: 'email', 'has-error')}'>
            <label><g:message code="comFamilyInfo.email.label" default="Email"/></label>
            <g:textField name="email" class="form-control" value="${comFamilyInfoInstance?.email}"/>
            <g:renderErrors bean='comFamilyInfoInstance' field='email'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comFamilyInfoInstance, field: 'phone', 'has-error')}'>
            <label><g:message code="comFamilyInfo.phone.label" default="Phone"/></label>
            <g:textField name="phone" class="form-control" value="${comFamilyInfoInstance?.phone}"/>
            <g:renderErrors bean='comFamilyInfoInstance' field='phone'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comFamilyInfoInstance, field: 'picPath', 'has-error')}'>
            <label><g:message code="comFamilyInfo.picPath.label" default="Pic Path"/></label>
            <g:textField name="picPath" class="form-control" value="${comFamilyInfoInstance?.picPath}"/>
            <g:renderErrors bean='comFamilyInfoInstance' field='picPath'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comFamilyInfoInstance, field: 'remarks', 'has-error')}'>
            <label><g:message code="comFamilyInfo.remarks.label" default="Remarks"/></label>
            <g:textField name="remarks" class="form-control" value="${comFamilyInfoInstance?.remarks}"/>
            <g:renderErrors bean='comFamilyInfoInstance' field='remarks'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comFamilyInfoInstance, field: 'titleDept', 'has-error')}'>
            <label><g:message code="comFamilyInfo.titleDept.label" default="Title Dept"/></label>
            <g:textField name="titleDept" class="form-control" value="${comFamilyInfoInstance?.titleDept}"/>
            <g:renderErrors bean='comFamilyInfoInstance' field='titleDept'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comFamilyInfoInstance, field: 'titleJob', 'has-error')}'>
            <label><g:message code="comFamilyInfo.titleJob.label" default="Title Job"/></label>
            <g:textField name="titleJob" class="form-control" value="${comFamilyInfoInstance?.titleJob}"/>
            <g:renderErrors bean='comFamilyInfoInstance' field='titleJob'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comFamilyInfoInstance, field: 'titleNative', 'has-error')}'>
            <label><g:message code="comFamilyInfo.titleNative.label" default="Title Native"/></label>
            <g:textField name="titleNative" class="form-control" value="${comFamilyInfoInstance?.titleNative}"/>
            <g:renderErrors bean='comFamilyInfoInstance' field='titleNative'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comFamilyInfoInstance, field: 'titleOrg', 'has-error')}'>
            <label><g:message code="comFamilyInfo.titleOrg.label" default="Title Org"/></label>
            <g:textField name="titleOrg" class="form-control" value="${comFamilyInfoInstance?.titleOrg}"/>
            <g:renderErrors bean='comFamilyInfoInstance' field='titleOrg'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comFamilyInfoInstance, field: 'monthlySalary', 'has-error')}'>
            <label><g:message code="comFamilyInfo.monthlySalary.label" default="Monthly Salary"/></label>
            <g:field type="number" name="monthlySalary" class="form-control" value="${comFamilyInfoInstance?.monthlySalary}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comFamilyInfoInstance' field='monthlySalary'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comFamilyInfoInstance, field: 'slNo', 'has-error')}'>
            <label><g:message code="comFamilyInfo.slNo.label" default="Sl No"/></label>
            <g:field type="number" name="slNo" class="form-control" value="${comFamilyInfoInstance?.slNo}" min="0" max="9999999" step="1.00"/>
            <g:renderErrors bean='comFamilyInfoInstance' field='slNo'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comFamilyInfoInstance, field: 'dob', 'has-error')}'>
            <label><g:message code="comFamilyInfo.dob.label" default="Dob"/></label>
            <g:textField name="dob" class="form-control dtp-date" value="${comFamilyInfoInstance?.dob?.format(grailsApplication.config.format.dtp.date)}" precision="day"/>
            <g:renderErrors bean='comFamilyInfoInstance' field='dob'/>
        </div>
    </div>

</fieldset>
