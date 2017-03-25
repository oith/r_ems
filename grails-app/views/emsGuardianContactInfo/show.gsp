
<%@ page import="org.reflection.ems.EmsGuardianContactInfo" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'emsGuardianContactInfo.pageTitle.label', default: 'Ems Guardian Contact Info')}"/>
        <title><g:message code="default.show.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">

            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.show.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/emsGuardianContactInfo/index">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-vimeo" action="index">
                                <i class="fa fa-reorder"></i> <g:message code="default.button.list.label" default="List"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/emsGuardianContactInfo/create">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-primary" action="create">
                                <i class="fa fa-plus-circle"></i> <g:message code="default.button.new.label" default="New"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/emsGuardianContactInfo/edit/${emsGuardianContactInfoInstance?.id}">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-warning" action="edit" id="${emsGuardianContactInfoInstance?.id}">
                                <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/emsGuardianContactInfo/delete/${emsGuardianContactInfoInstance?.id}">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-danger" action="delete" id="${emsGuardianContactInfoInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
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
                <fieldset class="emsGuardianContactInfo-show">
                    <div class="box box-primary">
                        <div class="box-body">
                            <div class="property-show">

                                %{--<g:if test="${emsGuardianContactInfoInstance?.comContactType}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardianContactInfo.comContactType.label" default="Com Contact Type"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianContactInfoInstance}" field="comContactType"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianContactInfoInstance?.contactValue}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardianContactInfo.contactValue.label" default="Contact Value"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianContactInfoInstance}" field="contactValue"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianContactInfoInstance?.slNo}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardianContactInfo.slNo.label" default="Sl No"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianContactInfoInstance}" field="slNo"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${emsGuardianContactInfoInstance?.imeiNo}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="emsGuardianContactInfo.imeiNo.label" default="Imei No"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${emsGuardianContactInfoInstance}" field="imeiNo"/>&nbsp;
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