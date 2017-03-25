<%@ page import="org.reflection.ems.EmsRegistration" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsRegistrationInstance, field: 'emsRegistrationType', 'has-error')} required'>
            <label class='required'><g:message code="emsRegistration.emsRegistrationType.label" default="Ems Registration Type"/></label>
            <g:select name="emsRegistrationType" class="form-control" from="${org.reflection.ems.EmsRegistrationType?.values()}" keys="${org.reflection.ems.EmsRegistrationType.values()*.name()}" value="${emsRegistrationInstance?.emsRegistrationType?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsRegistrationInstance' field='emsRegistrationType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsRegistrationInstance, field: 'roll', 'has-error')} required'>
            <label class='required'><g:message code="emsRegistration.roll.label" default="Roll"/></label>
            <g:textField name="roll" class="form-control" value="${emsRegistrationInstance?.roll}" required="required"/>
            <g:renderErrors bean='emsRegistrationInstance' field='roll'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsRegistrationInstance, field: 'emsStudent', 'has-error')} required'>
            <label class='required'><g:message code="emsRegistration.emsStudent.label" default="Ems Student"/></label>
            <g:select name="emsStudent" class="form-control many-to-one" from="${org.reflection.ems.EmsStudent.list()}" value="${emsRegistrationInstance?.emsStudent?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsRegistrationInstance' field='emsStudent'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsRegistrationInstance, field: 'admissionDate', 'has-error')} required'>
            <label class='required'><g:message code="emsRegistration.admissionDate.label" default="Admission Date"/></label>
            <g:textField name="admissionDate" class="form-control dtp-date" value="${emsRegistrationInstance?.admissionDate?.format(grailsApplication.config.format.dtp.date)}" precision="day" required="required"/>
            <g:renderErrors bean='emsRegistrationInstance' field='admissionDate'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsRegistrationInstance, field: 'emsClass', 'has-error')} required'>
            <label class='required'><g:message code="emsRegistration.emsClass.label" default="Ems Class"/></label>
            <g:select name="emsClass" class="form-control" from="${org.reflection.ems.EmsClass?.values()}" keys="${org.reflection.ems.EmsClass.values()*.name()}" value="${emsRegistrationInstance?.emsClass?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsRegistrationInstance' field='emsClass'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsRegistrationInstance, field: 'emsShift', 'has-error')} required'>
            <label class='required'><g:message code="emsRegistration.emsShift.label" default="Ems Shift"/></label>
            <g:select name="emsShift" class="form-control" from="${org.reflection.ems.EmsShift?.values()}" keys="${org.reflection.ems.EmsShift.values()*.name()}" value="${emsRegistrationInstance?.emsShift?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsRegistrationInstance' field='emsShift'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsRegistrationInstance, field: 'emsYear', 'has-error')} required'>
            <label class='required'><g:message code="emsRegistration.emsYear.label" default="Ems Year"/></label>
            <g:select name="emsYear" class="form-control" from="${org.reflection.ems.EmsYear?.values()}" keys="${org.reflection.ems.EmsYear.values()*.name()}" value="${emsRegistrationInstance?.emsYear?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsRegistrationInstance' field='emsYear'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsRegistrationInstance, field: 'comBranch', 'has-error')}'>
            <label><g:message code="emsRegistration.comBranch.label" default="Com Branch"/></label>
            <g:select name="comBranch" class="form-control many-to-one" from="${org.reflection.com.ComBranch.list()}" value="${emsRegistrationInstance?.comBranch?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsRegistrationInstance' field='comBranch'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsRegistrationInstance, field: 'emsSection', 'has-error')}'>
            <label><g:message code="emsRegistration.emsSection.label" default="Ems Section"/></label>
            <g:select name="emsSection" class="form-control" from="${org.reflection.ems.EmsSection?.values()}" keys="${org.reflection.ems.EmsSection.values()*.name()}" value="${emsRegistrationInstance?.emsSection?.name()}"  noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsRegistrationInstance' field='emsSection'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsRegistrationInstance, field: 'isActive', 'has-error')}'>
            <label><g:message code="emsRegistration.isActive.label" default="Is Active"/></label>
            <g:checkBox class="cb" name="isActive"  value="${emsRegistrationInstance?.isActive}" />
            <g:renderErrors bean='emsRegistrationInstance' field='isActive'/>
        </div>
    </div>

</fieldset>
