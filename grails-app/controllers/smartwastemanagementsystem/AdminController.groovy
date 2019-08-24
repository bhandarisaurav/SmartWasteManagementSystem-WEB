package smartwastemanagementsystem

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')

class AdminController {

    def index() {
        render "Welcome Admin"

    }
    def dashboard(){
        render "Welcome Admin"
    }
}
