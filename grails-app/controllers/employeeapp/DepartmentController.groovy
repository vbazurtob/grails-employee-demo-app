package employeeapp

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

import grails.plugin.springsecurity.annotation.Secured;


@Secured(['ROLE_READ', 'ROLE_WRITE'])
class DepartmentController {

    DepartmentService departmentService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]


    def index(Integer max) {
        
        params.max = Math.min(max ?: 10, 100)
        respond departmentService.list(params), model:[departmentCount: departmentService.count()]
    }


    def show(Long id) {
        respond departmentService.get(id)
    }

	@Secured(['ROLE_WRITE'])
    def create() {
        respond new Department(params)
    }

	@Secured(['ROLE_WRITE'])
    def save(Department department) {
        if (department == null) {
            notFound()
            return
        }

        try {
            departmentService.save(department)
        } catch (ValidationException e) {
            respond department.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'department.label', default: 'Department'), department.id])
                redirect department
            }
            '*' { respond department, [status: CREATED] }
        }
    }


	@Secured(['ROLE_WRITE'])
    def edit(Long id) {
        respond departmentService.get(id)
    }

	@Secured(['ROLE_WRITE'])
    def update(Department department) {
        if (department == null) {
            notFound()
            return
        }

        try {
            departmentService.save(department)
        } catch (ValidationException e) {
            respond department.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'department.label', default: 'Department'), department.id])
                redirect department
            }
            '*'{ respond department, [status: OK] }
        }
    }

	@Secured(['ROLE_WRITE'])
    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        departmentService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'department.label', default: 'Department'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'department.label', default: 'Department'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
