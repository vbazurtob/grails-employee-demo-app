package employeeapp

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.codehaus.groovy.util.HashCodeHelper
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@ToString(cache=true, includeNames=true, includePackage=false)
class SysUserSysRole implements Serializable {

	private static final long serialVersionUID = 1

	SysUser sysUser
	SysRole sysRole

	@Override
	boolean equals(other) {
		if (other instanceof SysUserSysRole) {
			other.sysUserId == sysUser?.id && other.sysRoleId == sysRole?.id
		}
	}

    @Override
	int hashCode() {
	    int hashCode = HashCodeHelper.initHash()
        if (sysUser) {
            hashCode = HashCodeHelper.updateHash(hashCode, sysUser.id)
		}
		if (sysRole) {
		    hashCode = HashCodeHelper.updateHash(hashCode, sysRole.id)
		}
		hashCode
	}

	static SysUserSysRole get(long sysUserId, long sysRoleId) {
		criteriaFor(sysUserId, sysRoleId).get()
	}

	static boolean exists(long sysUserId, long sysRoleId) {
		criteriaFor(sysUserId, sysRoleId).count()
	}

	private static DetachedCriteria criteriaFor(long sysUserId, long sysRoleId) {
		SysUserSysRole.where {
			sysUser == SysUser.load(sysUserId) &&
			sysRole == SysRole.load(sysRoleId)
		}
	}

	static SysUserSysRole create(SysUser sysUser, SysRole sysRole, boolean flush = false) {
		def instance = new SysUserSysRole(sysUser: sysUser, sysRole: sysRole)
		instance.save(flush: flush)
		instance
	}

	static boolean remove(SysUser u, SysRole r) {
		if (u != null && r != null) {
			SysUserSysRole.where { sysUser == u && sysRole == r }.deleteAll()
		}
	}

	static int removeAll(SysUser u) {
		u == null ? 0 : SysUserSysRole.where { sysUser == u }.deleteAll() as int
	}

	static int removeAll(SysRole r) {
		r == null ? 0 : SysUserSysRole.where { sysRole == r }.deleteAll() as int
	}

	static constraints = {
	    sysUser nullable: false
		sysRole nullable: false, validator: { SysRole r, SysUserSysRole ur ->
			if (ur.sysUser?.id) {
				if (SysUserSysRole.exists(ur.sysUser.id, r.id)) {
				    return ['userRole.exists']
				}
			}
		}
	}

	static mapping = {
		id composite: ['sysUser', 'sysRole']
		version false
	}
}
