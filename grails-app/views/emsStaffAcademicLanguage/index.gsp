
<%@ page import="org.reflection.ems.EmsStaffAcademicLanguage" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'emsStaffAcademicLanguage.pageTitle.label', default: 'Ems Staff Academic Language')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">
            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.list.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/emsStaffAcademicLanguage/create">
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
                                    <th>${message(code: 'emsStaffAcademicLanguage.comLookupLanguage.label', default: 'Com Lookup Language')}</th>
                                    <th>${message(code: 'emsStaffAcademicLanguage.sortingOrder.label', default: 'Sorting Order')}</th>
                                    <th>${message(code: 'emsStaffAcademicLanguage.remarks.label', default: 'Remarks')}</th>
                                    <th>${message(code: 'emsStaffAcademicLanguage.readingValue.label', default: 'Reading Value')}</th>
                                    <th>${message(code: 'emsStaffAcademicLanguage.speakingValue.label', default: 'Speaking Value')}</th>
                                    <th>${message(code: 'emsStaffAcademicLanguage.understandingValue.label', default: 'Understanding Value')}</th>
                                    <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:if test="${emsStaffAcademicLanguageInstanceList}">
                                    <g:each in="${emsStaffAcademicLanguageInstanceList}" status="i" var="emsStaffAcademicLanguageInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                            <td class="left">${fieldValue(bean: emsStaffAcademicLanguageInstance, field: "comLookupLanguage")}</td>
                                            <td class="left">${fieldValue(bean: emsStaffAcademicLanguageInstance, field: "sortingOrder")}</td>
                                            <td class="left">${fieldValue(bean: emsStaffAcademicLanguageInstance, field: "remarks")}</td>
                                            <td class="right"><g:formatNumber format="##,##,##,##,###.####" number="${emsStaffAcademicLanguageInstance.readingValue}"/></td>
                                            <td class="right"><g:formatNumber format="##,##,##,##,###.####" number="${emsStaffAcademicLanguageInstance.speakingValue}"/></td>
                                            <td class="right"><g:formatNumber format="##,##,##,##,###.####" number="${emsStaffAcademicLanguageInstance.understandingValue}"/></td>
                                            <td class="center">
                                                <sec:access url="/emsStaffAcademicLanguage/show/${emsStaffAcademicLanguageInstance?.id}">
                                                    <g:link class="btn btn-xs btn-primary" action="show" id="${emsStaffAcademicLanguageInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsStaffAcademicLanguage/edit/${emsStaffAcademicLanguageInstance?.id}">
                                                    <g:link class="btn btn-xs btn-warning" action="edit" id="${emsStaffAcademicLanguageInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsStaffAcademicLanguage/delete/${emsStaffAcademicLanguageInstance?.id}">
                                                    <g:link class="btn btn-xs btn-danger" action="delete" id="${emsStaffAcademicLanguageInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
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
                            <g:paginate total="${emsStaffAcademicLanguageInstanceCount ?: 0}"/>
                        </div>
                        --}%
                    </div><!-- /.box-body table-responsive no-padding -->
                </div><!-- /.box box-primary -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
</html>