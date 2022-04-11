package test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class AddTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Test1 test = (t1,t2)->{
			return t1+t2;
		};
		
		System.out.println(test.apply(2, 3));
		
		List<Student> stList = Arrays.asList(new Student(1,"a"),new Student(2,"b"),new Student(2,"b"),new Student(2,"b")
				,new Student(3,"c"),new Student(3,"c"),new Student(1,"a"));
		int count=0;
		
		
		
		
		
		Iterator<Student> iterator = stList.iterator();
		Student tempStudent = null;
		Student curr;
		List<Student> newList = new ArrayList<Student>();
		while(iterator.hasNext()) {
			curr =iterator.next();
						
			if(tempStudent ==null || !curr.getName().equals(tempStudent.getName()) ) {
				System.out.println(curr.toString());
				if(!newList.contains(curr))
				newList.add(curr);
			}
			tempStudent=curr;
		}
		
		
		
		System.out.println(AddTest.reverse("rahul"));
		
		
		
	}
	
	
	//rahul
	//
	
	public static String reverse(String str) {
		if(str.length()==0) {
			return ""; 
		}
//		System.out.print();
		return str.charAt(str.length()-1) + reverse(str.substring(0,str.length()-1));
		
		
		
	}

}
