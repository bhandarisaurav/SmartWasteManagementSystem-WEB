package smartwastemanagementsystem

import com.fazecast.jSerialComm.SerialPort
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

    @Secured("ROLE_ADMIN")
    def read() {
        SerialPort sp = SerialPort.getCommPort("/dev/cu.usbmodem14101")
        sp.setComPortParameters(9600, 8, 1, 0)
        sp.setComPortTimeouts(SerialPort.TIMEOUT_WRITE_BLOCKING, 0, 0)

        if (sp.openPort()) {
            System.out.println("Port is open :)")
        } else {
            System.out.println("Failed to open port :(")
            return
        }

        for (Integer i = 0; i < 5; ++i) {
            sp.getOutputStream().write(i.byteValue())
            sp.getOutputStream().flush()
            System.out.println("Sent number: " + i)
            Thread.sleep(1000)
        }
        println "asasasas" + sp.getInputStream().read()
        println "asasasas" + sp.getInputStream().read().byteValue()

        if (sp.closePort()) {
            System.out.println("Port is closed :)")
        } else {
            System.out.println("Failed to close port :(")
            return 0
        }
    }

    @Secured("permitAll")
    def saveStatus() {
        def dustbin = Dustbin.findById(1)
        println "dustbin = $dustbin"
        def data = getData(params.status as float)
        println "data = $data"
        dustbin.status = data
        dustbin.save(flush: true)
    }

    @Secured("permitAll")
    float getData(float num) {
        if (num >= 27) {
            return 0
        }
        return 100 - num * 3.7037
    }

}
