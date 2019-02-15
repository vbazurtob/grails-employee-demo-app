package employeeapp

class Employee {

	String name;
	String  title;
	String  phone;
	String  email;
	Department department;

    static constraints = {
    	name maxSize: 100, nullable: false
    	title maxSize: 100, nullable: false
    	phone maxSize: 15, nullable: true
    	email maxSize: 100, nullable: false, email: true
    }
    
    String toString(){
        title + ' ' + name;
    }
}
