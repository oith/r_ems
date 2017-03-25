
<%@ page import="org.reflection.com.ComAdditionalInfo" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'comAdditionalInfo.pageTitle.label', default: 'Com Additional Info')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">
            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.list.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/comAdditionalInfo/create">
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
                        <table class="table table-bordered table-striped table-hover table-condensed display nowrap th-center th-colored">
                            %{--NB: if you use dataTable ( dt-default/dt-full/dt-show/...) then you have to remove/comment/block else (No record found) part of your dataTable.--}%
                            <thead>
                                <tr>
                                    <th>${message(code: 'comAdditionalInfo.agreement.label', default: 'Agreement')}</th>
                                    <th>${message(code: 'comAdditionalInfo.computerLiteracy.label', default: 'Computer Literacy')}</th>
                                    <th>${message(code: 'comAdditionalInfo.drivingLicenceExpDate.label', default: 'Driving Licence Exp Date')}</th>
                                    <th>${message(code: 'comAdditionalInfo.drivingLicenceIssueDate.label', default: 'Driving Licence Issue Date')}</th>
                                    <th>${message(code: 'comAdditionalInfo.drivingLicenceNo.label', default: 'Driving Licence No')}</th>
                                    <th>${message(code: 'comAdditionalInfo.isWorkPermitExist.label', default: 'Is Work Permit Exist')}</th>
                                    <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:if test="${comAdditionalInfoInstanceList}">
                                    <g:each in="${comAdditionalInfoInstanceList}" status="i" var="comAdditionalInfoInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                            <td class="left">${fieldValue(bean: comAdditionalInfoInstance, field: "agreement")}</td>
                                            <td class="left">${fieldValue(bean: comAdditionalInfoInstance, field: "computerLiteracy")}</td>
                                            <td class="center"><g:formatDate format="${grailsApplication.config.format.dtp.date}" date="${comAdditionalInfoInstance.drivingLicenceExpDate}"/></td>
                                            <td class="center"><g:formatDate format="${grailsApplication.config.format.dtp.date}" date="${comAdditionalInfoInstance.drivingLicenceIssueDate}"/></td>
                                            <td class="left">${fieldValue(bean: comAdditionalInfoInstance, field: "drivingLicenceNo")}</td>
                                            <td class="center"><g:formatBoolean boolean="${comAdditionalInfoInstance.isWorkPermitExist}" true="Yes" false="No"/></td>
                                            <td class="center">
                                                <sec:access url="/comAdditionalInfo/show/${comAdditionalInfoInstance?.id}">
                                                    <g:link class="btn btn-xs btn-primary" action="show" id="${comAdditionalInfoInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/comAdditionalInfo/edit/${comAdditionalInfoInstance?.id}">
                                                    <g:link class="btn btn-xs btn-warning" action="edit" id="${comAdditionalInfoInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/comAdditionalInfo/delete/${comAdditionalInfoInstance?.id}">
                                                    <g:link class="btn btn-xs btn-danger" action="delete" id="${comAdditionalInfoInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
                                                        <i class="fa fa-trash"></i> <g:message code="default.button.delete.label" default="Delete"/>
                                                    </g:link>
                                                </sec:access>
                                            </td>
                                        </tr>
                                    </g:each>
                                </g:if>
                                <g:else>
                                    <tr><td class="bold center" colspan="7"><g:message code="default.noRecordFound.label" default="No Record Found...!"/></td></tr>
                                </g:else>
                            </tbody>
                        </table>
                        %{--
                        <div class="pagination">
                            <g:paginate total="${comAdditionalInfoInstanceCount ?: 0}"/>
                        </div>
                        --}%
                    </div><!-- /.box-body table-responsive no-padding -->
                </div><!-- /.box box-primary -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
</html>