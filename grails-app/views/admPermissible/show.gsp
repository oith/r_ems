
<%@ page import="org.reflection.adm.AdmPermissible" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'admPermissible.pageTitle.label', default: 'Adm Permissible')}"/>
        <title><g:message code="default.show.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">

            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.show.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/admPermissible/index">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-vimeo" action="index">
                                <i class="fa fa-reorder"></i> <g:message code="default.button.list.label" default="List"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/admPermissible/create">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-primary" action="create">
                                <i class="fa fa-plus-circle"></i> <g:message code="default.button.new.label" default="New"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/admPermissible/edit/${admPermissibleInstance?.id}">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-warning" action="edit" id="${admPermissibleInstance?.id}">
                                <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/admPermissible/delete/${admPermissibleInstance?.id}">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-danger" action="delete" id="${admPermissibleInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
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
                <fieldset class="admPermissible-show">
                    <div class="box box-primary">
                        <div class="box-body">
                            <div class="property-show">

                                %{--<g:if test="${admPermissibleInstance?.title}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admPermissible.title.label" default="Title"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admPermissibleInstance}" field="title"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admPermissibleInstance?.itemType}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admPermissible.itemType.label" default="Item Type"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admPermissibleInstance}" field="itemType"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admPermissibleInstance?.code}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admPermissible.code.label" default="Code"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admPermissibleInstance}" field="code"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admPermissibleInstance?.isActive}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admPermissible.isActive.label" default="Is Active"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:formatBoolean boolean="${admPermissibleInstance?.isActive}"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admPermissibleInstance?.slNo}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admPermissible.slNo.label" default="Sl No"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admPermissibleInstance}" field="slNo"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admPermissibleInstance?.remarks}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admPermissible.remarks.label" default="Remarks"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admPermissibleInstance}" field="remarks"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%
                            </div>
                        </div><!-- /.box-body -->
                    </div>  <!-- /.box box-primary -->
                </fieldset>

                
                <fieldset class="admPermissible-show">
                    <legend><g:message code="admPermissible.pageTitle.label" default="Adm Permissible Details"/></legend>

                    <div class="box box-info">
                        <g:if test="${admPermissibleInstance?.admPermissible}">
                            <g:each in="${admPermissibleInstance?.admPermissible}" var="admPermissibleInstance">
                                <div class="box-body">
                                    
                                    %{--<g:if test="${admPermissibleInstance?.title}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admPermissible.title.label" default="Title"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admPermissibleInstance}" field="title"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admPermissibleInstance?.itemType}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admPermissible.itemType.label" default="Item Type"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admPermissibleInstance}" field="itemType"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admPermissibleInstance?.code}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admPermissible.code.label" default="Code"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admPermissibleInstance}" field="code"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admPermissibleInstance?.parentAdmPermissible}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admPermissible.parentAdmPermissible.label" default="Parent Adm Permissible"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="admPermissible" action="show" id="${admPermissibleInstance?.parentAdmPermissible?.id}">
                                                    ${admPermissibleInstance?.parentAdmPermissible?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admPermissibleInstance?.isActive}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admPermissible.isActive.label" default="Is Active"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:formatBoolean boolean="${admPermissibleInstance?.isActive}"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admPermissibleInstance?.slNo}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admPermissible.slNo.label" default="Sl No"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admPermissibleInstance}" field="slNo"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admPermissibleInstance?.remarks}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admPermissible.remarks.label" default="Remarks"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admPermissibleInstance}" field="remarks"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admPermissibleInstance?.admPermissible}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admPermissible.admPermissible.label" default="Adm Permissible"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <g:each in="${admPermissibleInstance.admPermissible}" var="a">
                                            <span class="property-value">
                                                <g:link controller="admPermissible" action="show" id="${a.id}">
                                                    ${a?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            </g:each>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                </div>
                                <g:if test="${admPermissibleInstance?.admPermissible?.size() > 0}"><hr></g:if>
                            </g:each>
                        </g:if>
                        <g:else>
                            <div class="box-body">
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <span class="property-label bold center">
                                            <g:message code="default.noRecordFound.label" default="No Record Found...!"/>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </g:else>
                    </div>
                </fieldset>
            </section><!-- /.content -->
        </div>
    </body>
</html>