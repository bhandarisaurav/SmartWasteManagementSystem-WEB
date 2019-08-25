package api.smartwaste.marshaller

import grails.converters.JSON
import smartwastemanagementsystem.Dustbin
import smartwastemanagementsystem.UserInfo

class UserInfoMarshaller {
    static void register() {
        JSON.registerObjectMarshaller(UserInfo) { UserInfo result ->
            return [
                    userInfoID : result?.id,
                    fullName   : result?.fullName,
                    email      : result?.email,
                    phoneNumber: result?.phoneNumber
            ]

        }
        JSON.registerObjectMarshaller(Dustbin) { Dustbin result ->
            return [
                    id       : result?.id,
                    address  : result?.address,
                    latitude : result?.latitude,
                    longitude: result?.longitude,
                    status   : result?.status + "%"
            ]

        }
    }

}
