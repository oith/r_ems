<%@ page import="org.reflection.ems.EmsPreAdmission" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'emsPreAdmission.pageTitle.label', default: 'Ems Pre Admission')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="content-wrapper">
    <section class="content-header"><!-- Content Header (Page header) -->
        <h1><g:message code="default.list.label" args="[entityName]"/></h1>
        <ul class="top-links">
            <sec:access url="/emsPreAdmission/create">
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
        <div class="box box-primary">
            <div class="box-body">
                <table class="table dt-default table-bordered table-striped table-hover table-condensed display nowrap th-center th-colored">
                    <thead>
                    <tr>
                        <th>${message(code: 'emsPreAdmission.emsApplicant.label', default: 'Ems Applicant')}</th>
                        <th>${message(code: 'emsPreAdmission.isAttachmentSubmitted.label', default: 'Is Attachment Submitted')}</th>
                        <th>${message(code: 'emsPreAdmission.isPaymentComplete.label', default: 'Is Payment Complete')}</th>
                        <th>${message(code: 'emsPreAdmission.isChecked.label', default: 'Is Checked')}</th>
                        <th>${message(code: 'emsPreAdmission.isApproved.label', default: 'Is Approved')}</th>
                        <th>${message(code: 'emsPreAdmission.applicationDate.label', default: 'Application Date')}</th>
                        <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:if test="${emsPreAdmissionInstanceList}">
                        <g:each in="${emsPreAdmissionInstanceList}" status="i" var="emsPreAdmissionInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                <td class="left">${fieldValue(bean: emsPreAdmissionInstance, field: "emsApplicant")}</td>
                                <td class="center"><g:formatBoolean boolean="${emsPreAdmissionInstance.isAttachmentSubmitted}" true="Yes" false="No"/></td>
                                <td class="center"><g:formatBoolean boolean="${emsPreAdmissionInstance.isPaymentComplete}" true="Yes" false="No"/></td>
                                <td class="center"><g:formatBoolean boolean="${emsPreAdmissionInstance.isChecked}" true="Yes" false="No"/></td>
                                <td class="center"><g:formatBoolean boolean="${emsPreAdmissionInstance.isApproved}" true="Yes" false="No"/></td>
                                <td class="center"><g:formatDate format="${grailsApplication.config.format.dtp.date}" date="${emsPreAdmissionInstance.applicationDate}"/></td>
                                <td class="center">
                                    <sec:access url="/emsPreAdmission/show/${emsPreAdmissionInstance?.id}">
                                        <g:link class="btn btn-xs btn-primary" action="show" id="${emsPreAdmissionInstance?.id}">
                                            <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                        </g:link>
                                    </sec:access>
                                    <sec:access url="/emsPreAdmission/edit/${emsPreAdmissionInstance?.id}">
                                        <g:link class="btn btn-xs btn-warning" action="edit" id="${emsPreAdmissionInstance?.id}">
                                            <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                        </g:link>
                                    </sec:access>
                                    <sec:access url="/emsPreAdmission/delete/${emsPreAdmissionInstance?.id}">
                                        <g:link class="btn btn-xs btn-danger" action="delete" id="${emsPreAdmissionInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
                                            <i class="fa fa-trash"></i> <g:message code="default.button.delete.label" default="Delete"/>
                                        </g:link>
                                    </sec:access>
                                </td>
                            </tr>
                        </g:each>
                    </g:if>
                    %{--<g:else>--}%
                        %{--<tr><td class="bold center" colspan="7"><g:message code="default.noRecordFound.label" default="No Record Found...!"/></td></tr>--}%
                    %{--</g:else>--}%
                    </tbody>
                </table>
                %{--
                <div class="pagination">
                    <g:paginate total="${emsPreAdmissionInstanceCount ?: 0}"/>
                </div>
                --}%
            </div><!-- /.box-body table-responsive no-padding -->
        </div><!-- /.box box-primary -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
</body>
</html>