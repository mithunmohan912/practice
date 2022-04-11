package dataStructure;

import java.util.Arrays;

public class QuickSort2 {
	
	
	private void mergesort(int[] arr, int lp, int rp, int pivot) {
		if(lp<rp) {
		int index = partition(arr, lp, rp, pivot);
		
//		if(index == rp) {
//			mergesort(arr, lp, index , arr[index]);
//		}else {
		mergesort(arr, lp, index-1, arr[index-1]);
		mergesort(arr, index, rp , arr[rp]);
//		}
		
		}
	}
	
	private void swap(int[] arr, int orig,int toswapData) {
		int temp = arr[orig];
		arr[orig] = arr[toswapData];
		arr[toswapData] = temp;
		
		
	}
	
	private int partition(int[] arr, int lp, int rp, int pivot) {
		
		int leftpointer = lp-1; 
		int rightponter = rp;
		
		while(true) {
			
			while(arr[++leftpointer]< pivot) {
				
			}
			
			while(rightponter>0 && arr[--rightponter] > pivot) {
				
			}
			
			if(leftpointer < rightponter) {
				swap(arr, leftpointer, rightponter);
				
			}else {
				break;
			}
		}
//		if(leftpointer != rp)
		swap(arr, leftpointer, rp);
		
		
		return leftpointer;
	}
	
	
	public static void main(String[] args) {
		int[] arr = {4,7,1,3,2,10,9,5,11};
		System.out.println("orig arr: "+ Arrays.toString(arr));
		new QuickSort2().mergesort(arr, 0, arr.length-1 , arr[arr.length-1]);
		System.out.println("after sort: "+ Arrays.toString(arr));
	}

}
