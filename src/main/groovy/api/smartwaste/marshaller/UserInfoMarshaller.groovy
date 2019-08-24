package api.smartwaste.marshaller

import grails.converters.JSON
import smartwastemanagementsystem.UserInfo

class UserInfoMarshaller {
    static void  register(){
        JSON.registerObjectMarshaller(UserInfo){UserInfo result->
            return [
                    id:result?.id,
                    fullName : result?.fullName,
                    email : result?.email,
                    phoneNumber : result.phoneNumber
            ]

        }
    }

}
