package smartwastemanagementsystem

import grails.plugin.springsecurity.annotation.Secured

class LocationController {

    LocationService locationService

    @Secured('ROLE_ADMIN')
    def index() {


    }

    @Secured('permitAll')
    def save() {
        Location location = new Location()
        location.properties = params
        String add = params.address
        location.address = add.replace("%20", " ")
        location.save(failOnError: true, flush: true)
        redirect(controller: 'userInfo', action: 'index')
    }
}
