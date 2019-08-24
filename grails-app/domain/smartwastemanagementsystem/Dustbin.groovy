package smartwastemanagementsystem

class Dustbin {
    String location
    String distance
    String capacity

    static constraints = {
        location(blank:true, nullable: false)
        distance(blank:true, nullable: false)
        capacity(blank:true, nullable: false)
    }
}
