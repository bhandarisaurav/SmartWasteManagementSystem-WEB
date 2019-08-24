package smartwastemanagementsystem

class Location {
    double latitude
    double longitude
    String address
    User user
    Date date = new Date()

    static mapping = {
        sort date:"desc"
    }
    static constraints = {

    }
}
