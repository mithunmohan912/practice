package mythreads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;

public class MyClass {
	
	public MyClass() {
		// TODO Auto-generated constructor stub
		
		Map<Integer, String> str = new HashMap<Integer, String>();
		str.put(1, "dw");
		str.put(2, "cw");
		str.put(3, "bw");
		str.put(4, "aw");
		
		List<Entry<Integer, String>> ll = new ArrayList<Map.Entry<Integer,String>>(str.entrySet());
		
		Collections.sort(ll,new Comparator<Entry<Integer, String>>() {

			@Override
			public int compare(Entry<Integer, String> o1, Entry<Integer, String> o2) {
				// TODO Auto-generated method stub
				return o1.getValue().compareTo(o2.getValue());
				
			}
		});
		
		LinkedHashMap<Integer, String> map = str.entrySet().stream().sorted(Entry.comparingByValue()).collect(Collectors.toMap(Map.Entry::getKey,Map.Entry::getValue,(t1,t2)->t1,LinkedHashMap::new ));
	System.out.println(map);
	
	final int arr1[] = {1, 2, 3, 4, 5}; 
    int arr2[] = {10, 20, 30, 40, 50}; 
    arr2 = arr1;       
    arr1 = arr2; 
	}
	
	
	
	public static void main(String[] args) {
		
		List<Object> arr= new ArrayList<Object>();
		new MyClass();
	}

}
