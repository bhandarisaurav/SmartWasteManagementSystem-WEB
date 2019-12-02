package smartwastemanagementsystem

class SendNotificationJob {
    static triggers = {
        simple repeatInterval: 5000l // execute job once in 5 seconds
    }

    def execute() {

        def dustbin = Dustbin.findAllByStatusGreaterThanAndMessageSent(60.0, false)

        try {
            dustbin.each { it ->

                it.messageSent = true
                it.save(failOnError: true, flush: true)
                Notification notification = Notification.findOrCreateWhere(message: "Dustbin at " + it.address + " is " + it.status + "% full.")
                notification.save(failOnError: true, flush: true)
            }
        } catch (Exception e) {
            e.printStackTrace()
        }

    }

}

