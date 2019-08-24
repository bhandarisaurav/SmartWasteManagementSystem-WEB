package smartwastemanagementsystem

import grails.gorm.transactions.Transactional

@Transactional
class LocationService {
   def saveLocation(){
       Location location = new Location()
       location.properties = params
       location.save(failOnError:true,flush:true)
   }

}
