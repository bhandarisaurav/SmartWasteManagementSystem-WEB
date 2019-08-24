package smartwastemanagementsystem

import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')

class AdminController {
    @Secured('ROLE_ADMIN')
    def index() {

        def busCount = UserInfo.list().size()
        def dustbinCount = Dustbin.list().size()
        [busCount: busCount, dustbinCount: dustbinCount]


    }

    def dashboard() {
        render "Welcome Admin"
    }
}
