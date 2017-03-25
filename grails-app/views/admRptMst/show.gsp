
<%@ page import="org.reflection.adm.AdmRptMst" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'admRptMst.pageTitle.label', default: 'Adm Rpt Mst')}"/>
        <title><g:message code="default.show.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper">

            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.show.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/admRptMst/index">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-vimeo" action="index">
                                <i class="fa fa-reorder"></i> <g:message code="default.button.list.label" default="List"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/admRptMst/create">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-primary" action="create">
                                <i class="fa fa-plus-circle"></i> <g:message code="default.button.new.label" default="New"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/admRptMst/edit/${admRptMstInstance?.id}">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-warning" action="edit" id="${admRptMstInstance?.id}">
                                <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.edit.label" default="Edit"/>
                            </g:link>
                        </li>
                    </sec:access>
                    <sec:access url="/admRptMst/delete/${admRptMstInstance?.id}">
                        <li>
                            <g:link class="btn btn-xs btn-block btn-danger" action="delete" id="${admRptMstInstance?.id}" onclick="return confirm('Are you sure you want to delete this record?');">
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
                <fieldset class="admRptMst-show">
                    <div class="box box-primary">
                        <div class="box-body">
                            <div class="property-show">

                                %{--<g:if test="${admRptMstInstance?.title}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admRptMst.title.label" default="Title"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admRptMstInstance}" field="title"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admRptMstInstance?.itemType}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admRptMst.itemType.label" default="Item Type"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admRptMstInstance}" field="itemType"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admRptMstInstance?.code}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admRptMst.code.label" default="Code"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admRptMstInstance}" field="code"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admRptMstInstance?.isActive}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admRptMst.isActive.label" default="Is Active"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:formatBoolean boolean="${admRptMstInstance?.isActive}"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admRptMstInstance?.slNo}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admRptMst.slNo.label" default="Sl No"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admRptMstInstance}" field="slNo"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admRptMstInstance?.remarks}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admRptMst.remarks.label" default="Remarks"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admRptMstInstance}" field="remarks"/>&nbsp;
                                        </span>
                                    </div>
                                </div>
                                %{--</g:if>--}%

                                %{--<g:if test="${admRptMstInstance?.fileName}">--}%
                                <div class="form-group">
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <span class="property-label bold">
                                            <g:message code="admRptMst.fileName.label" default="File Name"/>
                                        </span>
                                    </div>

                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                        <span class="property-value">
                                            <g:fieldValue bean="${admRptMstInstance}" field="fileName"/>&nbsp;
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
                        <g:if test="${admRptMstInstance?.admPermissible}">
                            <g:each in="${admRptMstInstance?.admPermissible}" var="admPermissibleInstance">
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
                                            
                                            <g:each in="${admRptMstInstance.admPermissible}" var="a">
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
                                <g:if test="${admRptMstInstance?.admPermissible?.size() > 0}"><hr></g:if>
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
                <fieldset class="admRptDtl-show">
                    <legend><g:message code="admRptDtl.pageTitle.label" default="Adm Rpt Dtl Details"/></legend>

                    <div class="box box-info">
                        <g:if test="${admRptMstInstance?.admRptDtl}">
                            <g:each in="${admRptMstInstance?.admRptDtl}" var="admRptDtlInstance">
                                <div class="box-body">
                                    
                                    %{--<g:if test="${admRptDtlInstance?.admRptMst}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admRptDtl.admRptMst.label" default="Adm Rpt Mst"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="admRptMst" action="show" id="${admRptDtlInstance?.admRptMst?.id}">
                                                    ${admRptDtlInstance?.admRptMst?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admRptDtlInstance?.isActive}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admRptDtl.isActive.label" default="Is Active"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:formatBoolean boolean="${admRptDtlInstance?.isActive}"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admRptDtlInstance?.isMandatory}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admRptDtl.isMandatory.label" default="Is Mandatory"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:formatBoolean boolean="${admRptDtlInstance?.isMandatory}"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admRptDtlInstance?.slNo}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admRptDtl.slNo.label" default="Sl No"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admRptDtlInstance}" field="slNo"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admRptDtlInstance?.admParam}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admRptDtl.admParam.label" default="Adm Param"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="admParam" action="show" id="${admRptDtlInstance?.admParam?.id}">
                                                    ${admRptDtlInstance?.admParam?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admRptDtlInstance?.paramType}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admRptDtl.paramType.label" default="Param Type"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admRptDtlInstance}" field="paramType"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admRptDtlInstance?.paramName}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admRptDtl.paramName.label" default="Param Name"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admRptDtlInstance}" field="paramName"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admRptDtlInstance?.title}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admRptDtl.title.label" default="Title"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admRptDtlInstance}" field="title"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admRptDtlInstance?.cmd}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admRptDtl.cmd.label" default="Cmd"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admRptDtlInstance}" field="cmd"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admRptDtlInstance?.defaultVal}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admRptDtl.defaultVal.label" default="Default Val"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admRptDtlInstance}" field="defaultVal"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admRptDtlInstance?.helpText}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admRptDtl.helpText.label" default="Help Text"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admRptDtlInstance}" field="helpText"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                </div>
                                <g:if test="${admRptMstInstance?.admRptDtl?.size() > 0}"><hr></g:if>
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
                <fieldset class="admRptFormat-show">
                    <legend><g:message code="admRptFormat.pageTitle.label" default="Adm Rpt Format Details"/></legend>

                    <div class="box box-info">
                        <g:if test="${admRptMstInstance?.admRptFormat}">
                            <g:each in="${admRptMstInstance?.admRptFormat}" var="admRptFormatInstance">
                                <div class="box-body">
                                    
                                    %{--<g:if test="${admRptFormatInstance?.admRptMst}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admRptFormat.admRptMst.label" default="Adm Rpt Mst"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            
                                            <span class="property-value">
                                                <g:link controller="admRptMst" action="show" id="${admRptFormatInstance?.admRptMst?.id}">
                                                    ${admRptFormatInstance?.admRptMst?.encodeAsHTML()}&nbsp;
                                                </g:link>
                                            </span>
                                            
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                    %{--<g:if test="${admRptFormatInstance?.reportFormat}">--}%
                                    <div class="form-group">
                                        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                            <span class="property-label bold">
                                                <g:message code="admRptFormat.reportFormat.label" default="Report Format"/>
                                            </span>
                                        </div>

                                        <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                            <span class="property-value">
                                                <g:fieldValue bean="${admRptFormatInstance}" field="reportFormat"/>&nbsp;
                                            </span>
                                        </div>
                                    </div>
                                    %{--</g:if>--}%
                                    
                                </div>
                                <g:if test="${admRptMstInstance?.admRptFormat?.size() > 0}"><hr></g:if>
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