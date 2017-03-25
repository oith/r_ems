<%--
  Created by Reflection.
  AuthUser: hoshen.mahmud
  Date: 14-Oct-16
  Time: 8:01 PM
--%>

<%@ page import="org.reflection.auth.AuthUser" contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.pageTitle.label', default: 'AuthUser')}"/>
    <title><g:message code="user.profile.label" args="[entityName]"/></title>
</head>

<body>
<div class="content-wrapper">
    <section class="content-header">
        <h1><g:message code="user.profile.label" args="[entityName]"/></h1>
        <ul class="top-links">
            <sec:access url="/user/index">
                <li>
                    <g:link class="btn btn-xs btn-block btn-vimeo" action="index">
                        <i class="fa fa-reorder"></i> <g:message code="default.button.list.label" default="List"/>
                    </g:link>
                </li>
            </sec:access>
            <sec:access url="/user/create">
                <li>
                    <g:link class="btn btn-xs btn-block btn-primary" action="create">
                        <i class="fa fa-plus-circle "></i> <g:message code="default.button.new.label" default="New"/>
                    </g:link>
                </li>
            </sec:access>
            <sec:access url="/user/show/${userInstance?.id}">
                <li>
                    <g:link class="btn btn-xs btn-block btn-primary" action="show" id="${userInstance?.id}">
                        <i class="fa fa-fw fa-edit"></i> <g:message code="default.button.show.label" default="Show"/>
                    </g:link>
                </li>
            </sec:access>
            <sec:access url="/user/edit/${userInstance?.id}">
                <li>
                    <g:link class="btn btn-xs btn-block btn-warning" action="edit" id="${userInstance?.id}">
                        <i class="fa fa-fw fa-edit"></i><g:message code="default.button.edit.label" default="Edit"/>
                    </g:link>
                </li>
            </sec:access>
            <sec:access url="/user/delete/${userInstance?.id}">
                <li>
                    <g:link class="btn btn-xs btn-block btn-danger" action="delete" id="${userInstance?.id}"
                            onclick="return confirm('Are you sure you want to delete this record?');">
                        <i class="fa fa-trash"></i> <g:message code="default.button.delete.label" default="Delete"/>
                    </g:link>
                </li>
            </sec:access>
        </ul>
    </section><!-- /.content-header -->

    <section class="flash-message">
        <g:render template="../layouts/flashMessage"/>
    </section><!--Flash Message-->

    <section class="content"><!-- Main content -->
        <div id="profile-user" class="box box-primary" role="main">
            <g:form url="[resource: userInstance, action: 'profile']" method="POST" enctype="multipart/form-data">
                <div class="box-body">
                    <g:hiddenField name="version" value="${userInstance?.version}"/>
                    <g:render template="profileContent"/>
                </div><!-- /.box-body -->
                <div class="box-footer">
                    <fieldset class="buttons">
                        <sec:access url="/user/edit/${userInstance?.id}">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> ${message(code: "default.button.update.label", default: "Update")}</button>
                        </sec:access>
                        <sec:access url="/user/show/${userInstance?.id}">
                            <g:link class="btn btn-warning pull-right" action="show" id="${userInstance?.id}"><i class="fa fa-reply-all" aria-hidden="true"></i> ${message(code: "default.button.goBack.label", default: "Go Back")}</g:link>
                        </sec:access>
                    </fieldset>
                </div><!-- /.box-footer -->
            </g:form>
        </div><!-- /.box box-primary -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
</body>
</html>