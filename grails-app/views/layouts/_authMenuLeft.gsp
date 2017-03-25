<li class="header"><g:message code="authMenu.mainNavigation.label" default="MAIN NAVIGATION"/></li>

%{--Settings--}%
<sec:access url="/#settings">
    <li class="treeview">
        <a class="dropdown-toggle" data-toggle="dropdown" data-toggle="tooltip" title="Saif" aria-expanded="false" href="${request.contextPath}/#settings">
            <i class="fa fa-cog"></i>
            <span>
                <g:message code="authMenu.settings.label" default="Settings"/>
            </span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
        </a>
        <ul class="treeview-menu">
            <sec:access url="/#user">
                <li class="treeview">
                    <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="${request.contextPath}/#user">
                        <i class="fa fa-circle-o text-red"></i>
                        <span>
                            <g:message code="authMenu.user.label" default="User"/>
                        </span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <sec:access url="/user/index">
                            <li>
                                <a href="${request.contextPath}/user/index">
                                    <i class="fa fa-circle-o text-primary"></i>
                                    <g:message code="authMenu.userList.label" default="User - List"/>
                                </a>
                            </li>
                        </sec:access>
                        <sec:access url="/user/create">
                            <li>
                                <a href="${request.contextPath}/user/create">
                                    <i class="fa fa-circle-o"></i>
                                    <g:message code="authMenu.userCreate.label" default="User - Create"/>
                                </a>
                            </li>
                        </sec:access>
                    </ul>
                </li>
            </sec:access>
            <sec:access url="/#role">
                <li class="treeview">
                    <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="${request.contextPath}/#role">
                        <i class="fa fa-circle-o text-red"></i>
                        <span>
                            <g:message code="authMenu.role.label" default="Role"/>
                        </span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <sec:access url="/role/index">
                            <li>
                                <a href="${request.contextPath}/role/index">
                                    <i class="fa fa-circle-o text-primary"></i>
                                    <g:message code="authMenu.roleList.label" default="Role - List"/>
                                </a>
                            </li>
                        </sec:access>
                        <sec:access url="/role/create">
                            <li>
                                <a href="${request.contextPath}/role/create">
                                    <i class="fa fa-circle-o"></i>
                                    <g:message code="authMenu.roleCreate.label" default="Role - Create"/>
                                </a>
                            </li>
                        </sec:access>
                    </ul>
                </li>
            </sec:access>
            <sec:access url="/#menu">
                <li class="treeview">
                    <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="${request.contextPath}/#menu">
                        <i class="fa fa-circle-o text-red"></i>
                        <span>
                            <g:message code="authMenu.menu.label" default="Menu"/>
                        </span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <sec:access url="/menu/index">
                            <li>
                                <a href="${request.contextPath}/menu/index">
                                    <i class="fa fa-circle-o text-primary"></i>
                                    <g:message code="authMenu.menuList.label" default="Menu - List"/>
                                </a>
                            </li>
                        </sec:access>
                        <sec:access url="/menu/create">
                            <li>
                                <a href="${request.contextPath}/menu/create">
                                    <i class="fa fa-circle-o"></i>
                                    <g:message code="authMenu.menuCreate.label" default="Menu - Create"/>
                                </a>
                            </li>
                        </sec:access>
                    </ul>
                </li>
            </sec:access>
            <sec:access url="/#mapping">
                <li class="treeview">
                    <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="${request.contextPath}/#mappig">
                        <i class="fa fa-circle-o text-red"></i>
                        <span>
                            <g:message code="authMenu.mapping.label" default="Mapping"/>
                        </span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <sec:access url="/#userRole">
                            <li class="treeview">
                                <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="${request.contextPath}/#userRole">
                                    <i class="fa fa-circle-o text-red"></i>
                                    <span>
                                        <g:message code="authMenu.userRole.label" default="User & Role"/>
                                    </span>
                                    <span class="pull-right-container">
                                        <i class="fa fa-angle-left pull-right"></i>
                                    </span>
                                </a>
                                <ul class="treeview-menu">
                                    <sec:access url="/userRole/index">
                                        <li>
                                            <a href="${request.contextPath}/userRole/index">
                                                <i class="fa fa-circle-o text-primary"></i>
                                                <g:message code="authMenu.userRoleList.label" default="UserRole - List"/>
                                            </a>
                                        </li>
                                    </sec:access>
                                    <sec:access url="/userRole/create">
                                        <li>
                                            <a href="${request.contextPath}/userRole/create">
                                                <i class="fa fa-circle-o"></i>
                                                <g:message code="authMenu.userRoleCreate.label" default="UserRole - Create"/>
                                            </a>
                                        </li>
                                    </sec:access>
                                </ul>
                            </li>
                        </sec:access>
                        <sec:access url="/#reportRole">
                            <li class="treeview">
                                <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="${request.contextPath}/#reportRole">
                                    <i class="fa fa-circle-o text-red"></i>
                                    <span>
                                        <g:message code="authMenu.reportRole.label" default="Report & Role"/>
                                    </span>
                                    <span class="pull-right-container">
                                        <i class="fa fa-angle-left pull-right"></i>
                                    </span>
                                </a>
                                <ul class="treeview-menu">
                                    <sec:access url="/reportRole/index">
                                        <li>
                                            <a href="${request.contextPath}/reportRole/index">
                                                <i class="fa fa-circle-o text-primary"></i>
                                                <g:message code="authMenu.reportRoleList.label" default="ReportRole - List"/>
                                            </a>
                                        </li>
                                    </sec:access>
                                    <sec:access url="/reportRole/create">
                                        <li>
                                            <a href="${request.contextPath}/reportRole/create">
                                                <i class="fa fa-circle-o"></i>
                                                <g:message code="authMenu.reportRoleCreate.label" default="ReportRole - Create"/>
                                            </a>
                                        </li>
                                    </sec:access>
                                </ul>
                            </li>
                        </sec:access>
                        <sec:access url="/#requestMap">
                            <li class="treeview">
                                <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="${request.contextPath}/#requestMap">
                                    <i class="fa fa-circle-o text-red"></i>
                                    <span>
                                        <g:message code="authMenu.urlMapping.label" default="Request/URL"/>
                                    </span>
                                    <span class="pull-right-container">
                                        <i class="fa fa-angle-left pull-right"></i>
                                    </span>
                                </a>
                                <ul class="treeview-menu">
                                    <sec:access url="/requestMap/index">
                                        <li>
                                            <a href="${request.contextPath}/requestMap/index">
                                                <i class="fa fa-circle-o text-primary"></i>
                                                <g:message code="authMenu.requestMapList.label" default="Request Map - List"/>
                                            </a>
                                        </li>
                                    </sec:access>
                                    <sec:access url="/requestMap/create">
                                        <li>
                                            <a href="${request.contextPath}/requestMap/create">
                                                <i class="fa fa-circle-o"></i>
                                                <g:message code="authMenu.requestMapCreate.label" default="Request Map - Create"/>
                                            </a>
                                        </li>
                                    </sec:access>
                                </ul>
                            </li>
                        </sec:access>
                    </ul>
                </li>
            </sec:access>
        </ul>
    </li>
</sec:access>

%{--Banking--}%
<sec:access url="/#banking">
    <li class="treeview">
        <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="${request.contextPath}/#banking">
            <i class="fa fa-university"></i>
            <span>
                <g:message code="authMenu.banking.label" default="Banking"/>
            </span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
        </a>
        <ul class="treeview-menu">
            <sec:access url="/#bank">
                <li class="treeview">
                    <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="${request.contextPath}/#bank">
                        <i class="fa fa-building"></i>
                        <span>
                            <g:message code="authMenu.bank.label" default="Bank"/>
                        </span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <sec:access url="/ibcsBankEntryMst/index">
                            <li><a href="${request.contextPath}/ibcsBankEntryMst/index"><i class="fa fa-circle-o text-primary"></i><span>Bank Account - List</span></a></li>
                        </sec:access>
                        <sec:access url="/ibcsBankEntryMst/create">
                            <li><a href="${request.contextPath}/ibcsBankEntryMst/create"><i class="fa fa-circle-o"></i><span>Bank Account - Create</span></a></li>
                        </sec:access>
                    </ul>
                </li>
            </sec:access>
            <sec:access url="/#reconciliation">
                <li class="treeview">
                    <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="${request.contextPath}/#reconciliation">
                        <i class="fa fa-cog"></i>
                        <span>
                            <g:message code="authMenu.reconciliation.label" default="Reconciliation"/>
                        </span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <sec:access url="/ibcsBankEntryDtl/index">
                            <li><a href="${request.contextPath}/ibcsBankEntryDtl/index"><i class="fa fa-circle-o text-primary"></i><span>Reconciliation - Print</span></a></li>
                        </sec:access>
                        <sec:access url="/ibcsBankEntryDtl/create">
                            <li><a href="${request.contextPath}/ibcsBankEntryDtl/create"><i class="fa fa-circle-o"></i><span>Reconciliation - Part-B</span></a></li>
                        </sec:access>
                    </ul>
                </li>
            </sec:access>
        </ul>
    </li>
</sec:access>

%{--Accounting--}%
<sec:access url="/#accounting">
    <li class="treeview">
        <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="${request.contextPath}/#accounting">
            <i class="fa fa-money"></i>
            <span>
                <g:message code="authMenu.accounting.label" default="Accounting"/>
            </span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
        </a>
        <ul class="treeview-menu">
            <sec:access url="/#ledger">
                <li class="treeview">
                    <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="${request.contextPath}/#ledger">
                        <i class="fa fa-cog"></i>
                        <span>
                            <g:message code="authMenu.ledger.label" default="Ledger"/>
                        </span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <sec:access url="/ibcsSunLedger/index">
                            <li><a href="${request.contextPath}/ibcsSunLedger/index"><i class="fa fa-circle-o text-primary"></i><span>Sun Ledger</span></a></li>
                        </sec:access>
                        <sec:access url="/ibcsSunLedger/create">
                            <li><a href="${request.contextPath}/ibcsSunLedger/create"><i class="fa fa-circle-o"></i><span>Ledger - Create</span></a></li>
                        </sec:access>
                        <sec:access url="/ledgerBfcc/index">
                            <li><a href="${request.contextPath}/ledgerBfcc/index"><i class="fa fa-circle-o text-primary"></i><span>BFCC Ledger</span></a></li>
                        </sec:access>
                        <sec:access url="/ledgerBfcc/create">
                            <li><a href="${request.contextPath}/ledgerBfcc/create"><i class="fa fa-circle-o"></i><span>Ledger - Create</span></a></li>
                        </sec:access>
                        <sec:access url="/ledgerBpc/index">
                            <li><a href="${request.contextPath}/ledgerBpc/index"><i class="fa fa-circle-o text-primary"></i><span>BPC Ledger</span></a></li>
                        </sec:access>
                        <sec:access url="/ledgerBpc/create">
                            <li><a href="${request.contextPath}/ledgerBpc/create"><i class="fa fa-circle-o"></i><span>Ledger - Create</span></a></li>
                        </sec:access>
                    </ul>
                </li>
            </sec:access>
            <sec:access url="/#balanceGroup">
                <li class="treeview">
                    <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="${request.contextPath}/#balanceGroup">
                        <i class="fa fa-cog"></i>
                        <span>
                            <g:message code="authMenu.balanceGroup.label" default="Balance Group"/>
                        </span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <sec:access url="/ibcsBalanceMaster/index">
                            <li><a href="${request.contextPath}/ibcsBalanceMaster/index"><i class="fa fa-circle-o text-primary"></i><span>Balance Group - List</span></a></li>
                        </sec:access>
                        <sec:access url="/ibcsBalanceMaster/create">
                            <li><a href="${request.contextPath}/ibcsBalanceMaster/create"><i class="fa fa-circle-o"></i><span>Balance Group - Create</span></a></li>
                        </sec:access>
                    </ul>
                </li>
            </sec:access>
            <sec:access url="/#balance">
                <li class="treeview">
                    <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="${request.contextPath}/#balance">
                        <i class="fa fa-cog"></i>
                        <span>
                            <g:message code="authMenu.balance.label" default="Balance"/>
                        </span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <sec:access url="/ibcsBalanceDetail/index">
                            <li><a href="${request.contextPath}/ibcsBalanceDetail/index"><i class="fa fa-circle-o text-primary"></i><span>Balance - List</span></a></li>
                        </sec:access>
                        <sec:access url="/ibcsBalanceDetail/create">
                            <li><a href="${request.contextPath}/ibcsBalanceDetail/create"><i class="fa fa-circle-o"></i><span>Balance - Create</span></a></li>
                        </sec:access>
                    </ul>
                </li>
            </sec:access>
        </ul>
    </li>
</sec:access>

%{--Reporting--}%
<sec:access url="/#reporting">
    <li class="treeview">
        <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="${request.contextPath}/#reporting">
            <i class="fa fa-flag-o"></i>
            <span>
                <g:message code="authMenu.reporting.label" default="Reporting"/>
            </span>
            <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
            </span>
        </a>
        <ul class="treeview-menu">
            <sec:access url="/_AdmRpt/index">
                <li><a href="${request.contextPath}/_AdmRpt/index"><i class="fa fa-circle-o"></i><span>All Report</span></a></li>
            </sec:access>
        </ul>
    </li>
</sec:access>

%{--
<script>
    $(document).ready(function(){
        $('[data-toggle="tooltip"]').tooltip();
    });
</script>
--}%
