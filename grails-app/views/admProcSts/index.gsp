
<%@ page import="org.reflection.adm.AdmProcSts" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'admProcSts.pageTitle.label', default: 'Adm Proc Sts')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">
            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.list.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/admProcSts/create">
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
                                    <th>${message(code: 'admProcSts.startTime.label', default: 'Start Time')}</th>
                                    <th>${message(code: 'admProcSts.authUser.label', default: 'Auth User')}</th>
                                    <th>${message(code: 'admProcSts.procTitle.label', default: 'Proc Title')}</th>
                                    <th>${message(code: 'admProcSts.status.label', default: 'Status')}</th>
                                    <th>${message(code: 'admProcSts.endTime.label', default: 'End Time')}</th>
                                    <th>${message(code: 'admProcSts.donePct.label', default: 'Done Pct')}</th>
                                    <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:if test="${admProcStsInstanceList}">
                                    <g:each in="${admProcStsInstanceList}" status="i" var="admProcStsInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                            <td class="center"><g:formatDate format="${grailsApplication.config.format.dtp.date}" date="${admProcStsInstance.startTime}"/></td>
                                            <td class="left">${fieldValue(bean: admProcStsInstance, field: "authUser")}</td>
                                            <td class="left">${fieldValue(bean: admProcStsInstance, field: "procTitle")}</td>
                                            <td class="left">${fieldValue(bean: admProcStsInstance, field: "status")}</td>
                                            <td class="center"><g:formatDate format="${grailsApplication.config.format.dtp.date}" date="${admProcStsInstance.endTime}"/></td>
                                            <td class="right"><g:formatNumber format="##,##,##,##,###.####" number="${admProcStsInstance.donePct}"/></td>
                                            <td class="center">
                                                <sec:access url="/admProcSts/show/${admProcStsInstance?.id}">
                                                    <g:link class="btn btn-xs btn-primary" action="show" id="${admProcStsInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/admProcSts/edit/${admProcStsInstance?.id}">
                                                    <g:link class="btn btn-xs btn-warning" action="edit" id="${admProcStsInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/admProcSts/delete/${admProcStsInstance?.id}">
                                                    <g:link class="btn btn-xs btn-danger" action="delete" id="${admProcStsInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
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
                            <g:paginate total="${admProcStsInstanceCount ?: 0}"/>
                        </div>
                        --}%
                    </div><!-- /.box-body table-responsive no-padding -->
                </div><!-- /.box box-primary -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
</html>