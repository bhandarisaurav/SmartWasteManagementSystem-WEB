package smartwastemanagementsystem

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')

class AdminController {
    @Secured('ROLE_ADMIN')
    def index() {


    }
    def dashboard(){
        render "Welcome Admin"
    }
}
