package smartwastemanagementsystem

import grails.converters.JSON
import grails.plugin.springsecurity.annotation.Secured

@Secured('ROLE_ADMIN')

class AdminController {
    @Secured('ROLE_ADMIN')
    def index() {

        def dustBinsList = []
        def busCount = UserInfo.list().size()
        def dustbinCount = Dustbin.list().size()
        def notificationCount = Notification.findAllByChecked(false).size()
        def dustBins = Dustbin.list()
        dustBins.each {
            def lis = []
            def val = it.address
            lis.add(val)
            lis.add(it.latitude)
            lis.add(it.longitude)
            dustBinsList.add(lis)

        }
        println dustBinsList as JSON
        [busCount: busCount, dustbinCount: dustbinCount, dustBinsList: dustBinsList,notificationCount:notificationCount]

    }

    def dashboard() {
        render "Welcome Admin"
    }
}
