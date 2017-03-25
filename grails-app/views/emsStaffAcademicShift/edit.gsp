<%@ page import="org.reflection.ems.EmsStaffAcademicShift" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'emsStaffAcademicShift.pageTitle.label', default: 'Ems Staff Academic Shift')}"/>
        <title><g:message code="default.edit.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper"><!-- Content Wrapper. Contains page content -->
            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.edit.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/emsStaffAcademicShift/index">
                        <li>
                            <g:link class="btn btn-block btn-vimeo btn-xs" action="index">
                                <i class="fa fa-reorder"></i> <g:message code="default.button.list.label" default="List"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/emsStaffAcademicShift/create">
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
                <div id="edit-emsStaffAcademicShift" class="box box-primary" role="main">
                    <g:form url="[resource: emsStaffAcademicShiftInstance, action: 'update']" method="PUT" >
                        <div class="box-body">
                            <g:hiddenField name="version" value="${emsStaffAcademicShiftInstance?.version}" />
                            <g:render template="form" model="${[emsStaffAcademicShiftInstance:emsStaffAcademicShiftInstance]}"/>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <fieldset class="buttons">
                                <sec:access url="/emsStaffAcademicShift/edit/${emsStaffAcademicShiftInstance?.id}">
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> ${message(code: "default.button.update.label", default: "Update")}</button>
                                </sec:access>
                                <sec:access url="/emsStaffAcademicShift/show/${emsStaffAcademicShiftInstance?.id}">
                                    <g:link class="btn btn-warning pull-right" action="show" id="${emsStaffAcademicShiftInstance?.id}"><i class="fa fa-reply-all" aria-hidden="true"></i> ${message(code: "default.button.goBack.label", default: "Go Back")}</g:link>
                                </sec:access>
                            </fieldset>
                        </div><!-- /.box-footer -->
                    </g:form>
                </div><!-- /.box box-primary -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
</html>