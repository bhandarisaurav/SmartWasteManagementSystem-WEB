package smartwastemanagementsystem
import api.smartwaste.marshaller.*

class BootStrap {

    def init = { servletContext ->
        def superAdmin=User.findByUsername('superadmin') ?: new User(username: 'superadmin', password:'Super@123').save(flush: true, failOnError:true)
        def roleSuperAdmin = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(flush: true, failOnError:true)
        def roleDriver = Role.findByAuthority('ROLE_DRIVER') ?: new Role(authority: 'ROLE_DRIVER').save(flush: true, failOnError:true)

        UserRole.findWhere(user: superAdmin, role: roleSuperAdmin) ?: UserRole.create(superAdmin, roleSuperAdmin,true)
        UserInfoMarshaller.register()
    }
    def destroy = {
    }
}
