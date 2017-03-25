<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title><g:message code="springSecurity.denied.title"/></title>
    <!-- favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="${resource(dir: "resources/images", file: "favicon.ico")}"/>
</head>

<body>
<div class="content-wrapper">

    <section class="flash-message">
        <g:render template="../layouts/flashMessage"/>
    </section><!--Flash Message-->

    <section class="content"><!-- Main content -->
        <div class="box box-danger">
            <div class="box-body">
                <h1><div class='errors'><g:message code="springSecurity.denied.message"/></div></h1>
            </div><!-- /.box-body table-responsive no-padding -->
        </div><!-- /.box box-primary -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
</body>
</html>
