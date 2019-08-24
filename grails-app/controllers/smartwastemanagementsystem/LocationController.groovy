package smartwastemanagementsystem

import grails.plugin.springsecurity.annotation.Secured

class LocationController {

    LocationService locationService
    @Secured('ROLE_ADMIN')
    def index() {


    }
    @Secured('permitAll')
    def save(){
        Location location = locationService.saveLocation(params)
        redirect(controller: 'userInfo', action: 'index')
    }
}
