package dataStructure;

import java.util.Arrays;

public class MinHeap {
	
	private int[] heap = new int[10];
	private int count = 0;
	
	
	public int parent(int pos) {
		return ((pos-1)/2);
	}
	
	public int leftPos(int pos) {
		return ((2*pos)+1);
	}
	
	public int rightPos(int pos) {
		return ((2*pos)+2);
	}
	
	
	public void insert(int data) {
		heap[count] = data;
		
		int temp;
		int redCount = count;
		while(heap[redCount] < heap[parent(redCount)]) {
			temp = heap[parent(redCount)];
			heap[parent(redCount)] = heap[redCount] ;
			heap[redCount]  = temp;	
			redCount = parent(redCount);
		}		
		
		System.out.println(Arrays.toString(heap));
			count++;
	}
	
	
	
	public void minHeapify(int[] arr) {
		
	}
	
		
	public static void main(String[] args) {
		MinHeap heap = new MinHeap();
		heap.insert(30);
		heap.insert(10);
		heap.insert(8);
		heap.insert(5);
		
		int arr[] = {30,10,8,5};
		heap.minHeapify(arr);
	}
	
	
	

}
