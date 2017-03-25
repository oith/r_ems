<!--
Use These line of code for : message.properties

#------------------------------------------------------------------------------------------------------------------------------------------------------
#                Com Location                                                                                                                    
#------------------------------------------------------------------------------------------------------------------------------------------------------
comLocation.pageTitle.label=Com Location
comLocation.code.label=Code
comLocation.comLocation.label=Com Location
comLocation.comLocationType.label=Com Location Type
comLocation.isActive.label=Is Active
comLocation.name.label=Name
comLocation.nameBn.label=Name Bn
#------------------------------------------------------------------------------------------------------------------------------------------------------

-->
<%@ page import="org.reflection.com.ComLocation" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comLocationInstance, field: 'comLocationType', 'has-error')} required'>
            <label class='required'><g:message code="comLocation.comLocationType.label" default="Com Location Type"/></label>
            <g:select name="comLocationType" class="form-control" from="${org.reflection.com.ComLocationType?.values()}" keys="${org.reflection.com.ComLocationType.values()*.name()}" value="${comLocationInstance?.comLocationType?.name()}"  noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='comLocationInstance' field='comLocationType'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comLocationInstance, field: 'code', 'has-error')} required'>
            <label class='required'><g:message code="comLocation.code.label" default="Code"/></label>
            <g:textField name="code" class="form-control" value="${comLocationInstance?.code}" maxlength="30" required="required"/>
            <g:renderErrors bean='comLocationInstance' field='code'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comLocationInstance, field: 'name', 'has-error')} required'>
            <label class='required'><g:message code="comLocation.name.label" default="Name"/></label>
            <g:textField name="name" class="form-control" value="${comLocationInstance?.name}" maxlength="30" required="required"/>
            <g:renderErrors bean='comLocationInstance' field='name'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: comLocationInstance, field: 'comLocation', 'has-error')}'>
            <label><g:message code="comLocation.comLocation.label" default="Com Location"/></label>
            <g:select name="comLocation" class="form-control many-to-one" from="${org.reflection.com.ComLocation.list()}" value="${comLocationInstance?.comLocation?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='comLocationInstance' field='comLocation'/>
        </div>
    </div>

</fieldset>
