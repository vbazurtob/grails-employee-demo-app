package employeeapp

class Department {

	String code;
	String  title;

    static constraints = {
    	code nullable: false, maxSize: 4
    	title nullable: false, maxSize: 100
    }
    
    String toString(){
        title;
    }

}
