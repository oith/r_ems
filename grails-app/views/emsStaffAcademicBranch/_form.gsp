<%@ page import="org.reflection.ems.EmsStaffAcademicBranch" %>
<fieldset class='form'>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicBranchInstance, field: 'emsStaffAcademic', 'has-error')} required'>
            <label class='required'><g:message code="emsStaffAcademicBranch.emsStaffAcademic.label" default="Ems Staff Academic"/></label>
            <g:select name="emsStaffAcademic" class="form-control many-to-one" from="${org.reflection.ems.EmsStaffAcademic.list()}" value="${emsStaffAcademicBranchInstance?.emsStaffAcademic?.id}" optionKey="id" noSelection="['': 'Select One']" required="required"/>
            <g:renderErrors bean='emsStaffAcademicBranchInstance' field='emsStaffAcademic'/>
        </div>
    </div>

    <div class='col-xs-12 col-sm-6 col-md-4 col-lg-3'>
        <div class='form-group ${hasErrors(bean: emsStaffAcademicBranchInstance, field: 'comBranch', 'has-error')}'>
            <label><g:message code="emsStaffAcademicBranch.comBranch.label" default="Com Branch"/></label>
            <g:select name="comBranch" class="form-control many-to-one" from="${org.reflection.com.ComBranch.list()}" value="${emsStaffAcademicBranchInstance?.comBranch?.id}" optionKey="id" noSelection="['': 'Select One']"/>
            <g:renderErrors bean='emsStaffAcademicBranchInstance' field='comBranch'/>
        </div>
    </div>

</fieldset>
