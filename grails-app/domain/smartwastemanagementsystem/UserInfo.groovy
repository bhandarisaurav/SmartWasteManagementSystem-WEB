package smartwastemanagementsystem

class UserInfo {
    User user
    String fullName
    String email
    String password
    String phoneNumber
    boolean isActive = true
    Date registeredDate = new Date()
    Date updatedDate
    static constraints = {
        email blank: false, nullable: false, email: true
        password blank: false, nullable: false
        phoneNumber nullable: true, blank: true
        updatedDate nullable: true
    }
}
