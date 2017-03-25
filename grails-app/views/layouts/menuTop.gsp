<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>BBAL-Infor | Home</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/bootstrap/css", file: "bootstrap.min.css")}">
    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/font-awesome/css", file: "font-awesome.min.css")}">
    <!-- Ionicons -->
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/ionicons/css", file: "ionicons.min.css")}">
    <!-- Theme style -->
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/admin-lte/css", file: "AdminLTE.min.css")}">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/admin-lte/css/skins", file: "_all-skins.min.css")}">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

    <header class="main-header">
        <nav class="navbar navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <a href="${request.contextPath}/" class="navbar-brand"><b>BBAL Infor</b></a>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                        <i class="fa fa-bars"></i>
                    </button>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
                    <ul class="nav navbar-nav">
                        <g:render template="/layouts/authMenuTop"/>
                    </ul>
                    <g:render template="/layouts/searchPanel"/>
                </div>
                <!-- /.navbar-collapse -->

                <!-- Navbar Right Menu -->


                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">

                        <!-- Messages Menu -->
                        <g:render template="/layouts/listMessage"/>

                        <!-- Notifications Menu -->
                        <g:render template="/layouts/listNotification"/>

                        <!-- Tasks Menu -->
                        <g:render template="/layouts/listTask"/>

                        <!-- User Account -->
                        <g:render template="/layouts/userPanelTop"/>

                        <!-- Control Sidebar Toggle Button -->
                        <li>
                            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                        </li>

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

            %{--
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
            --}%

            <!-- Main content -->
            <section class="content">
                <div class="callout callout-info">
                    <h4>Welcome to Biman Bangladesh Airlines</h4>
                </div>
                %{--
                <div class="callout callout-danger">
                    <h4>Warning!</h4>

                    <p>The construction of this layout differs from the normal one. In other words, the HTML markup of the navbar
                    and the content will slightly differ than that of the normal layout.</p>
                </div>
                --}%
                %{--
                <div class="box box-default">
                    <div class="box-header with-border">
                        <h3 class="box-title">Blank Box</h3>
                    </div>

                    <div class="box-body">
                        The great content goes here
                    </div>
                    <!-- /.box-body -->
                </div>
                --}%
                <!-- /.box -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /.content-wrapper -->

    <g:render template="../layouts/footer"/>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.0 -->
<script type="text/javascript" src="${resource(dir: "resources/plugins/jQuery", file: "jquery.min.js")}"></script>
<!-- Bootstrap 3.3.6 -->
<script type="text/javascript" src="${resource(dir: "resources/plugins/bootstrap/js", file: "bootstrap.min.js")}"></script>
<!-- SlimScroll -->
<script type="text/javascript" src="${resource(dir: "resources/plugins/slimScroll", file: "jquery.slimscroll.min.js")}"></script>
<!-- FastClick -->
<script type="text/javascript" src="${resource(dir: "resources/plugins/fastclick", file: "fastclick.js")}"></script>
<!-- AdminLTE App -->
<script type="text/javascript" src="${resource(dir: "resources/plugins/admin-lte/js", file: "app.min.js")}"></script>
<!-- AdminLTE for demo purposes -->
<script type="text/javascript" src="${resource(dir: "resources/plugins/admin-lte/js", file: "config.js")}"></script>

<script type="text/javascript" src="${resource(dir: "resources/plugins/reflection", file: "slide-to-top.js")}"></script>
<script type="text/javascript" src="${resource(dir: "resources/plugins/reflection", file: "skin-switcher.js")}"></script>
</body>
</html>
