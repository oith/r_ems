
<%@ page import="org.reflection.ems.EmsStaffAcademicSubject" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'emsStaffAcademicSubject.pageTitle.label', default: 'Ems Staff Academic Subject')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">
            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.list.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/emsStaffAcademicSubject/create">
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
                                    <th>${message(code: 'emsStaffAcademicSubject.emsStaffAcademic.label', default: 'Ems Staff Academic')}</th>
                                    <th>${message(code: 'emsStaffAcademicSubject.emsSubject.label', default: 'Ems Subject')}</th>
                                    <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:if test="${emsStaffAcademicSubjectInstanceList}">
                                    <g:each in="${emsStaffAcademicSubjectInstanceList}" status="i" var="emsStaffAcademicSubjectInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                            <td class="left">${fieldValue(bean: emsStaffAcademicSubjectInstance, field: "emsStaffAcademic")}</td>
                                            <td class="left">${fieldValue(bean: emsStaffAcademicSubjectInstance, field: "emsSubject")}</td>
                                            <td class="center">
                                                <sec:access url="/emsStaffAcademicSubject/show/${emsStaffAcademicSubjectInstance?.id}">
                                                    <g:link class="btn btn-xs btn-primary" action="show" id="${emsStaffAcademicSubjectInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsStaffAcademicSubject/edit/${emsStaffAcademicSubjectInstance?.id}">
                                                    <g:link class="btn btn-xs btn-warning" action="edit" id="${emsStaffAcademicSubjectInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsStaffAcademicSubject/delete/${emsStaffAcademicSubjectInstance?.id}">
                                                    <g:link class="btn btn-xs btn-danger" action="delete" id="${emsStaffAcademicSubjectInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
                                                        <i class="fa fa-trash"></i> <g:message code="default.button.delete.label" default="Delete"/>
                                                    </g:link>
                                                </sec:access>
                                            </td>
                                        </tr>
                                    </g:each>
                                </g:if>
                                <g:else>
                                    <tr><td class="bold center" colspan="3"><g:message code="default.noRecordFound.label" default="No Record Found...!"/></td></tr>
                                </g:else>
                            </tbody>
                        </table>
                        %{--
                        <div class="pagination">
                            <g:paginate total="${emsStaffAcademicSubjectInstanceCount ?: 0}"/>
                        </div>
                        --}%
                    </div><!-- /.box-body table-responsive no-padding -->
                </div><!-- /.box box-primary -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
</html>