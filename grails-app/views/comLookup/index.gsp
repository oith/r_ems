<%@ page import="org.reflection.com.ComLookup" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'comLookup.pageTitle.label', default: 'Com Lookup')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="content-wrapper">
    <section class="content-header"><!-- Content Header (Page header) -->
        <h1><g:message code="default.list.label" args="[entityName]"/></h1>
        <ul class="top-links">
            <sec:access url="/comLookup/create">
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
                        <th>${message(code: 'comLookup.title.label', default: 'Title')}</th>
                        <th>${message(code: 'comLookup.keyword.label', default: 'Keyword')}</th>
                        <th>${message(code: 'comLookup.comLookupType.label', default: 'Com Lookup Type')}</th>
                        <th>${message(code: 'comLookup.sortOrder.label', default: 'Sort Order')}</th>
                        <th>${message(code: 'comLookup.isActive.label', default: 'Is Active')}</th>
                        <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:if test="${comLookupInstanceList}">
                        <g:each in="${comLookupInstanceList}" status="i" var="comLookupInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                <td class="left">${fieldValue(bean: comLookupInstance, field: "title")}</td>
                                <td class="left">${fieldValue(bean: comLookupInstance, field: "keyword")}</td>
                                <td class="left">${fieldValue(bean: comLookupInstance, field: "comLookupType")}</td>
                                <td class="right"><g:formatNumber format="##,##,##,##,###.####" number="${comLookupInstance.sortOrder}"/></td>
                                <td class="center"><g:formatBoolean boolean="${comLookupInstance.isActive}" true="Yes" false="No"/></td>
                                <td class="center">
                                    <sec:access url="/comLookup/show/${comLookupInstance?.id}">
                                        <g:link class="btn btn-xs btn-primary" action="show" id="${comLookupInstance?.id}">
                                            <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                        </g:link>
                                    </sec:access>
                                    <sec:access url="/comLookup/edit/${comLookupInstance?.id}">
                                        <g:link class="btn btn-xs btn-warning" action="edit" id="${comLookupInstance?.id}">
                                            <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                        </g:link>
                                    </sec:access>
                                    <sec:access url="/comLookup/delete/${comLookupInstance?.id}">
                                        <g:link class="btn btn-xs btn-danger" action="delete" id="${comLookupInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
                                            <i class="fa fa-trash"></i> <g:message code="default.button.delete.label" default="Delete"/>
                                        </g:link>
                                    </sec:access>
                                </td>
                            </tr>
                        </g:each>
                    </g:if>
                    %{--<g:else>--}%
                    %{--<tr><td class="bold center" colspan="6"><g:message code="default.noRecordFound.label" default="No Record Found...!"/></td></tr>--}%
                    %{--</g:else>--}%
                    </tbody>
                </table>
                %{--
                <div class="pagination">
                    <g:paginate total="${comLookupInstanceCount ?: 0}"/>
                </div>
                --}%
            </div><!-- /.box-body table-responsive no-padding -->
        </div><!-- /.box box-primary -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
</body>
</html>