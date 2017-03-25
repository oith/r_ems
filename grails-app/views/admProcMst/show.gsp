
<%@ page import="org.reflection.adm.AdmProcMst" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'admProcMst.pageTitle.label', default: 'Adm Proc Mst')}"/>
        <title><g:message code="default.show.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">

            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.show.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/admProcMst/index">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-vimeo" action="index">
                                <i class="fa fa-reorder"></i> <g:message code="default.button.list.label" default="List"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/admProcMst/create">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-primary" action="create">
                                <i class="fa fa-plus-circle"></i> <g:message code="default.button.new.label" default="New"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/admProcMst/edit/${admProcMstInstance?.id}">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-warning" action="edit" id="${admProcMstInstance?.id}">
                                <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/admProcMst/delete/${admProcMstInstance?.id}">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-danger" action="delete" id="${admProcMstInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
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
                <fieldset class="admProcMst-show">
                    <div class="box box-primary">
                        <div class="box-body">
                            <div class="property-show">

                                %{--<g:if test="${admProcMstInstance?.title}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admProcMst.title.label" default="Title"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admProcMstInstance}" field="title"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admProcMstInstance?.itemType}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admProcMst.itemType.label" default="Item Type"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admProcMstInstance}" field="itemType"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admProcMstInstance?.code}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admProcMst.code.label" default="Code"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admProcMstInstance}" field="code"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admProcMstInstance?.isActive}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admProcMst.isActive.label" default="Is Active"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:formatBoolean boolean="${admProcMstInstance?.isActive}"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admProcMstInstance?.slNo}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admProcMst.slNo.label" default="Sl No"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admProcMstInstance}" field="slNo"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admProcMstInstance?.remarks}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admProcMst.remarks.label" default="Remarks"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admProcMstInstance}" field="remarks"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admProcMstInstance?.frqncyType}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admProcMst.frqncyType.label" default="Frqncy Type"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admProcMstInstance}" field="frqncyType"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admProcMstInstance?.runWith}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admProcMst.runWith.label" default="Run With"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admProcMstInstance}" field="runWith"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admProcMstInstance?.runModeType}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admProcMst.runModeType.label" default="Run Mode Type"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admProcMstInstance}" field="runModeType"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admProcMstInstance?.procTables}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admProcMst.procTables.label" default="Proc Tables"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admProcMstInstance}" field="procTables"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admProcMstInstance?.cmd}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admProcMst.cmd.label" default="Cmd"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admProcMstInstance}" field="cmd"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%
                            </div>
                        </div><!-- /.box-body -->
                    </div>  <!-- /.box box-primary -->
                </fieldset>

                
                <fieldset class="admProcMst-show">
                    <legend><g:message code="admProcMst.pageTitle.label" default="Adm Permissible Details"/></legend>

                    <div class="box box-info">
                        <g:if test="${admProcMstInstance?.admProcMst}">
                            <g:each in="${admProcMstInstance?.admProcMst}" var="admProcMstInstance">
                                <div class="box-body">
                                    
                                    %{--<g:if test="${admProcMstInstance?.title}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcMst.title.label" default="Title"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admProcMstInstance}" field="title"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcMstInstance?.itemType}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcMst.itemType.label" default="Item Type"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admProcMstInstance}" field="itemType"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcMstInstance?.code}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcMst.code.label" default="Code"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admProcMstInstance}" field="code"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcMstInstance?.parentAdmProcMst}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcMst.parentAdmProcMst.label" default="Parent Adm Permissible"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="admProcMst" action="show" id="${admProcMstInstance?.parentAdmProcMst?.id}">
                                                    ${admProcMstInstance?.parentAdmProcMst?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcMstInstance?.isActive}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcMst.isActive.label" default="Is Active"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:formatBoolean boolean="${admProcMstInstance?.isActive}"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcMstInstance?.slNo}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcMst.slNo.label" default="Sl No"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admProcMstInstance}" field="slNo"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcMstInstance?.remarks}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcMst.remarks.label" default="Remarks"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admProcMstInstance}" field="remarks"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcMstInstance?.admProcMst}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcMst.admProcMst.label" default="Adm Permissible"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <g:each in="${admProcMstInstance.admProcMst}" var="a">
                                            <span class="property-value">
                                                <g:link controller="admProcMst" action="show" id="${a.id}">
                                                    ${a?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            </g:each>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                </div>
                                <g:if test="${admProcMstInstance?.admProcMst?.size() > 0}"><hr></g:if>
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
                <fieldset class="admProcDtl-show">
                    <legend><g:message code="admProcDtl.pageTitle.label" default="Adm Proc Dtl Details"/></legend>

                    <div class="box box-info">
                        <g:if test="${admProcMstInstance?.admProcDtl}">
                            <g:each in="${admProcMstInstance?.admProcDtl}" var="admProcDtlInstance">
                                <div class="box-body">
                                    
                                    %{--<g:if test="${admProcDtlInstance?.admProcMst}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcDtl.admProcMst.label" default="Adm Proc Mst"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="admProcMst" action="show" id="${admProcDtlInstance?.admProcMst?.id}">
                                                    ${admProcDtlInstance?.admProcMst?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcDtlInstance?.zoneType}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcDtl.zoneType.label" default="Zone Type"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admProcDtlInstance}" field="zoneType"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcDtlInstance?.isActive}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcDtl.isActive.label" default="Is Active"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:formatBoolean boolean="${admProcDtlInstance?.isActive}"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcDtlInstance?.isMandatory}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcDtl.isMandatory.label" default="Is Mandatory"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:formatBoolean boolean="${admProcDtlInstance?.isMandatory}"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcDtlInstance?.slNo}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcDtl.slNo.label" default="Sl No"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admProcDtlInstance}" field="slNo"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcDtlInstance?.admParam}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcDtl.admParam.label" default="Adm Param"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="admParam" action="show" id="${admProcDtlInstance?.admParam?.id}">
                                                    ${admProcDtlInstance?.admParam?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcDtlInstance?.widgetType}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcDtl.widgetType.label" default="Widget Type"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admProcDtlInstance}" field="widgetType"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcDtlInstance?.widgetIdentity}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcDtl.widgetIdentity.label" default="Widget Identity"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admProcDtlInstance}" field="widgetIdentity"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcDtlInstance?.widgetLabel}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcDtl.widgetLabel.label" default="Widget Label"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admProcDtlInstance}" field="widgetLabel"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcDtlInstance?.defaultVal}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcDtl.defaultVal.label" default="Default Val"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admProcDtlInstance}" field="defaultVal"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcDtlInstance?.cmd}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcDtl.cmd.label" default="Cmd"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admProcDtlInstance}" field="cmd"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admProcDtlInstance?.helpText}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admProcDtl.helpText.label" default="Help Text"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admProcDtlInstance}" field="helpText"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                </div>
                                <g:if test="${admProcMstInstance?.admProcDtl?.size() > 0}"><hr></g:if>
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