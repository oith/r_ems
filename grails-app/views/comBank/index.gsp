<%@ page import="org.reflection.com.ComBank" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'comBank.pageTitle.label', default: 'Com Bank')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="content-wrapper">
    <section class="content-header"><!-- Content Header (Page header) -->
        <h1><g:message code="default.list.label" args="[entityName]"/></h1>
        <ul class="top-links">
            <sec:access url="/comBank/create">
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
                        <th>${message(code: 'comBank.title.label', default: 'Title')}</th>
                        <th>${message(code: 'comBank.isActive.label', default: 'Is Active')}</th>
                        <th>${message(code: 'comBank.sortOrder.label', default: 'Sort Order')}</th>
                        <th>${message(code: 'comBank.titleNative.label', default: 'Title Native')}</th>
                        <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:if test="${comBankInstanceList}">
                        <g:each in="${comBankInstanceList}" status="i" var="comBankInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                <td class="left">${fieldValue(bean: comBankInstance, field: "title")}</td>
                                <td class="center"><g:formatBoolean boolean="${comBankInstance.isActive}" true="Yes" false="No"/></td>
                                <td class="left">${fieldValue(bean: comBankInstance, field: "sortOrder")}</td>
                                <td class="left">${fieldValue(bean: comBankInstance, field: "titleNative")}</td>
                                <td class="center">
                                    <sec:access url="/comBank/show/${comBankInstance?.id}">
                                        <g:link class="btn btn-xs btn-primary" action="show" id="${comBankInstance?.id}">
                                            <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                        </g:link>
                                    </sec:access>
                                    <sec:access url="/comBank/edit/${comBankInstance?.id}">
                                        <g:link class="btn btn-xs btn-warning" action="edit" id="${comBankInstance?.id}">
                                            <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                        </g:link>
                                    </sec:access>
                                    <sec:access url="/comBank/delete/${comBankInstance?.id}">
                                        <g:link class="btn btn-xs btn-danger" action="delete" id="${comBankInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
                                            <i class="fa fa-trash"></i> <g:message code="default.button.delete.label" default="Delete"/>
                                        </g:link>
                                    </sec:access>
                                </td>
                            </tr>
                        </g:each>
                    </g:if>
                    %{--<g:else>--}%
                        %{--<tr><td class="bold center" colspan="5"><g:message code="default.noRecordFound.label" default="No Record Found...!"/></td></tr>--}%
                    %{--</g:else>--}%
                    </tbody>
                </table>
                %{--
                <div class="pagination">
                    <g:paginate total="${comBankInstanceCount ?: 0}"/>
                </div>
                --}%
            </div><!-- /.box-body table-responsive no-padding -->
        </div><!-- /.box box-primary -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
</body>
</html>