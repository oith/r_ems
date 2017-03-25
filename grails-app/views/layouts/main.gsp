<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="org.reflection.auth.AuthMenuType" %>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Reflection"/></title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="shortcut icon" type="image/x-icon" href="${resource(dir: "resources/images", file: "favicon.ico")}"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/bootstrap/css", file: "bootstrap.min.css")}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/datepicker", file: "datepicker3.css")}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/fullcalendar", file: "fullcalendar.min.css")}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/font-awesome/css", file: "font-awesome.min.css")}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/admin-lte/css", file: "AdminLTE.css")}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/admin-lte/css/skins", file: "_all-skins.min.css")}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/pace", file: "pace.min.css")}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/iCheck/square", file: "blue.css")}"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/select2", file: "select2.min.css")}"/>
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/datatables", file: "dataTables.bootstrap.css")}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/animate", file: "animate.css")}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/reflection", file: "reflection.css")}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/reflection", file: "drop-down-menu.css")}">
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/css", file: "custom-admin.css")}">
    <g:layoutHead/>
</head>

<body class="hold-transition skin-blue">
<div class="wrapper">
    <header class="main-header">
        <!-- Logo -->
        <a href="${request.contextPath}/" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><small><b>EMS</b></small></span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>R-<i>EMS</i></b></span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="${applicationContext.springSecurityService?.currentUser?.username == "saif_hmk" ? resource(dir: "resources/images/user", file: "saif_khan.jpg") : (resource(dir: "resources/images/", file: "user_icon.jpg"))}" class="user-image" alt="User Image">
                            <span class="hidden-xs">${applicationContext.springSecurityService?.currentUser?.displayName}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="user-header">
                                <img src="${applicationContext.springSecurityService?.currentUser?.username == "saif_hmk" ? resource(dir: "resources/images/user", file: "saif_khan.jpg") : (resource(dir: "resources/images/", file: "user_icon.jpg"))}" class="img-circle" alt="User Image">

                                <p>
                                    ${applicationContext.springSecurityService?.currentUser?.displayName} ${(applicationContext.springSecurityService?.currentUser?.email) ? " - " + (applicationContext.springSecurityService?.currentUser?.email) : ""}
                                </p>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <g:link controller="user" action="changePassword" class="btn btn-block btn-success"><i class="fa fa-cog"></i> Change password</g:link>
                                </div>

                                <div class="pull-right">
                                    <g:link controller="logout" class="btn btn-block btn-danger"><i class="fa fa-power-off"></i> Sign out</g:link>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <aside class="main-sidebar">
        <section class="sidebar">
            <ul class="sidebar-menu">
                <sec:access url="/_AdmProc">
                    <li><a href="${request.contextPath}/_AdmProc"><i class="fa fa-circle-o"></i> Process</a></li>
                </sec:access>

                <sec:access url="/_AdmRpt">
                    <li><a href="${request.contextPath}/_AdmRpt"><i class="fa fa-circle-o"></i> Report</a></li>
                </sec:access>
            </ul>
        </section>  <!-- /.sidebar -->
    </aside>
    <g:layoutBody/>
    <footer class="main-footer">
        <strong>Copyright &copy; 2014-2016 <a href="http://facebook.com/deReflection">Reflection</a>.</strong> All rights reserved.
        <div class="pull-right hidden-xs" style="padding-right: 50px;">
            <b>Born to reflect</b>
        </div>
    </footer>
</div>
<script type="text/javascript" src="${resource(dir: "resources/plugins/jQuery", file: "jquery.min.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/bootstrap/js", file: "bootstrap.min.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/daterangepicker", file: "moment.min.js")}"></script>         %{-- NB : moment should be defined before dateRangePicker --}%
<script type="text/javascript" src="${resource(dir: "resources/plugins/fullcalendar", file: "fullcalendar.min.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/datepicker", file: "bootstrap-datepicker.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/timepicker", file: "bootstrap-timepicker.min.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/admin-lte/js", file: "app.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/pace", file: "pace.min.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/admin-lte/js", file: "config.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/datatables", file: "jquery.dataTables.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/datatables", file: "dataTables.bootstrap.min.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/iCheck", file: "icheck.min.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/select2", file: "select2.min.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/reflection", file: "slide-to-top.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/reflection", file: "reflection-form-element.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/reflection", file: "custom-data-table.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/reflection", file: "reflection.js")}"></script>
</body>
</html>