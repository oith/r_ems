<!-- Main Header -->
<header class="main-header">
    <nav class="navbar navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <a href="${request.contextPath}/" class="navbar-brand">
                    <b>I</b><i>-RT</i>
                </a>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                    <i class="fa fa-bars"></i>
                </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse pull-left dropDownMenu" id="navbar-collapse">

                <g:render template="/layouts/authMenuTop"/>
                %{--<g:render template="/layouts/authMenuTop" model="${[menuType: menuType]}"/>--}%

                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" id="navbar-search-input" placeholder="Search">
                    </div>
                </form>
            </div><!-- /.navbar-collapse -->

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