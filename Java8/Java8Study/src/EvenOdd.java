
public class EvenOdd {
	
	
	public void test() {
		
		int[] arr= {11,2,3,10,5,4,8};
		int even = 0;
		int odd = 0;
		
		for (int i = 1; i <= arr.length; i++) {
			if(i%2 != 0)
				even += arr[i-1];
			else
				odd +=arr[i-1];			
		}
		
		//stores sum of even index
		int currOdd = 0;
		//stores sum of odd index
		int currEven = arr[0];
		
		int newEvenSum=0;
		int newOddSum=0;
		//1, 2, 4,3
		
		for (int i = 1; i <= arr.length; i++) {
			if(i%2 != 0) {
				currOdd += arr[i];
				
				newEvenSum =  
						
				newOddSum = currEven + ; 
				
				
				
				
				
				
			}else {
				
			}
			
			
			
						
		}
		
		
		
		
		
		
	}
	
	
	public static void main(String[] args) {
		
	}

}
