package smartwastemanagementsystem

import grails.converters.JSON
import smartwastemanagementsystem.Dustbin
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityUtils

@Secured('permitAll')
class DustbinController {
    @Secured('ROLE_ADMIN')

    def index() {

    }

    def create() {
        [dustbinInstance: new Dustbin()]
    }

    def dataTable() {
        def userData = Dustbin.createCriteria().list {}
        println "userData = $userData"
        def dataMap = [:]
        dataMap.status = 200
        dataMap.data = userData
        render dataMap as JSON
    }

    def save() {
        Dustbin dustbin = new Dustbin()
        dustbin.address = params.address
        dustbin.latitude = params.latitude as double
        dustbin.longitude = params.longitude as double
        dustbin.save(flush: true, failOnError: true)
        redirect(action: 'index')
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
        dustbinToUpdate.address = params.address
        dustbinToUpdate.latitude = params.latitude as double
        dustbinToUpdate.longitude = params.longitude as double
        dustbinToUpdate.save(flush: true)
        redirect(action: "index")
    }

    def delete() {
        def id = params.id
        def originalDustbin = Dustbin.get(id)
        originalDustbin.delete(flush: true)
        redirect(action: "index")
    }
}
