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
        [userInfo: userInfo]
    }

    @Secured("ROLE_ADMIN")
    def dataTable() {
        def userData = userInfoService.userInfoList(params)
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
    def show() {
        def user = User.findById(1)
        println "user = $user"
        def userLocation = Location.findAllByUser(user)
        [userLocation: userLocation]
    }

    @Secured(['ROLE_ADMIN'])
    def edit() {
        UserInfo userInfo = userInfoService.getUserInfo(params.userInfoID)
        println "userInfo = $userInfo"
        [userInfo: userInfo]
    }

    @Secured("ROLE_ADMIN")
    def delete() {
        UserInfo userInfo = userInfoService.getUserInfo(params.userInfoID)
        println "userInfo = $userInfo"
        try {
            userInfo.delete(flush: true)
            User user = User.findByUsername(userInfo?.email)
            println "user = $user"
            user.accountExpired = true
            user.save(flush: true, failOnError: true)

            flash.error = "User Plan :${userInfo?.fullName} deleted"
        } catch (Exception e) {
            flash.error = "Discount Plan :${userInfo?.fullName}"
        }

        redirect(controller: 'userInfo', action: 'index')
    }

    @Secured("ROLE_ADMIN")
    def trackLocation() {


    }


}
