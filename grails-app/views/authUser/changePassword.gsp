<%--
  Created by Reflection.
  AuthUser: saif_hmk@live.com
  Date: 2016.10.08
  Time: 11:31 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title>Change Password</title>
</head>

<body>

<div class="content-wrapper">

    <section class="content-header">
        <h1>
            Change Password
            <small>Change Your Password</small>
        </h1>
        <ul class="top-links">
            %{--<li><g:link class="btn btn-block btn-primary btn-xs" url="/"><i class="fa fa-home"></i>Home</g:link></li>--}%
            %{-- <li><g:link class="btn btn-block btn-primary btn-xs" action="list"><i class="fa fa-reorder"></i>AuthUser list</g:link></li>--}%
        </ul>
    </section><!-- /.content-header -->

    <section class="flash-message">
        <g:render template="../layouts/flashMessage"/>
    </section><!--Flash Message-->

    <section class="content"><!-- Main content -->

    <!-- Horizontal Form -->
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Change Password</h3>
            </div><!-- /.box-header -->
        <!-- form start -->
            <g:form action="changePassword" method="post" class="form-horizontal formValidation">
                <div class="box-body">
                    %{--<g:render template="form"/>--}%
                    <div class="form-group">
                        <label for="username" class="col-sm-3 control-label required">Username</label>

                        <div class="col-sm-6">
                            <g:textField name="username" id="username" disabled="disabled" value="${userName}" class="form-control"/>
                        </div>
                    </div>
                    %{--<div class="form-group">
                        <label class="col-sm-2 control-label required">Current Password</label>
                        <div class="col-sm-6">
                            <g:passwordField name="oldPassword" id="oldPassword" autocomplete="off" class="form-control"/>
                        </div>
                    </div>--}%
                    <div class="form-group">
                        <label class="col-sm-3 control-label required">New Password</label>

                        <div class="col-sm-6">
                            <g:passwordField name="newPassword" id="newPassword" autocomplete="off" class="form-control" required="required"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label required">Confirm Password</label>

                        <div class="col-sm-6">
                            <g:passwordField name="confirmPassword" id="confirmPassword" autocomplete="off" class="form-control" required="required"/>
                        </div>
                    </div>
                </div><!-- /.box-body -->
                <div class="box-footer">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> ${message(code: "default.button.update.label", default: "Update")}</button>
                    <button type="reset" class="btn btn-warning pull-right" onclick="return confirm('${message(code: "default.message.reset.label", default: "Sure, you want to reset all value...?")}');"><i class="fa fa-refresh"></i> ${message(code: "default.button.reset.label", default: "Reset")}</button>
                </div><!-- /.box-footer -->
            </g:form>
        </div><!-- /.box -->
    </section>
</div>
</body>
</html>