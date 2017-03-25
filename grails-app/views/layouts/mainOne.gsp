<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    %{--===========================================================================================================================================================--}%
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Reflection"/></title>
    %{--===========================================================================================================================================================--}%
    <g:render template="/layouts/cssCommon"/>
    <g:layoutHead/>
    %{--===========================================================================================================================================================--}%
    <%
        String menuType = "menuLeft"
//        String menuType = "menuTop";
//    String menuType = "menuNone";
        String bodyClass = "hold-transition skin-blue sidebar-collapse sidebar-mini"
        if (menuType == 'menuLeft') {
            bodyClass = "hold-transition skin-blue sidebar-collapse sidebar-mini"
        }
        if (menuType == 'menuTop') {
            bodyClass = "hold-transition skin-blue layout-top-nav"
        }
    %>
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue layout-top-nav">

%{--<body class="${bodyClass}">--}%
%{--<body class="hold-transition skin-blue sidebar-collapse sidebar-mini">--}%
%{--<body class="hold-transition skin-blue layout-top-nav">--}%
%{--<body class="hold-transition skin-blue sidebar-mini">--}%
%{--===========================================================================================================================================================--}%
%{--<div id="grailsLogo" role="banner"><a href="${request.contextPath}"><asset:image src="grails_logo.png" alt="Grails"/></a></div>                            --}%
%{--===========================================================================================================================================================--}%
%{--<div class="wrapper">
    <g:if test="${menuType == 'menuTop'}">
        <g:render template="/layouts/headerWithTopMenu"/>
    </g:if>
    <g:elseif test="${menuType == 'menuLeft'}">
        <g:render template="/layouts/headerWithLeftMenu"/>
        <g:render template="/layouts/sideBarLeft"/>
    </g:elseif>
    <g:else>
        --}%%{--Todo:Add Menu (MenuNone)--}%%{--
    </g:else>
    <g:layoutBody/>
    <g:render template="/layouts/sideBarRight"/>
    <g:render template="/layouts/footer"/>
    <div id="spinner" class="spinner" style="display:none;"><g:message code="default.message.loading" default="Loading&hellip;"/></div>
</div>--}%
%{--===========================================================================================================================================================--}%
<div class="wrapper">

    <header class="main-header">
        <nav class="navbar navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <a href="../../index2.html" class="navbar-brand"><b>Admin</b>LTE</a>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                        <i class="fa fa-bars"></i>
                    </button>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">Link</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                                <li class="divider"></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" id="navbar-search-input" placeholder="Search">
                        </div>
                    </form>
                </div>
                <!-- /.navbar-collapse -->

                <!-- Navbar Right Menu -->
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <g:render template="/layouts/listMessage"/>

                        <g:render template="/layouts/listNotification"/>

                        <g:render template="/layouts/listTask"/>

                        <g:render template="/layouts/userPanelTop"/>
                    </ul>
                </div>
                <!-- /.navbar-custom-menu -->
            </div>
            <!-- /.container-fluid -->
        </nav>
    </header>
    <!-- Full Width Column -->
    <div class="content-wrapper">
        <div class="container">

            <section class="content-header">
                <h1>
                    Top Navigation
                    <small>Example 2.0</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                    <li><a href="#">Layout</a></li>
                    <li class="active">Top Navigation</li>
                </ol>
            </section>

            <!-- Main content -->
            <section class="content">
                <div class="callout callout-info">
                    <h4>Tip!</h4>

                    <p>Add the layout-top-nav class to the body tag to get this layout. This feature can also be used with a
                    sidebar! So use this class if you want to remove the custom dropdown menus from the navbar and use regular
                    links instead.</p>
                </div>
                <div class="callout callout-danger">
                    <h4>Warning!</h4>

                    <p>The construction of this layout differs from the normal one. In other words, the HTML markup of the navbar
                    and the content will slightly differ than that of the normal layout.</p>
                </div>
                <div class="box box-default">
                    <div class="box-header with-border">
                        <h3 class="box-title">Blank Box</h3>
                    </div>
                    <div class="box-body">
                        The great content goes here
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <div class="container">
            <div class="pull-right hidden-xs">
                <b>Version</b> 2.3.5
            </div>
            <strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
        reserved.
        </div>
        <!-- /.container -->
    </footer>
</div>
<!-- ./wrapper -->
%{--===========================================================================================================================================================--}%
<g:render template="/layouts/jsCommon"/>
%{--===========================================================================================================================================================--}%
</body>
</html>