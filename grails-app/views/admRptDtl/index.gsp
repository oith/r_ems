
<%@ page import="org.reflection.adm.AdmRptDtl" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'admRptDtl.pageTitle.label', default: 'Adm Rpt Dtl')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">
            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.list.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/admRptDtl/create">
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
                                    <th>${message(code: 'admRptDtl.admRptMst.label', default: 'Adm Rpt Mst')}</th>
                                    <th>${message(code: 'admRptDtl.isActive.label', default: 'Is Active')}</th>
                                    <th>${message(code: 'admRptDtl.isMandatory.label', default: 'Is Mandatory')}</th>
                                    <th>${message(code: 'admRptDtl.sortingOrder.label', default: 'Sorting Order')}</th>
                                    <th>${message(code: 'admRptDtl.admParam.label', default: 'Adm Param')}</th>
                                    <th>${message(code: 'admRptDtl.paramType.label', default: 'Param Type')}</th>
                                    <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:if test="${admRptDtlInstanceList}">
                                    <g:each in="${admRptDtlInstanceList}" status="i" var="admRptDtlInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                            <td class="left">${fieldValue(bean: admRptDtlInstance, field: "admRptMst")}</td>
                                            <td class="center"><g:formatBoolean boolean="${admRptDtlInstance.isActive}" true="Yes" false="No"/></td>
                                            <td class="center"><g:formatBoolean boolean="${admRptDtlInstance.isMandatory}" true="Yes" false="No"/></td>
                                            <td class="left">${fieldValue(bean: admRptDtlInstance, field: "sortingOrder")}</td>
                                            <td class="left">${fieldValue(bean: admRptDtlInstance, field: "admParam")}</td>
                                            <td class="left">${fieldValue(bean: admRptDtlInstance, field: "paramType")}</td>
                                            <td class="center">
                                                <sec:access url="/admRptDtl/show/${admRptDtlInstance?.id}">
                                                    <g:link class="btn btn-xs btn-primary" action="show" id="${admRptDtlInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/admRptDtl/edit/${admRptDtlInstance?.id}">
                                                    <g:link class="btn btn-xs btn-warning" action="edit" id="${admRptDtlInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/admRptDtl/delete/${admRptDtlInstance?.id}">
                                                    <g:link class="btn btn-xs btn-danger" action="delete" id="${admRptDtlInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
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
                            <g:paginate total="${admRptDtlInstanceCount ?: 0}"/>
                        </div>
                        --}%
                    </div><!-- /.box-body table-responsive no-padding -->
                </div><!-- /.box box-primary -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
</html>