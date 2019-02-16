


// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'employeeapp.SysUser'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'employeeapp.SysUserSysRole'
grails.plugin.springsecurity.authority.className = 'employeeapp.SysRole'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/',               access: ['permitAll']],
	[pattern: '/error',          access: ['permitAll']],
	[pattern: '/index',          access: ['permitAll']],
	[pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/**/favicon.ico', access: ['permitAll']],
//	[pattern: '/dbconsole/**', access: ['ROLE_READ']]
	
]


grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	
//	[pattern: '/dbconsole/**', filters: 'none'],
	
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]

//Comment for prod
//grails.plugin.springsecurity.logout.postOnly = false



