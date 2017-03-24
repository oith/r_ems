package org.reflection.auth

import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.mapping.LinkGenerator
import org.springframework.web.context.request.RequestContextHolder

@Transactional
class AuthMenuService {

    LinkGenerator grailsLinkGenerator
    def grailsApplication,
        springSecurityService,
        webInvocationPrivilegeEvaluator

    public static final String MENU_LEFT = 'MENU_LEFT'

    def generateTreeViewMenu(AuthMenuType authMenuType) {
        String menuLeft
        if (springSecurityService.isLoggedIn()) {
            def session = RequestContextHolder.currentRequestAttributes().getSession()
            if (session.getAttribute(MENU_LEFT)) {
                menuLeft = session.getAttribute(MENU_LEFT)
            } else {
                StringBuilder menuString = new StringBuilder()
                try {
                    menuLeft = getChildMenu(null, authMenuType, 0, menuString)
                } catch (Exception e) {
                    println "Exception ## AuthMenuService.generateTreeViewMenu(AuthMenuType " + authMenuType + ") : " + e
                }
                session.setAttribute(MENU_LEFT, menuLeft)
            }
        } else {
            springSecurityService.clearCachedRequestmaps()
        }
        return menuLeft
    }

    String getChildMenu(AuthMenu parentMenu, AuthMenuType authMenuType, Integer level, StringBuilder menuString) {
        List<AuthMenu>  menuInstanceList = AuthMenu.createCriteria().list {
//            if (parentMenu)
//                eq("parentMenu", parentMenu)
//            else
//                isNull("parentMenu")
            eq("authMenuType", authMenuType.key)
            eq("isActive", true)
            order('sortOrder', 'asc')
            order('title', 'asc')
        }

        if (menuInstanceList) {
            String ul = level == 0 ? "<ul class='sidebar-menu'>" : "<ul class='treeview-menu'>"
            menuString.append(ul)
            for (menuInstance in menuInstanceList) {
                println "menuInstance : " + menuInstance
                String isOpenInNewTab = menuInstance.isOpenNewTab ? "target='_blank'" : "target='_self'",
                       href           = " href='" + (menuInstance.isExternal ? menuInstance?.url : grailsLinkGenerator.link(uri: menuInstance?.url, absolute: false)) + "'",
                       menuIcon       = menuInstance?.menuIcon ? menuInstance?.menuIcon : "fa fa-circle-o",
                       menuTitle      = level == 0 ? "<span>${menuInstance?.title}</span>" : menuInstance?.title,
                       toolTip        = ""// = menuInstance.toolTip ? " data-toggle='tooltip' title='" + menuInstance.toolTip + "'" : ""

                def countChild = countChildMenu(menuInstance)
                if (countChild > 0) {
                    menuTitle = menuTitle +
                        "<span class='pull-right-container'>" +
                        "    <i class='fa fa-angle-left pull-right'></i>" +
                        "</span>"
                }

                if (grailsApplication.config.grails.plugin.springsecurity.active == true && webInvocationPrivilegeEvaluator.isAllowed(menuInstance?.url, springSecurityService.getAuthentication())) {
                    menuString.append(
                        "<li class='treeview'>" +
                        "   <a" + href + isOpenInNewTab + toolTip + ">" +
                        "       <i class='" + menuIcon + "'></i>" + menuTitle +
                        "   </a>"
                    )
                    println "level : " + level
                    getChildMenu(menuInstance, authMenuType, level + 1, menuString)
                    menuString.append("</li>")
                }
            }
            menuString.append("</ul>")
        }
        println "menuString : " + menuString
        return menuString
    }

    def countChildMenu(AuthMenu menuInstance) {
        return AuthMenu.countByParentMenuAndIsActive(menuInstance, true)
    }

    def getHierarchicalMenuList() {
        def menuInstanceList = _getHierarchicalMenuList(new ArrayList(), null, null)
        return menuInstanceList
    }

    def _getHierarchicalMenuList(List menuList, AuthMenu parentMenu, String menuPrefix) {
        def menuInstanceList = AuthMenu.createCriteria().list {
            if (parentMenu)
                eq("parentMenu", parentMenu)
            else
                isNull("parentMenu")
            eq("isActive", true)
            order('sortOrder', 'asc')
            order('title', 'asc')
        }
        if (menuInstanceList) {
            for (AuthMenu menuInstance in menuInstanceList) {
                def title = menuPrefix ? menuPrefix + " > " + menuInstance.title : menuInstance.title
                menuList.add([id: menuInstance.id, title: title])
                _getHierarchicalMenuList(menuList, menuInstance, title)
            }
        }
        return menuList
    }

    def clearSession() {
        def session = RequestContextHolder.currentRequestAttributes().getSession()
        return session.removeAttribute(MENU_LEFT)
    }

    AuthMenuType getMenuType(String authMenuType) {
        return AuthMenuType.valueOf(authMenuType)
    }

    List<AuthMenuType> getAuthMenuTypeList() {
        List<AuthMenuType> authMenuTypeList
        authMenuTypeList = AuthMenuType.values()
        return authMenuTypeList
    }

    AuthMenuType getAuthUserMenuType() {
        AuthUser currentUser = springSecurityService?.currentUser
        return AuthUserProperty.findByAuthUser(currentUser)?.authMenuType ?: AuthMenuType?.LEFT
    }

    String getBodyClass() {
        String bodyClass = "hold-transition skin-blue sidebar-collapse sidebar-mini"
        AuthMenuType authMenuType = getAuthUserMenuType()

        if (authMenuType.equals(AuthMenuType.LEFT)) {
            bodyClass = "hold-transition skin-blue sidebar-collapse sidebar-mini"
        } else if (authMenuType.equals(AuthMenuType.TOP_TREE) || authMenuType.equals(AuthMenuType.TOP_MEGA)) {
            bodyClass = "hold-transition skin-blue layout-top-nav"
        } else if (authMenuType.equals(AuthMenuType.NONE)) {
            bodyClass = "hold-transition skin-blue layout-top-nav"
        }
        return bodyClass
    }

    List<AuthMenuType> getMenuTypeList() {
        List<AuthMenuType> authMenuTypeList
        authMenuTypeList = AuthMenuType.values()*.value
        return authMenuTypeList
    }

    List<AuthMenuType> getMenuTypeKeyList() {
        List<AuthMenuType> authMenuTypeList
        authMenuTypeList = AuthMenuType.values()*.value
        return authMenuTypeList
    }

    //AuthMenuType.values()*.name()
}