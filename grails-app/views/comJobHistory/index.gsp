
<%@ page import="org.reflection.com.ComJobHistory" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'comJobHistory.pageTitle.label', default: 'Com Job History')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">
            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.list.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/comJobHistory/create">
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
                                    <th>${message(code: 'comJobHistory.department.label', default: 'Department')}</th>
                                    <th>${message(code: 'comJobHistory.job.label', default: 'Job')}</th>
                                    <th>${message(code: 'comJobHistory.jobDuration.label', default: 'Job Duration')}</th>
                                    <th>${message(code: 'comJobHistory.organization.label', default: 'Organization')}</th>
                                    <th>${message(code: 'comJobHistory.reasonForLeave.label', default: 'Reason For Leave')}</th>
                                    <th>${message(code: 'comJobHistory.responsibility.label', default: 'Responsibility')}</th>
                                    <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:if test="${comJobHistoryInstanceList}">
                                    <g:each in="${comJobHistoryInstanceList}" status="i" var="comJobHistoryInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                            <td class="left">${fieldValue(bean: comJobHistoryInstance, field: "department")}</td>
                                            <td class="left">${fieldValue(bean: comJobHistoryInstance, field: "job")}</td>
                                            <td class="left">${fieldValue(bean: comJobHistoryInstance, field: "jobDuration")}</td>
                                            <td class="left">${fieldValue(bean: comJobHistoryInstance, field: "organization")}</td>
                                            <td class="left">${fieldValue(bean: comJobHistoryInstance, field: "reasonForLeave")}</td>
                                            <td class="left">${fieldValue(bean: comJobHistoryInstance, field: "responsibility")}</td>
                                            <td class="center">
                                                <sec:access url="/comJobHistory/show/${comJobHistoryInstance?.id}">
                                                    <g:link class="btn btn-xs btn-primary" action="show" id="${comJobHistoryInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/comJobHistory/edit/${comJobHistoryInstance?.id}">
                                                    <g:link class="btn btn-xs btn-warning" action="edit" id="${comJobHistoryInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/comJobHistory/delete/${comJobHistoryInstance?.id}">
                                                    <g:link class="btn btn-xs btn-danger" action="delete" id="${comJobHistoryInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
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
                            <g:paginate total="${comJobHistoryInstanceCount ?: 0}"/>
                        </div>
                        --}%
                    </div><!-- /.box-body table-responsive no-padding -->
                </div><!-- /.box box-primary -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
</html>