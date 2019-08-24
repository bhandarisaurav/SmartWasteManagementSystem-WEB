package smartwastemanagementsystem

import grails.plugin.springsecurity.annotation.Secured


class UserInfoController {
    UserInfoService userInfoService
    @Secured('ROLE_ADMIN')
    def index() {
        render "Hellp"
    }
}
