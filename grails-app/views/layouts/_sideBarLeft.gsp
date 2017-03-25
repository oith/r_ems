<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <g:render template="/layouts/userPanelLeft"/>

        <!-- search form -->
        <g:render template="/layouts/searchPanel"/>

        <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <menu:loadMenu type="${menuType}"/>                           %{--All Authenticated (dynamic) Menu--}%
        </ul>

        %{--
        <ul class="sidebar-menu">
            <g:render template="/layouts/authMenuLeft"/>        --}%%{--All Authenticated (HardCode) Menu--}%%{--
        </ul>
        --}%

        <ul class="sidebar-menu">
            <g:render template="/layouts/availableController"/> %{--Available Controller--}%
        </ul>
    </section>  <!-- /.sidebar -->
</aside>  <!-- /.main-sidebar -->