<%@ page import="org.reflection.auth.AuthLandingPage" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'authLandingPage.pageTitle.label', default: 'Auth Landing Page')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">
            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.list.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/authLandingPage/create">
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
                                    <th>${message(code: 'authLandingPage.pageUrl.label', default: 'Page Url')}</th>
                                    <th>${message(code: 'authLandingPage.authRole.label', default: 'Auth Role')}</th>
                                    <th>${message(code: 'authLandingPage.isActive.label', default: 'Is Active')}</th>
                                    <th>${message(code: 'authLandingPage.remarks.label', default: 'Remarks')}</th>
                                    <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:if test="${authLandingPageInstanceList}">
                                    <g:each in="${authLandingPageInstanceList}" status="i" var="authLandingPageInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                            <td class="left">${fieldValue(bean: authLandingPageInstance, field: "pageUrl")}</td>
                                            <td class="left">${fieldValue(bean: authLandingPageInstance, field: "authRole")}</td>
                                            <td class="center"><g:formatBoolean boolean="${authLandingPageInstance.isActive}" true="Yes" false="No"/></td>
                                            <td class="left">${fieldValue(bean: authLandingPageInstance, field: "remarks")}</td>
                                            <td class="center">
                                                <sec:access url="/authLandingPage/show/${authLandingPageInstance?.id}">
                                                    <g:link class="btn btn-xs btn-primary" action="show" id="${authLandingPageInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/authLandingPage/edit/${authLandingPageInstance?.id}">
                                                    <g:link class="btn btn-xs btn-warning" action="edit" id="${authLandingPageInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/authLandingPage/delete/${authLandingPageInstance?.id}">
                                                    <g:link class="btn btn-xs btn-danger" action="delete" id="${authLandingPageInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
                                                        <i class="fa fa-trash"></i> <g:message code="default.button.delete.label" default="Delete"/>
                                                    </g:link>
                                                </sec:access>
                                            </td>
                                        </tr>
                                    </g:each>
                                </g:if>
                                <g:else>
                                    <tr><td class="bold center" colspan="5"><g:message code="default.noRecordFound.label" default="No Record Found...!"/></td></tr>
                                </g:else>
                            </tbody>
                        </table>
                        %{--
                        <div class="pagination">
                            <g:paginate total="${authLandingPageInstanceCount ?: 0}"/>
                        </div>
                        --}%
                    </div><!-- /.box-body table-responsive no-padding -->
                </div><!-- /.box box-primary -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
</html>