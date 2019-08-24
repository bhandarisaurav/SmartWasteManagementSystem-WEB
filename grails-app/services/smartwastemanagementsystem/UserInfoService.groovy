package smartwastemanagementsystem

import grails.gorm.transactions.Transactional

@Transactional
class UserInfoService {
    List<UserInfo> userInfoList(params) {
        return UserInfo.createCriteria().list {

        }
    }

    UserInfo getUserInfo(String userInfoID) {
        return UserInfo.findById(userInfoID)
    }

    def saveUserInfo(params) {
        UserInfo userInfoInstance
        if (params.userInfoID) {
            userInfoInstance = getUserInfo(params.userInfoID)
            userInfoInstance.updatedDate = new Date()
        } else {
            userInfoInstance = new UserInfo()
        }
        User userInstance = userInfoInstance?.user
        if (!userInfoInstance?.user) {
            userInstance = new User()
        }
        def password = "password"

        userInstance.username = params.email
        userInstance.password = password
        Role role = Role.findByAuthority("ROLE_DRIVER")

        try{
            if (userInstance.save(flush: true)) {
                UserRole.create(userInstance, role, true)
            }
            userInfoInstance.properties = params
            userInfoInstance.password = password
            userInfoInstance.user = userInstance
            userInfoInstance.save(flush: true, failOnError: true)
            return userInfoInstance
        }catch (Exception e){
            return null
        }
    }

}
