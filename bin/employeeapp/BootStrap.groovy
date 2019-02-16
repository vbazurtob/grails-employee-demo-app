
package employeeapp

class BootStrap {

    def init = { servletContext ->
    
    	// Wrong definition of relationships in model classes might cause the init boostrap to fail and populate db
    
    	def sysd = new Department( code: 'SYST', title: 'Systems').save();
    	def psyd = new Department(code: 'PSYC', title: 'Psychology').save();
    	def histd = new Department(code: 'HIST', title: 'History').save();
    	
    	
    	
    	
    	new Employee(name: 'Jane Doe', title: 'Software Developer', phone: ' 250.111.1111', 
    	email: 'jane.doe@uvic.ca', department: sysd).save();
    	
    	new Employee(name: 'Maria Rossi', title: 'Manager', phone: ' 250.111.1111', 
    	email: 'maria.rossi@uvic.ca', department: sysd).save();
        
        new Employee(name: 'Peter Schmidt', title: 'Network analyst', phone: ' 250.111.1111', 
    	email: 'peter.schmidt@uvic.ca', department: sysd).save();
    	
        new Employee(name: 'Ashok Kumar', title: 'Professor', phone: ' 250.111.1111', 
    	email: 'ashok.kumar@uvic.ca', department: psyd).save(); 
    	
    	new Employee(name: 'Pablo Perez', title: 'Assistant', phone: ' 250.111.1111', 
    	email: 'pablo.perez@uvic.ca', department: psyd).save(); 
    	
    	//System users
    	def read = new SysRole( authority: 'ROLE_READ' ).save();
    	def write = new SysRole( authority: 'ROLE_WRITE' ).save();
    	
    	def guest = new SysUser( username: 'guest', password: 'abc').save();
    	def admin = new SysUser( username: 'admin', password: '123').save();
    	
    	new SysUserSysRole(sysUser: guest, sysRole: read).save();
    	new SysUserSysRole(sysUser: admin, sysRole: write).save();
		
    }
    def destroy = {
    }
}
