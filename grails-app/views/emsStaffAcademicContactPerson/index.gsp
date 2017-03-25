
<%@ page import="org.reflection.ems.EmsStaffAcademicContactPerson" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'emsStaffAcademicContactPerson.pageTitle.label', default: 'Ems Staff Academic Contact Person')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">
            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.list.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/emsStaffAcademicContactPerson/create">
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
                                    <th>${message(code: 'emsStaffAcademicContactPerson.comContactPersonType.label', default: 'Com Contact Person Type')}</th>
                                    <th>${message(code: 'emsStaffAcademicContactPerson.comMaritalStatus.label', default: 'Com Marital Status')}</th>
                                    <th>${message(code: 'emsStaffAcademicContactPerson.addressPermanent.label', default: 'Address Permanent')}</th>
                                    <th>${message(code: 'emsStaffAcademicContactPerson.mobile.label', default: 'Mobile')}</th>
                                    <th>${message(code: 'emsStaffAcademicContactPerson.title.label', default: 'Title')}</th>
                                    <th>${message(code: 'emsStaffAcademicContactPerson.comLookupRefRelation.label', default: 'Com Lookup Ref Relation')}</th>
                                    <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:if test="${emsStaffAcademicContactPersonInstanceList}">
                                    <g:each in="${emsStaffAcademicContactPersonInstanceList}" status="i" var="emsStaffAcademicContactPersonInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                            <td class="left">${fieldValue(bean: emsStaffAcademicContactPersonInstance, field: "comContactPersonType")}</td>
                                            <td class="left">${fieldValue(bean: emsStaffAcademicContactPersonInstance, field: "comMaritalStatus")}</td>
                                            <td class="left">${fieldValue(bean: emsStaffAcademicContactPersonInstance, field: "addressPermanent")}</td>
                                            <td class="left">${fieldValue(bean: emsStaffAcademicContactPersonInstance, field: "mobile")}</td>
                                            <td class="left">${fieldValue(bean: emsStaffAcademicContactPersonInstance, field: "title")}</td>
                                            <td class="left">${fieldValue(bean: emsStaffAcademicContactPersonInstance, field: "comLookupRefRelation")}</td>
                                            <td class="center">
                                                <sec:access url="/emsStaffAcademicContactPerson/show/${emsStaffAcademicContactPersonInstance?.id}">
                                                    <g:link class="btn btn-xs btn-primary" action="show" id="${emsStaffAcademicContactPersonInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsStaffAcademicContactPerson/edit/${emsStaffAcademicContactPersonInstance?.id}">
                                                    <g:link class="btn btn-xs btn-warning" action="edit" id="${emsStaffAcademicContactPersonInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsStaffAcademicContactPerson/delete/${emsStaffAcademicContactPersonInstance?.id}">
                                                    <g:link class="btn btn-xs btn-danger" action="delete" id="${emsStaffAcademicContactPersonInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
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
                            <g:paginate total="${emsStaffAcademicContactPersonInstanceCount ?: 0}"/>
                        </div>
                        --}%
                    </div><!-- /.box-body table-responsive no-padding -->
                </div><!-- /.box box-primary -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
</html>