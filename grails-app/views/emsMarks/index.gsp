
<%@ page import="org.reflection.ems.EmsMarks" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'emsMarks.pageTitle.label', default: 'Ems Marks')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">
            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.list.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/emsMarks/create">
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
                                    <th>${message(code: 'emsMarks.emsStaffAcademic.label', default: 'Ems Staff Academic')}</th>
                                    <th>${message(code: 'emsMarks.emsClass.label', default: 'Ems Class')}</th>
                                    <th>${message(code: 'emsMarks.emsStudent.label', default: 'Ems Student')}</th>
                                    <th>${message(code: 'emsMarks.emsSubject.label', default: 'Ems Subject')}</th>
                                    <th>${message(code: 'emsMarks.emsTypeExam.label', default: 'Ems Type Exam')}</th>
                                    <th>${message(code: 'emsMarks.emsYear.label', default: 'Ems Year')}</th>
                                    <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:if test="${emsMarksInstanceList}">
                                    <g:each in="${emsMarksInstanceList}" status="i" var="emsMarksInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                            <td class="left">${fieldValue(bean: emsMarksInstance, field: "emsStaffAcademic")}</td>
                                            <td class="left">${fieldValue(bean: emsMarksInstance, field: "emsClass")}</td>
                                            <td class="left">${fieldValue(bean: emsMarksInstance, field: "emsStudent")}</td>
                                            <td class="left">${fieldValue(bean: emsMarksInstance, field: "emsSubject")}</td>
                                            <td class="left">${fieldValue(bean: emsMarksInstance, field: "emsTypeExam")}</td>
                                            <td class="left">${fieldValue(bean: emsMarksInstance, field: "emsYear")}</td>
                                            <td class="center">
                                                <sec:access url="/emsMarks/show/${emsMarksInstance?.id}">
                                                    <g:link class="btn btn-xs btn-primary" action="show" id="${emsMarksInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsMarks/edit/${emsMarksInstance?.id}">
                                                    <g:link class="btn btn-xs btn-warning" action="edit" id="${emsMarksInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsMarks/delete/${emsMarksInstance?.id}">
                                                    <g:link class="btn btn-xs btn-danger" action="delete" id="${emsMarksInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
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
                            <g:paginate total="${emsMarksInstanceCount ?: 0}"/>
                        </div>
                        --}%
                    </div><!-- /.box-body table-responsive no-padding -->
                </div><!-- /.box box-primary -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
</html>