
public class Employee implements Cloneable {
	
	String name;
	String id;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
		
		
	}
	
	public static void main(String[] args) {
		String str ="malayalam";
		int i=0;
		int j = str.length()-1;
		boolean ispalin = true;
		while(i>=j) {
			if(str.charAt(i++) != str.charAt(j--)) {
				ispalin = false;
			}
			
		}
		
		System.out.println(ispalin);
		
		
	}
	
	@Override
	protected Object clone() throws CloneNotSupportedException {
		return id;
		// TODO Auto-generated method stub
		 
	}
	
	
	

}
