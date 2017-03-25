
<%@ page import="org.reflection.ems.EmsApplicantEducationInfo" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'emsApplicantEducationInfo.pageTitle.label', default: 'Ems Applicant Education Info')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">
            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.list.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/emsApplicantEducationInfo/create">
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
                                    <th>${message(code: 'emsApplicantEducationInfo.emsApplicant.label', default: 'Ems Applicant')}</th>
                                    <th>${message(code: 'emsApplicantEducationInfo.emsClass.label', default: 'Ems Class')}</th>
                                    <th>${message(code: 'emsApplicantEducationInfo.titleOfInstitute.label', default: 'Title Of Institute')}</th>
                                    <th>${message(code: 'emsApplicantEducationInfo.passingYear.label', default: 'Passing Year')}</th>
                                    <th>${message(code: 'emsApplicantEducationInfo.result.label', default: 'Result')}</th>
                                    <th>${message(code: 'emsApplicantEducationInfo.resultOutOf.label', default: 'Result Out Of')}</th>
                                    <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:if test="${emsApplicantEducationInfoInstanceList}">
                                    <g:each in="${emsApplicantEducationInfoInstanceList}" status="i" var="emsApplicantEducationInfoInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                            <td class="left">${fieldValue(bean: emsApplicantEducationInfoInstance, field: "emsApplicant")}</td>
                                            <td class="left">${fieldValue(bean: emsApplicantEducationInfoInstance, field: "emsClass")}</td>
                                            <td class="left">${fieldValue(bean: emsApplicantEducationInfoInstance, field: "titleOfInstitute")}</td>
                                            <td class="right"><g:formatNumber format="##,##,##,##,###.####" number="${emsApplicantEducationInfoInstance.passingYear}"/></td>
                                            <td class="left">${fieldValue(bean: emsApplicantEducationInfoInstance, field: "result")}</td>
                                            <td class="left">${fieldValue(bean: emsApplicantEducationInfoInstance, field: "resultOutOf")}</td>
                                            <td class="center">
                                                <sec:access url="/emsApplicantEducationInfo/show/${emsApplicantEducationInfoInstance?.id}">
                                                    <g:link class="btn btn-xs btn-primary" action="show" id="${emsApplicantEducationInfoInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsApplicantEducationInfo/edit/${emsApplicantEducationInfoInstance?.id}">
                                                    <g:link class="btn btn-xs btn-warning" action="edit" id="${emsApplicantEducationInfoInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsApplicantEducationInfo/delete/${emsApplicantEducationInfoInstance?.id}">
                                                    <g:link class="btn btn-xs btn-danger" action="delete" id="${emsApplicantEducationInfoInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
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
                            <g:paginate total="${emsApplicantEducationInfoInstanceCount ?: 0}"/>
                        </div>
                        --}%
                    </div><!-- /.box-body table-responsive no-padding -->
                </div><!-- /.box box-primary -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
</html>