<sec:access url="/#availableController">
    <li class="header"><g:message code="authMenu.availableController.label" default="AVAILABLE CONTROLLERS"/></li>
    <li class="treeview">
        <a href="#">
            <i class="fa fa-dashboard"></i> <span>Available Controllers</span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
        </a>
        <ul class="treeview-menu">
            <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName }}">
                <li class="controller"><g:link controller="${c.logicalPropertyName}"><i class="fa fa-circle-o"></i> ${c.naturalName}</a></g:link></li>
            </g:each>
        </ul>
    </li>
</sec:access>