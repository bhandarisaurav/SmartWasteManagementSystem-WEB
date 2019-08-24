package smartwastemanagementsystem

class Location {
    String latitude
    String longitude
    String address
    User user
    Date date = new Date()

    static mapping = {
        sort date:"desc"
    }
    static constraints = {

    }
}
