package smartwastemanagementsystem

class BootStrap {

    def init = { servletContext ->
        def superAdmin=User.findByUsername('superadmin') ?: new User(username: 'superadmin', password:'Super@123').save(flush: true, failOnError:true)
        def roleSuperAdmin = Role.findByAuthority('SUPER_ADMIN') ?: new Role(authority: 'SUPER_ADMIN').save(flush: true, failOnError:true)
        UserRole.findWhere(user: superAdmin, role: roleSuperAdmin) ?: UserRole.create(superAdmin, roleSuperAdmin,true)

    }
    def destroy = {
    }
}
