
<%@ page import="org.reflection.ems.EmsGuardian" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'emsGuardian.pageTitle.label', default: 'Ems Guardian')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">
            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.list.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/emsGuardian/create">
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
                                    <th>${message(code: 'emsGuardian.comGender.label', default: 'Com Gender')}</th>
                                    <th>${message(code: 'emsGuardian.comReligion.label', default: 'Com Religion')}</th>
                                    <th>${message(code: 'emsGuardian.comTitle.label', default: 'Com Title')}</th>
                                    <th>${message(code: 'emsGuardian.dob.label', default: 'Dob')}</th>
                                    <th>${message(code: 'emsGuardian.fullName.label', default: 'Full Name')}</th>
                                    <th>${message(code: 'emsGuardian.comBloodGroup.label', default: 'Com Blood Group')}</th>
                                    <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:if test="${emsGuardianInstanceList}">
                                    <g:each in="${emsGuardianInstanceList}" status="i" var="emsGuardianInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                            <td class="left">${fieldValue(bean: emsGuardianInstance, field: "comGender")}</td>
                                            <td class="left">${fieldValue(bean: emsGuardianInstance, field: "comReligion")}</td>
                                            <td class="left">${fieldValue(bean: emsGuardianInstance, field: "comTitle")}</td>
                                            <td class="center"><g:formatDate format="${grailsApplication.config.format.dtp.date}" date="${emsGuardianInstance.dob}"/></td>
                                            <td class="left">${fieldValue(bean: emsGuardianInstance, field: "fullName")}</td>
                                            <td class="left">${fieldValue(bean: emsGuardianInstance, field: "comBloodGroup")}</td>
                                            <td class="center">
                                                <sec:access url="/emsGuardian/show/${emsGuardianInstance?.id}">
                                                    <g:link class="btn btn-xs btn-primary" action="show" id="${emsGuardianInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsGuardian/edit/${emsGuardianInstance?.id}">
                                                    <g:link class="btn btn-xs btn-warning" action="edit" id="${emsGuardianInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsGuardian/delete/${emsGuardianInstance?.id}">
                                                    <g:link class="btn btn-xs btn-danger" action="delete" id="${emsGuardianInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
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
                            <g:paginate total="${emsGuardianInstanceCount ?: 0}"/>
                        </div>
                        --}%
                    </div><!-- /.box-body table-responsive no-padding -->
                </div><!-- /.box box-primary -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
</html>