
<%@ page import="org.reflection.ems.EmsGuardianContactInfo" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'emsGuardianContactInfo.pageTitle.label', default: 'Ems Guardian Contact Info')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">
            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.list.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/emsGuardianContactInfo/create">
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
                                    <th>${message(code: 'emsGuardianContactInfo.comContactType.label', default: 'Com Contact Type')}</th>
                                    <th>${message(code: 'emsGuardianContactInfo.contactValue.label', default: 'Contact Value')}</th>
                                    <th>${message(code: 'emsGuardianContactInfo.slNo.label', default: 'Sl No')}</th>
                                    <th>${message(code: 'emsGuardianContactInfo.imeiNo.label', default: 'Imei No')}</th>
                                    <th>${message(code: 'emsGuardianContactInfo.emsGuardian.label', default: 'Ems Guardian')}</th>
                                    <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:if test="${emsGuardianContactInfoInstanceList}">
                                    <g:each in="${emsGuardianContactInfoInstanceList}" status="i" var="emsGuardianContactInfoInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                            <td class="left">${fieldValue(bean: emsGuardianContactInfoInstance, field: "comContactType")}</td>
                                            <td class="left">${fieldValue(bean: emsGuardianContactInfoInstance, field: "contactValue")}</td>
                                            <td class="left">${fieldValue(bean: emsGuardianContactInfoInstance, field: "slNo")}</td>
                                            <td class="left">${fieldValue(bean: emsGuardianContactInfoInstance, field: "imeiNo")}</td>
                                            <td class="left">${fieldValue(bean: emsGuardianContactInfoInstance, field: "emsGuardian")}</td>
                                            <td class="center">
                                                <sec:access url="/emsGuardianContactInfo/show/${emsGuardianContactInfoInstance?.id}">
                                                    <g:link class="btn btn-xs btn-primary" action="show" id="${emsGuardianContactInfoInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsGuardianContactInfo/edit/${emsGuardianContactInfoInstance?.id}">
                                                    <g:link class="btn btn-xs btn-warning" action="edit" id="${emsGuardianContactInfoInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsGuardianContactInfo/delete/${emsGuardianContactInfoInstance?.id}">
                                                    <g:link class="btn btn-xs btn-danger" action="delete" id="${emsGuardianContactInfoInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
                                                        <i class="fa fa-trash"></i> <g:message code="default.button.delete.label" default="Delete"/>
                                                    </g:link>
                                                </sec:access>
                                            </td>
                                        </tr>
                                    </g:each>
                                </g:if>
                                <g:else>
                                    <tr><td class="bold center" colspan="6"><g:message code="default.noRecordFound.label" default="No Record Found...!"/></td></tr>
                                </g:else>
                            </tbody>
                        </table>
                        %{--
                        <div class="pagination">
                            <g:paginate total="${emsGuardianContactInfoInstanceCount ?: 0}"/>
                        </div>
                        --}%
                    </div><!-- /.box-body table-responsive no-padding -->
                </div><!-- /.box box-primary -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
</html>