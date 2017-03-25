<%@ page import="org.reflection.ems.EmsRegistration" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'emsRegistration.pageTitle.label', default: 'Ems Registration')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="content-wrapper">
    <section class="content-header"><!-- Content Header (Page header) -->
        <h1><g:message code="default.list.label" args="[entityName]"/></h1>
        <ul class="top-links">
            <sec:access url="/emsRegistration/create">
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
                        <th>${message(code: 'emsRegistration.emsRegistrationType.label', default: 'Ems Registration Type')}</th>
                        <th>${message(code: 'emsRegistration.roll.label', default: 'Roll')}</th>
                        <th>${message(code: 'emsRegistration.emsStudent.label', default: 'Ems Student')}</th>
                        <th>${message(code: 'emsRegistration.admissionDate.label', default: 'Admission Date')}</th>
                        <th>${message(code: 'emsRegistration.emsClass.label', default: 'Ems Class')}</th>
                        <th>${message(code: 'emsRegistration.emsShift.label', default: 'Ems Shift')}</th>
                        <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:if test="${emsRegistrationInstanceList}">
                        <g:each in="${emsRegistrationInstanceList}" status="i" var="emsRegistrationInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                <td class="left">${fieldValue(bean: emsRegistrationInstance, field: "emsRegistrationType")}</td>
                                <td class="left">${fieldValue(bean: emsRegistrationInstance, field: "roll")}</td>
                                <td class="left">${fieldValue(bean: emsRegistrationInstance, field: "emsStudent")}</td>
                                <td class="center"><g:formatDate format="${grailsApplication.config.format.dtp.date}" date="${emsRegistrationInstance.admissionDate}"/></td>
                                <td class="left">${fieldValue(bean: emsRegistrationInstance, field: "emsClass")}</td>
                                <td class="left">${fieldValue(bean: emsRegistrationInstance, field: "emsShift")}</td>
                                <td class="center">
                                    <sec:access url="/emsRegistration/show/${emsRegistrationInstance?.id}">
                                        <g:link class="btn btn-xs btn-primary" action="show" id="${emsRegistrationInstance?.id}">
                                            <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                        </g:link>
                                    </sec:access>
                                    <sec:access url="/emsRegistration/edit/${emsRegistrationInstance?.id}">
                                        <g:link class="btn btn-xs btn-warning" action="edit" id="${emsRegistrationInstance?.id}">
                                            <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                        </g:link>
                                    </sec:access>
                                    <sec:access url="/emsRegistration/delete/${emsRegistrationInstance?.id}">
                                        <g:link class="btn btn-xs btn-danger" action="delete" id="${emsRegistrationInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
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
                    <g:paginate total="${emsRegistrationInstanceCount ?: 0}"/>
                </div>
                --}%
            </div><!-- /.box-body table-responsive no-padding -->
        </div><!-- /.box box-primary -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
</body>
</html>