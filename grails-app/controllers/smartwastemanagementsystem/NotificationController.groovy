package smartwastemanagementsystem

import grails.plugin.springsecurity.annotation.Secured

class NotificationController {
    @Secured("ROLE_ADMIN")
    def index() {
        def notification = Notification.list()
        [notification: notification]
    }

    def save() {
        Notification notification = new Notification()
        def dustbin = Dustbin.findAllByStatusGreaterThan(60.0)
        dustbin.each { it ->
            notification.message = "Dustbin at " + it.address + "is" + it.status + "%full."
            notification.save(failOnError: true, flush: true)
        }
    }

    @Secured("ROLE_ADMIN")
    def read() {
        Notification notification = Notification.findById(params.id)
        if (notification) {
            notification.checked = true
            notification.save(failOnError: true, flush: true)
        }
        redirect(controller: 'notification', action: 'index')
    }
}
