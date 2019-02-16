package employeeapp

import grails.plugin.springsecurity.annotation.Secured;

@Secured(['ROLE_READ', 'ROLE_WRITE'])
class ReportController {

    def index(Integer max) { 
    
      params.max = Math.min(max ?: 10, 100) 
      
      def employeeList = Employee.createCriteria().list (params) {
            if ( params.query ) {
                ilike("name", "%${params.query}%")
            }
      }
      
      
      respond employeeList, model:[employeeCount: Employee.count()] 
    
    }
}
