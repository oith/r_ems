<%@ page import="org.reflection.ems.EmsApplicant" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'emsApplicant.pageTitle.label', default: 'Ems Applicant')}"/>
    <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>
<div class="content-wrapper"><!-- Content Wrapper. Contains page content -->
    <section class="content-header"><!-- Content Header (Page header) -->
        <h1><g:message code="default.edit.label" args="[entityName]"/></h1>
        <ul class="top-links">
            <sec:access url="/emsApplicant/index">
                <li>
                    <g:link class="btn btn-block btn-vimeo btn-xs" action="index">
                        <i class="fa fa-reorder"></i> <g:message code="default.button.list.label" default="List"/>
                    </g:link>
                </li>
            </sec:access>
            <sec:access url="/emsApplicant/create">
                <li>
                    <g:link class="btn btn-block btn-primary btn-xs" action="create">
                        <i class="fa fa-plus-circle "></i> <g:message code="default.button.new.label" default="New"/>
                    </g:link>
                </li>
            </sec:access>
        </ul>
    </section><!-- /.content-header -->

    <section class="flash-message">
        <g:render template="../layouts/flashMessage"/>
    </section><!--Flash Message-->

    <section class="content"><!-- Main content -->
        <div id="edit-emsApplicant" class="box box-primary" role="main">
            <g:form url="[resource: emsApplicantInstance, action: 'update']" method="PUT">
                <div class="box-body">
                    <g:hiddenField name="version" value="${emsApplicantInstance?.version}"/>
                    <g:render template="form" model="${[emsApplicantInstance: emsApplicantInstance, bloodGroupList: bloodGroupList]}"/>
                    <g:render template="formEmsApplicantBankAccount" model="${[emsApplicantBankAccountList: emsApplicantInstance?.emsApplicantBankAccount]}"/>
                    <g:render template="formEmsApplicantBranchPreferance" model="${[emsApplicantBranchPreferanceList: emsApplicantInstance?.emsApplicantBranchPreferance]}"/>
                    <g:render template="formEmsApplicantDocument" model="${[emsApplicantDocumentList: emsApplicantInstance?.emsApplicantDocument]}"/>
                    <g:render template="formEmsApplicantEducationInfo" model="${[emsApplicantEducationInfoList: emsApplicantInstance?.emsApplicantEducationInfo]}"/>
                </div><!-- /.box-body -->
                <div class="box-footer">
                    <fieldset class="buttons">
                        <sec:access url="/emsApplicant/edit/${emsApplicantInstance?.id}">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> ${message(code: "default.button.update.label", default: "Update")}</button>
                        </sec:access>
                        <sec:access url="/emsApplicant/show/${emsApplicantInstance?.id}">
                            <g:link class="btn btn-warning pull-right" action="show" id="${emsApplicantInstance?.id}"><i class="fa fa-reply-all" aria-hidden="true"></i> ${message(code: "default.button.goBack.label", default: "Go Back")}</g:link>
                        </sec:access>
                    </fieldset>
                </div><!-- /.box-footer -->
            </g:form>
        </div><!-- /.box box-primary -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
</body>
</html>