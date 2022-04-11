import java.util.List;

public final class Immutable {
	
	String name;
	List<Employee> employee;
	public Immutable(String name, List<Employee> employee) {
		// TODO Auto-generated constructor stub
		this.name = name;
		this.employee = employee;
	    
	
	}
	
	public Immutable  getInstance() {
		Immutable im = new  Immutable(name, employee);
		
		return im; 
	}
	
	
	
	public String getName() {
		return name;
	}
	public List<Employee> getEmployee() {
		return employee;
	}
	
	
	
	
	
	
	
	
	
	
	
	

}
