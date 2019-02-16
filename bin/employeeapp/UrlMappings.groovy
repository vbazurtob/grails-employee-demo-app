package employeeapp

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(redirect:"/report")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
