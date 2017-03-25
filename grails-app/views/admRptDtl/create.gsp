<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'admRptDtl.pageTitle.label', default: 'Adm Rpt Dtl')}"/>
        <title><g:message code="default.create.label" args="[entityName]"/></title>
    </head>
    <body>
        <div class="content-wrapper"><!-- Content Wrapper. Contains page content -->
            <section class="content-header"><!-- Content Header (Page header) -->
                <h1><g:message code="default.create.label" args="[entityName]"/></h1>
                <ul class="top-links">
                    <sec:access url="/admRptDtl/index">
                        <li>
                            <g:link class="btn btn-block btn-vimeo btn-xs" action="index">
                                <i class="fa fa-reorder"></i> <g:message code="default.button.list.label" default="List"/>
                            </g:link>
                        </li>
                    </sec:access>
                </ul>
            </section><!-- /.content-header -->

            <section class="flash-message">
                <g:render template="../layouts/flashMessage"/>
            </section><!--Flash Message-->

            <section class="content"><!-- Main content -->
                <div id="create-admRptDtl" class="box box-primary" role="main">
                    <g:form url="[resource: admRptDtlInstance, action: 'save']" method="POST" >
                        <div class="box-body">
                            <g:render template="form" model="${[admRptDtlInstance:admRptDtlInstance]}"/>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <fieldset class="buttons">
                                <sec:access url="/admRptDtl/create">
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> ${message(code: "default.button.create.label", default: "Save")}</button>
                                </sec:access>
                                <button type="reset"  class="btn btn-warning pull-right" onclick="return confirm('${message(code: "default.message.reset.label", default: "Sure, you want to reset all value...?")}');"><i class="fa fa-refresh"></i> ${message(code: "default.button.reset.label", default: "Reset")}</button>
                            </fieldset>
                        </div><!-- /.box-footer -->
                    </g:form>
                </div><!-- /.box box-primary -->
            </section><!-- /.content -->
        </div><!-- /.content-wrapper -->
    </body>
</html>