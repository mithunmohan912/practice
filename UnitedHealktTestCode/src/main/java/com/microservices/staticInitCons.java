package com.microservices;

public class staticInitCons {
	
	public staticInitCons() {
	System.out.println("cons..");
	}
	
	{
		System.out.println("init");
	}
	
	static {
		System.out.println("static");
	}
	
	
	public static void main(String[] args) {
		new staticInitCons();
	}

}
