package dataStructure;

import java.util.concurrent.ConcurrentHashMap;

public class TowerOfHanoi {
	
	
	public TowerOfHanoi() {
		// TODO Auto-generated constructor stub
	}
	
	
	public void buildTower(int n , char from, char to, char helper) {
		
		if(n ==1) {
			System.out.println("move disk: "+n  +"from: " + from  +  "to: "+to + "using: " +helper);

			return;
		}

		buildTower(n-1, from, helper, to);
		System.out.println("move disk: "+n  +"from: " + from  +  "to: "+to + "using: " +helper);

		buildTower(n-1, helper, to, from);
		
	}
	
	public static void main(String[] args) {
		
		new TowerOfHanoi().buildTower(4, 'A', 'C', 'B');
		
		
		ConcurrentHashMap map =new ConcurrentHashMap();
		map.put("", "");
		
	}

}
