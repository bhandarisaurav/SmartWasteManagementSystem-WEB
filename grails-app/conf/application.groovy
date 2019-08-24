grails.resources.pattern = '/**'

/*Additional Spring sec configs*/
grails.plugin.springsecurity.successHandler.defaultTargetUrl = '/dashboard/check'
grails.plugin.springsecurity.failureHandler.defaultFailureUrl = '/'
grails.plugin.springsecurity.auth.loginFormUrl = '/'
grails.plugin.springsecurity.logout.postOnly = false
grails.plugin.springsecurity.apf.storeLastUsername = true
// Added by the Spring Security Core plugin:

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'smartwastemanagementsystem.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'smartwastemanagementsystem.UserRole'
grails.plugin.springsecurity.authority.className = 'smartwastemanagementsystem.Role'

grails.plugin.springsecurity.controllerAnnotations.staticRules = [
        [pattern: '/', access: ['permitAll']],
        [pattern: '/error', access: ['permitAll']],
        [pattern: '/notFound', access: ['permitAll']],
        [pattern: '/index', access: ['permitAll']],
        [pattern: '/index.gsp', access: ['permitAll']],
        [pattern: '/shutdown', access: ['permitAll']],
        [pattern: '/assets/**', access: ['permitAll']],
        [pattern: '/**/js/**', access: ['permitAll']],
        [pattern: '/**/css/**', access: ['permitAll']],
        [pattern: '/**/images/**', access: ['permitAll']],
        [pattern: '/**/favicon.ico', access: ['permitAll']]
]
grails.plugin.springsecurity.successHandler.alwaysUseDefault = true
grails.plugin.springsecurity.useSecurityEventListener = true
grails.plugin.springsecurity.interceptUrlMap = [
        [pattern: '/', access: ['permitAll']],
        [pattern: '/error', access: ['permitAll']],
        [pattern: '/notFound', access: ['permitAll']],
        [pattern: '/index', access: ['permitAll']],
        [pattern: '/index.gsp', access: ['permitAll']],
        [pattern: '/shutdown', access: ['permitAll']],
        [pattern: '/assets/**', access: ['permitAll']],
        [pattern: '/assets/stylesheets/*', access: ['permitAll']],
        [pattern: '/assets/stylesheets', access: ['permitAll']],
        [pattern: '/assets/javascripts/*', access: ['permitAll']],
        [pattern: '/assets/javascripts', access: ['permitAll']],
        [pattern: '/assets/images/*', access: ['permitAll']],
        [pattern: '/assets/images', access: ['permitAll']],
        [pattern: '/**/js/**', access: ['permitAll']],
        [pattern: '/**/css/**', access: ['permitAll']],
        [pattern: '/**/images/**', access: ['permitAll']],
        [pattern: '/**/favicon.ico', access: ['permitAll']],
        [pattern: '/api/login', access: ['permitAll']],
        [pattern: '/api/logout', access: ['permitAll']],
        [pattern: '/login/**', access: ['permitAll']],
        [pattern: '/logout/**', access: ['permitAll']],
        [pattern: '/login/impersonate', access: ['ROLE_ADMIN']],
        [pattern: '/logout/impersonate', access: ['permitAll']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
        [pattern: '/assets/**', filters: 'none'],
        [pattern: '/**/js/**', filters: 'none'],
        [pattern: '/**/css/**', filters: 'none'],
        [pattern: '/**/images/**', filters: 'none'],
        [pattern: '/**/favicon.ico', filters: 'none'],
        [pattern: '/api/**', filters: 'JOINED_FILTERS,-exceptionTranslationFilter,-authenticationProcessingFilter,-securityContextPersistenceFilter'], // Stateless chain
        [pattern: '/**', filters: 'JOINED_FILTERS,-restTokenValidationFilter,-restExceptionTranslationFilter']   // Traditional chain
]
