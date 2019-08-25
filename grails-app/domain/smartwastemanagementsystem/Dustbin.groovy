package smartwastemanagementsystem

class Dustbin {
    double latitude
    double longitude
    String address
    boolean messageSent=false
    float status = 0.0
    static constraints = {
        latitude(blank: true, nullable: false)
        longitude(blank: true, nullable: false)
        address(blank: true, nullable: false)
    }

    List toLists() {
        return [address, latitude, longitude]
    }
}
