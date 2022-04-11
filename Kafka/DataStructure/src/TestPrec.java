import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class TestPrec {
	
	public TestPrec() {
		
		
	}
	
	public static void main(String[] args) {
		int[] arr = {1,0,2,0,23,0,34,54};
		
		//o/p 1,2,23,34,54,0,0,0
		
		
		
//		select * from employee order by sal desc limit 1 offset 3; 
		
		
		int[] tempArr = new int[arr.length];
		int count=0;
		int temp;
		for(int i=0 ;i<arr.length;i++) {
			
			if(arr[i] !=0) {
				
			}else {
				if(arr[i] == 0) {
					temp =arr[i];
					arr[i]= arr[i+1];
					arr[i+1] = temp;
				}
			}
		}
		
//		for(int i=0 ;i<tempArr.length;i++) {
//			if(i>=count) {
//				tempArr[i]=0;
//			}
//			
//		}
		
		
		
		System.out.println(Arrays.toString(arr));
		
	}

}
