package smartwastemanagementsystem

import grails.plugin.springsecurity.annotation.Secured

@Secured("permitAll")

class HomeController {

    def index() {
        println "1"
    }
}
