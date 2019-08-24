package smartwastemanagementsystem

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class DashboardController {
    SpringSecurityService springSecurityService

    @Secured("permitAll")
    def check() {
        println "springSecurityService = $springSecurityService"
        String roles = springSecurityService.getAuthentication().getAuthorities().toString()
        println roles
        if (roles.equalsIgnoreCase('[ROLE_ADMIN]')) {
            redirect(controller: 'admin', action: 'index')
        } else {
            flash.message = "Invalid Username / Password"
            redirect(controller: 'home', action: 'index')
        }

    }
}
