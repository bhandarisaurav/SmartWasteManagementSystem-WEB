package smartwastemanagementsystem
import smartwastemanagementsystem.Dustbin
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityUtils

@Secured('permitAll')
class DustbinController {
    def index() {

    }

    def create() {
        [dustbinInstance: new Dustbin()]
    }
    def save()
    {
        Dustbin dustbin = new Dustbin()
        dustbin.location = params.location
        dustbin.distance = params.distance
        dustbin.capacity = params.capacity
        dustbin.save(flush: true, failOnError: true)
        redirect(action: 'list')
    }

    def list() {
        def dustbin = Dustbin.all
        render(view: 'list', model: [dustbin: dustbin,])
    }

    def edit() {
        def id = params.id
        println "id = $id"
        def originalDustbin = Dustbin.get(id)
        [edit: originalDustbin]
    }

    def update() {
        def id = params.id
        println "id = $id"
        def dustbinToUpdate = Dustbin.findById(id)
        dustbinToUpdate.location = params.location
        dustbinToUpdate.distance = params.distance
        dustbinToUpdate.capacity = params.capacity
        dustbinToUpdate.save(flush: true)
        redirect(action: "list")
    }

    def delete() {
        def id = params.id
        def originalDustbin = Dustbin.get(id)
        originalDustbin.delete(flush: true)
        redirect(action: "list")
    }
}
