package org.reflection.auth

class AuthHomeController {
    def springSecurityService

    def index() {
        AuthUser currentUser        = (AuthUser) springSecurityService?.currentUser
        AuthLandingPage landingPage = null
        try {
            landingPage = currentUser?.authorities ? AuthLandingPage.findByAuthRoleInListAndIsActive(currentUser?.authorities, true) : null
        }catch (Exception e){
            println "AuthHome_ln-12 : " + e
        }
        if (landingPage) {
            redirect(uri: landingPage?.pageUrl)
        }
    }
}
