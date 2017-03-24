class UrlMappings {
    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(  controller: "authHome"    , action: "index")
        "401"(controller: 'login'       , action: 'auth')      //if logout button is clicked > 401 (Unauthorized) is returned...!
        "404"(controller: 'comThrowable', action: '_404')
        "405"(controller: 'comThrowable', action: '_405')
        "500"(controller: 'comThrowable', action: '_500')
    }
}
