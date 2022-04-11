package com.microservices;

import org.springframework.boot.SpringApplication;

public class ChileTest extends Test {
	
	public ChileTest() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public int mymeth() {
		// TODO Auto-generated method stub
		System.out.println("my met child..");
		return 0;
	}

	public static void main(String[] args) throws Exception {
		
		ChileTest t = new ChileTest();
		Test t1= t;
		ChileTest ch = (ChileTest) t1;
		t1.test();
		t1.mymeth();
		System.out.println(" ch-----");
		ch.mymeth();
		ch.test();
		ch.test2();

		try {
			System.out.println("----???");
		}catch(Exception e) {
			
		}finally {
			System.out.println("-----");
		}
	}

	@Override
	public void test() {
		// TODO Auto-generated method stub
		
		System.out.println("hi");
	}
	
	
	public void test2() {
		System.out.println("there");
	}

}
