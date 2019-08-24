package smartwastemanagementsystem

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured


class UserInfoController {
    UserInfoService userInfoService

    @Secured("ROLE_ADMIN")
    def index() {
    }

    @Secured("ROLE_ADMIN")
    def create() {
        def userInfo = new UserInfo()
        [userInfo:userInfo]
    }
    @Secured("ROLE_ADMIN")
    def dataTable() {
        def userData = productService.productList(params)
        println "userData = $userData"
        def dataMap = [:]
        dataMap.status = 200
        dataMap.data = userData
        render dataMap as JSON
    }

    @Secured("ROLE_ADMIN")
    def saveOrUpdate() {
        UserInfo userInfo = userInfoService.saveUserInfo(params)
        if (userInfo) {
            flash.message = "User Info SuccessFully Created"
        } else {
            flash.message = "User Info couldnot be Created"

        }
        redirect(controller: 'userInfo', action: 'index')
    }

    @Secured(['ROLE_ADMIN'])
    def edit() {
        UserInfo userInfo = userInfoService.getUserInfo("1")
        println "userInfo = $userInfo"
        [userInfo: userInfo]
    }

    @Secured("ROLE_ADMIN")
    def delete() {
    }


}
