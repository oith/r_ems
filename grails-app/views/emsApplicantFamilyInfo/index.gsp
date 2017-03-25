
<%@ page import="org.reflection.ems.EmsApplicantFamilyInfo" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'emsApplicantFamilyInfo.pageTitle.label', default: 'Ems Applicant Family Info')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">
            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.list.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/emsApplicantFamilyInfo/create">
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
                                    <th>${message(code: 'emsApplicantFamilyInfo.comMaritalStatus.label', default: 'Com Marital Status')}</th>
                                    <th>${message(code: 'emsApplicantFamilyInfo.mobile.label', default: 'Mobile')}</th>
                                    <th>${message(code: 'emsApplicantFamilyInfo.title.label', default: 'Title')}</th>
                                    <th>${message(code: 'emsApplicantFamilyInfo.comLookupRefRelation.label', default: 'Com Lookup Ref Relation')}</th>
                                    <th>${message(code: 'emsApplicantFamilyInfo.comProfession.label', default: 'Com Profession')}</th>
                                    <th>${message(code: 'emsApplicantFamilyInfo.email.label', default: 'Email')}</th>
                                    <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:if test="${emsApplicantFamilyInfoInstanceList}">
                                    <g:each in="${emsApplicantFamilyInfoInstanceList}" status="i" var="emsApplicantFamilyInfoInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                            <td class="left">${fieldValue(bean: emsApplicantFamilyInfoInstance, field: "comMaritalStatus")}</td>
                                            <td class="left">${fieldValue(bean: emsApplicantFamilyInfoInstance, field: "mobile")}</td>
                                            <td class="left">${fieldValue(bean: emsApplicantFamilyInfoInstance, field: "title")}</td>
                                            <td class="left">${fieldValue(bean: emsApplicantFamilyInfoInstance, field: "comLookupRefRelation")}</td>
                                            <td class="left">${fieldValue(bean: emsApplicantFamilyInfoInstance, field: "comProfession")}</td>
                                            <td class="left">${fieldValue(bean: emsApplicantFamilyInfoInstance, field: "email")}</td>
                                            <td class="center">
                                                <sec:access url="/emsApplicantFamilyInfo/show/${emsApplicantFamilyInfoInstance?.id}">
                                                    <g:link class="btn btn-xs btn-primary" action="show" id="${emsApplicantFamilyInfoInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsApplicantFamilyInfo/edit/${emsApplicantFamilyInfoInstance?.id}">
                                                    <g:link class="btn btn-xs btn-warning" action="edit" id="${emsApplicantFamilyInfoInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsApplicantFamilyInfo/delete/${emsApplicantFamilyInfoInstance?.id}">
                                                    <g:link class="btn btn-xs btn-danger" action="delete" id="${emsApplicantFamilyInfoInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
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
                            <g:paginate total="${emsApplicantFamilyInfoInstanceCount ?: 0}"/>
                        </div>
                        --}%
                    </div><!-- /.box-body table-responsive no-padding -->
                </div><!-- /.box box-primary -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
</html>