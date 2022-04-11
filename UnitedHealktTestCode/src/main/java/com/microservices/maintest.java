package com.microservices;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class maintest {
	
	public maintest() {
		// TODO Auto-generated constructor stub
	}

	
	public static void main(String[] args) {
		System.out.println(Stream.of("aa","aa","bb","bb","cc","cc").collect(Collectors.groupingBy(Function.identity(),Collectors.counting())));
		Test t = new ChileTest();
		ChileTest t1 = new ChileTest();
		t.test();
		t1.test();
		t1.statictest();
//		List<Integer> li =new ArrayList<>();
//		li.add("dsafsd")
		
		String syt= new String("mithun");
		String s2 = "mithun";
				System.out.println(syt.intern() == s2.intern());
				System.out.println(syt.intern() == s2);
				System.out.println(syt.intern() == "mithun");
		
	}
	
	
}
