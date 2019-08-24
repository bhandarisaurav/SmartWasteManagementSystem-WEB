package smartwastemanagementsystem

class UserInfo {
    User user
    String firstName
    String lastName
    String fullName
    String email
    String phoneNumber
    boolean isActive = true
    Date registeredDate = new Date()
    Date updatedDate
    static constraints = {
        firstName nullable: false, blank: false
        lastName nullable: false, blank: false
        email blank: false, nullable: false, email: true
        phoneNumber nullable: true, blank: true
        updatedDate nullable: true
    }
}
