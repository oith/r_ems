
<%@ page import="org.reflection.ems.EmsMarks" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'emsMarks.pageTitle.label', default: 'Ems Marks')}"/>
        <title><g:message code="default.show.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">

            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.show.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/emsMarks/index">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-vimeo" action="index">
                                <i class="fa fa-reorder"></i> <g:message code="default.button.list.label" default="List"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/emsMarks/create">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-primary" action="create">
                                <i class="fa fa-plus-circle"></i> <g:message code="default.button.new.label" default="New"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/emsMarks/edit/${emsMarksInstance?.id}">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-warning" action="edit" id="${emsMarksInstance?.id}">
                                <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/emsMarks/delete/${emsMarksInstance?.id}">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-danger" action="delete" id="${emsMarksInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
                                <i class="fa fa-trash"></i> <g:message code="default.button.delete.label" default="Delete"/>
                            </g:link>
                        </li>
                    </sec:access>
                </ul>
            </section><!-- /.content-header -->

            <section class="flash-message">
                <g:render template="../layouts/flashMessage"/>
            </section><!--Flash Message-->

            <section class="content show-page"><!-- Main content -->
                <fieldset class="emsMarks-show">
                    <div class="box box-primary">
                        <div class="box-body">
                            <div class="property-show">

                                %{--<g:if test="${emsMarksInstance?.emsClass}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsMarks.emsClass.label" default="Ems Class"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsMarksInstance}" field="emsClass"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsMarksInstance?.emsSubject}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsMarks.emsSubject.label" default="Ems Subject"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsMarksInstance}" field="emsSubject"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsMarksInstance?.emsTypeExam}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsMarks.emsTypeExam.label" default="Ems Type Exam"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsMarksInstance}" field="emsTypeExam"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsMarksInstance?.emsYear}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsMarks.emsYear.label" default="Ems Year"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsMarksInstance}" field="emsYear"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsMarksInstance?.marks}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsMarks.marks.label" default="Marks"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsMarksInstance}" field="marks"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsMarksInstance?.remarks}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsMarks.remarks.label" default="Remarks"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsMarksInstance}" field="remarks"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%
                            </div>
                        </div><!-- /.box-body -->
                    </div>  <!-- /.box box-primary -->
                </fieldset>

                
            </section><!-- /.content -->
        </div>
    </body>
</html>