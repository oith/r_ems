<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><g:message code="springSecurity.login.title" default="Login"/></title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="${resource(dir: "resources/images", file: "favicon.ico")}"/>
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/bootstrap/css", file: "bootstrap.min.css")}">
    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/font-awesome/css", file: "font-awesome.min.css")}">
    <!-- Ionicons -->
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/ionicons/css", file: "ionicons.min.css")}">
    <!-- Theme style -->
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/admin-lte/css", file: "AdminLTE.min.css")}">
    <!-- iCheck -->
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/iCheck/square", file: "blue.css")}">
    <!-- Animate.css -->
    <link rel="stylesheet" type="text/css" href="${resource(dir: "resources/plugins/animate", file: "animate.css")}">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
    <style type="text/css">
    html {
        font: 100%/1.5 "Times New Roman", Verdana, sans-serif;
        -webkit-font-smoothing: antialiased;
        width: 100%;
        overflow: hidden-x;
    }

    .site__title {
        /*color: #f35626;*/
        /*background-image: -webkit-linear-gradient(92deg, #f35626, #feab3a);*/
        color: #2672ec;
        /*color: #139ff7;*/
        background-image: -webkit-linear-gradient(92deg, #2672ec, #139ff7);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        -webkit-animation: hue 60s infinite linear;
    }

    @-webkit-keyframes hue {
        from {
            -webkit-filter: hue-rotate(0deg);
        }

        to {
            -webkit-filter: hue-rotate(-360deg);
        }
    }

    </style>
</head>

<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a class="site__title" style="padding-right: 2px" href="${request.contextPath}/"><i>Welcome to - </i><b> R-EMS</b></a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
    %{--<p class="login-box-msg">Sign in to start your session</p>--}%
        <g:if test='${flash.message}'>
            <div class='login_message text-danger animated tada' style="padding-bottom: 10px">${flash.message}</div>
        </g:if>

        <form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>

            <div class="form-group has-feedback">
                <input type="text" name='j_username' class="form-control" placeholder="User Name" required>
                <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>

            <div class="form-group has-feedback">
                <input type="password" name='j_password' class="form-control" placeholder="Password" required>
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>

            <div class="row">
                %{--
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        --}%%{--ToDo: Add cookie for client pc--}%%{--
                        --}%%{--<input type='checkbox' class='cb' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>--}%%{--
                        <input type='checkbox' class='cb' name='remember_me' id='remember_me'/>
                        <label for='remember_me'><g:message code="springSecurity.login.remember.me.label"/></label>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-xs-4">
                --}%
                <div class="col-xs-12">
                    %{--<button type="submit" class="btn btn-primary btn-block btn-flat">${message(code: "springSecurity.login.button")}</button>--}%
                    <button type="submit" class="btn btn-primary btn-flat">${message(code: "springSecurity.login.button")}</button>
                </div>
                <!-- /.col -->
            </div>
        </form>

        %{--
        <div class="social-auth-links text-center">
            <p>- OR -</p>
            <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using
            Facebook</a>
            <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using
            Google+</a>
        </div>
        --}%
        <!-- /.social-auth-links -->

        %{--<a href="#">I forgot my password</a><br>--}%
        %{--<a href="register.html" class="text-center">Register a new membership</a>--}%

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 2.2.3 -->
<script type="text/javascript" src="${resource(dir: "resources/plugins/jQuery", file: "jquery.min.js")}"></script>
<!-- Bootstrap 3.3.6 -->
<script type="text/javascript" src="${resource(dir: "resources/plugins/bootstrap/js", file: "bootstrap.min.js")}"></script>
<!-- iCheck -->
<script type="text/javascript" src="${resource(dir: "resources/plugins/iCheck", file: "icheck.min.js")}"></script>

<script type='text/javascript'>
    jQuery(document).ready(function () {
        $(".login-logo").addClass('animated fadeInDownBig');
    });
    (function () {
        document.forms['loginForm'].elements['j_username'].focus();
    })();
    $(function () {
        $('.cb').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '50%' // optional
        });
    });
    function testAnim(x) {
        $('#animationSandbox').removeClass().addClass(x + ' animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function () {
            $(this).removeClass();
        });
    }
    $(document).ready(function () {
        $('.js--triggerAnimation').click(function (e) {
            e.preventDefault();
            var anim = $('.js--animations').val();
            testAnim(anim);
        });

        $('.js--animations').change(function () {
            var anim = $(this).val();
            testAnim(anim);
        });
    });
</script>
</body>
</html>


