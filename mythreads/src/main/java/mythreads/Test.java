package mythreads;

import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Test {

	public Test() {
		// TODO Auto-generated constructor stub
	
	PriorityQueue<Integer> pq = new PriorityQueue<Integer>(new Comparator<Integer>(
			) {

				@Override
				public int compare(Integer o1, Integer o2) {
					// TODO Auto-generated method stub
					return o2.intValue()-o1.intValue();
				}
	});
	int[] arr = {-1,-2,-3};
	for(int i=0; i<arr.length;i++) {
		pq.add(new Double(Math.pow(arr[i], 2)).intValue());
	}
	System.out.println(pq);
	}
	
	
	private void test1() {
		int[] arr = {-1,-2,-3};
		int[] arr2 = new int[arr.length];
		for(int i =0; i<arr.length;i++) {
			
			if(i==0) {
				arr[i]=new Double(Math.pow(arr[i], 2)).intValue(); 
			}else {
				int aa = new Double(Math.pow(arr[i-1], 2)).intValue();
				if(aa < arr[i-1]) {
					arr
				}
			}
		}
	}
	
	
	public static void main(String[] args) {
		new Test();
		
		Stream.of("mm","nn","aa","bb").sorted((t1,t2) -> t1.compareTo(t2)).collect(Collectors.toList());
	}
}
