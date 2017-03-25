
<%@ page import="org.reflection.ems.EmsApplicantDocument" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'emsApplicantDocument.pageTitle.label', default: 'Ems Applicant Document')}"/>
        <title><g:message code="default.list.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">
            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.list.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/emsApplicantDocument/create">
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
                                    <th>${message(code: 'emsApplicantDocument.emsApplicant.label', default: 'Ems Applicant')}</th>
                                    <th>${message(code: 'emsApplicantDocument.fileTitle.label', default: 'File Title')}</th>
                                    <th>${message(code: 'emsApplicantDocument.filePath.label', default: 'File Path')}</th>
                                    <th>${message(code: 'emsApplicantDocument.docType.label', default: 'Doc Type')}</th>
                                    <th>${message(code: 'emsApplicantDocument.isApproved.label', default: 'Is Approved')}</th>
                                    <th>${message(code: 'emsApplicantDocument.shortOrder.label', default: 'Short Order')}</th>
                                    <th>${message(code: 'default.button.action.label', default: 'Action')}</th>
                                </tr>
                            </thead>
                            <tbody>
                                <g:if test="${emsApplicantDocumentInstanceList}">
                                    <g:each in="${emsApplicantDocumentInstanceList}" status="i" var="emsApplicantDocumentInstance">
                                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                                            <td class="left">${fieldValue(bean: emsApplicantDocumentInstance, field: "emsApplicant")}</td>
                                            <td class="left">${fieldValue(bean: emsApplicantDocumentInstance, field: "fileTitle")}</td>
                                            <td class="left">${fieldValue(bean: emsApplicantDocumentInstance, field: "filePath")}</td>
                                            <td class="left">${fieldValue(bean: emsApplicantDocumentInstance, field: "docType")}</td>
                                            <td class="center"><g:formatBoolean boolean="${emsApplicantDocumentInstance.isApproved}" true="Yes" false="No"/></td>
                                            <td class="left">${fieldValue(bean: emsApplicantDocumentInstance, field: "shortOrder")}</td>
                                            <td class="center">
                                                <sec:access url="/emsApplicantDocument/show/${emsApplicantDocumentInstance?.id}">
                                                    <g:link class="btn btn-xs btn-primary" action="show" id="${emsApplicantDocumentInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsApplicantDocument/edit/${emsApplicantDocumentInstance?.id}">
                                                    <g:link class="btn btn-xs btn-warning" action="edit" id="${emsApplicantDocumentInstance?.id}">
                                                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                                                    </g:link>
                                                </sec:access>
                                                <sec:access url="/emsApplicantDocument/delete/${emsApplicantDocumentInstance?.id}">
                                                    <g:link class="btn btn-xs btn-danger" action="delete" id="${emsApplicantDocumentInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
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
                            <g:paginate total="${emsApplicantDocumentInstanceCount ?: 0}"/>
                        </div>
                        --}%
                    </div><!-- /.box-body table-responsive no-padding -->
                </div><!-- /.box box-primary -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
</html>