<%@ page import="org.reflection.ems.EmsApplicant" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'emsApplicant.pageTitle.label', default: 'Ems Applicant')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="content-wrapper">
    <section class="content-header"><!-- Content Header (Page header) -->
        <h1><g:message code="default.list.label" args="[entityName]"/></h1>
        <ul class="top-links">
            <sec:access url="/emsApplicant/create">
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
                        <th>${message(code: 'emsApplicant.comGender.label', default: 'Com Gender')}</th>
                        <th>${message(code: 'emsApplicant.comReligion.label', default: 'Com Religion')}</th>
                        <th>${message(code: 'emsApplicant.comTitle.label', default: 'Com Title')}</th>
                        <th>${message(code: 'emsApplicant.dob.label', default: 'Dob')}</th>
                        <th>${message(code: 'emsApplicant.fullName.label', default: 'Full Name')}</th>
                        <th>${message(code: 'emsApplicant.comBloodGroup.label', default: 'Com Blood Group')}</th>
                        <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:if test="${emsApplicantInstanceList}">
                        <g:each in="${emsApplicantInstanceList}" status="i" var="emsApplicantInstance">
                            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                <td class="left">${fieldValue(bean: emsApplicantInstance, field: "comGender")}</td>
                                <td class="left">${fieldValue(bean: emsApplicantInstance, field: "comReligion")}</td>
                                <td class="left">${fieldValue(bean: emsApplicantInstance, field: "comTitle")}</td>
                                <td class="center"><g:formatDate format="${grailsApplication.config.format.dtp.date}" date="${emsApplicantInstance.dob}"/></td>
                                <td class="left">${fieldValue(bean: emsApplicantInstance, field: "fullName")}</td>
                                <td class="left">${fieldValue(bean: emsApplicantInstance, field: "comBloodGroup")}</td>
                                <td class="center">
                                    <sec:access url="/emsApplicant/show/${emsApplicantInstance?.id}">
                                        <g:link class="btn btn-xs btn-primary" action="show" id="${emsApplicantInstance?.id}">
                                            <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                        </g:link>
                                    </sec:access>
                                    <sec:access url="/emsApplicant/edit/${emsApplicantInstance?.id}">
                                        <g:link class="btn btn-xs btn-warning" action="edit" id="${emsApplicantInstance?.id}">
                                            <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                        </g:link>
                                    </sec:access>
                                    <sec:access url="/emsApplicant/delete/${emsApplicantInstance?.id}">
                                        <g:link class="btn btn-xs btn-danger" action="delete" id="${emsApplicantInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
                                            <i class="fa fa-trash"></i> <g:message code="default.button.delete.label" default="Delete"/>
                                        </g:link>
                                    </sec:access>
                                </td>
                            </tr>
                        </g:each>
                    </g:if>
                    %{--<g:else>--}%
                    %{--<tr><td class="bold center" colspan="7"><g:message code="default.noRecordFound.label" default="No Record Found...!"/></td></tr>--}%
                    %{--</g:else>--}%
                    </tbody>
                </table>
                %{--
                <div class="pagination">
                    <g:paginate total="${emsApplicantInstanceCount ?: 0}"/>
                </div>
                --}%
            </div><!-- /.box-body table-responsive no-padding -->
        </div><!-- /.box box-primary -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
</body>
</html>