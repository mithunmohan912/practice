package com.microservices;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

public class UnitedHealktTestCodeApplication {
	
	
	public UnitedHealktTestCodeApplication() {
		// TODO Auto-generated constructor stub
	}
	

    public int solution(String s, int[] C) {
        // write your code in Java SE 8
    	int cost = 0;
    	char currentRemoved = (char)0;
    	char curr;
        for(int i=0;i<s.length();i++) {
        	curr = s.charAt(i);
        	if(curr == currentRemoved) {
        		continue;
        	}
        	if(s.length()>i+1 && curr == s.charAt(i+1)) {
        		currentRemoved = curr;
        		cost =cost + Math.min(C[i], C[i+1]);
        	}
        }
        System.out.println("cost: "+cost);
        return cost;
    }
    
    public void solution1(int[] A) {
    	HashMap<Integer, List> map = new HashMap<Integer, List>();
    for(int i =0;i< A.length;i++) {
    	map.put(A[i],null);
//    	if(map.get(A[i])!= null) {
//    		map.get(A[i]).add(A[i]);
//    	}else {
//    		map.put(A[i], new ArrayList<Integer>());
//    	}    	
    }
    
    int tempminCostIndex = 0;
    int minCostIndex = 0;
    int[] alreadyTraversed = new int[map.size()];
    Set<Integer> set = new TreeSet<Integer>();
    for(int i =0;i<A.length;i++) {
    	tempminCostIndex = 0;
    	int count =1;    	
    	alreadyTraversed = new int[map.size()];
    	alreadyTraversed[A[i]-1] = A[i];
    	for(int j=i+1;j<A.length;j++) {
    		
    		if(alreadyTraversed[A[j]-1] == 0) {
    			alreadyTraversed[A[j]-1]= A[j];
    			tempminCostIndex = tempminCostIndex + Math.abs(i-j);
    			if(minCostIndex != tempminCostIndex)
    				System.out.println("i : "+i + " j:"+j);
    			count++;
    		}
    		
    		if(count == map.size()) {
    			break;
    		}
    		
    	}
    	if(tempminCostIndex<map.size()) {
    		break;
    	}
    	
//    	if(tempminCostIndex == minCostIndex) {
//    		continue;
//    	}
    	if(minCostIndex == 0) {
    		minCostIndex = tempminCostIndex;
    	}else
    		if(minCostIndex == Math.min(minCostIndex, tempminCostIndex))
//    	minCostIndex = Math.min(minCostIndex, tempminCostIndex);
    	System.out.println("--minCostIndex-----"+minCostIndex);
//    	set.add(minCostIndex);
    	
    }
    
    System.out.println("answer: "+minCostIndex);
//		return set.;
        // write your code in Java SE 8
    }


	public static void main(String[] args) {
		UnitedHealktTestCodeApplication k = new UnitedHealktTestCodeApplication();
//		k.solution("aaaa", new int[]{3, 4, 5, 6});
		
		k.solution1(new int[] {2,1,1,3,2,1,1,3});
	}

}
