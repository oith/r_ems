<!-- Main Header -->
<header class="main-header">
    <!-- Logo -->
    <a href="${request.contextPath}/" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>ISPP</b></span>
        %{--<span class="logo-mini"><img src="${resource(dir: 'resources/images', file: 'logo.png')}" alt="Logo" height="50" width="50"></span>--}%
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>ISPP</b></span>
        %{--<span class="logo-lg"><img src="${resource(dir: 'resources/images', file: 'logo.png')}" alt="Logo" height="50" width="200"></span>--}%

    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>

        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <g:render template="/layouts/listMessage"/>

                <g:render template="/layouts/listNotification"/>

                <g:render template="/layouts/listTask"/>

                <g:render template="/layouts/userPanelTop"/>
            </ul>
        </div>
    </nav>
</header>
<g:render template="/layouts/sideBarLeft" model="${[menuType: menuType]}"/>
