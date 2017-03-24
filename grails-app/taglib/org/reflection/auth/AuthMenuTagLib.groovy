package org.reflection.auth

class AuthMenuTagLib {
    static namespace = "authMenu"
    AuthMenuService authMenuService
    def generateTreeViewMenu = { authMenu ->
        out << authMenuService.generateTreeViewMenu(authMenuService.getMenuType(authMenu.type))
    }
}