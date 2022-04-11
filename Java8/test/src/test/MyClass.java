package test;

public class MyClass {
	
	
	public MyClass() {
		// TODO Auto-generated constructor stub
	}
	
	
	public static void test() {
		
		int[] arr = {28, 32, 23, 88, 55, 60};
		int previous=arr[0];
		int curr;
		for (int i = 1; i < arr.length; i++) {
			curr = arr[i];
			if(arr.length>i+1  && curr>previous && curr>arr[i+1]) {
				System.out.println(curr);
			}
			previous = curr;
			
		}
		
		
	}
	public static void main(String[] args) {
		
		new MyClass().test();
		
	}
	

}
