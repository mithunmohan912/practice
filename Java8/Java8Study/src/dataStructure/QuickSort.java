package dataStructure;

public class QuickSort {
	
	public QuickSort() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	public void sort(int[] arr,int low, int high, int pivot) {
		
		int index = partition(arr,low, high, pivot);
		sort(arr,low, index-1, pivot);
		sort(arr,index, high, pivot);
		System.out.println("o/p: "+arr);
	}
	
	
	private void swap(int[] arr, int low, int high) {
		int temp = arr[low];		
		arr[low] = arr[high];
		arr[high] = temp;
		
	}
	
	private int partition(int[] arr, int low, int high, int pivot) {
		// TODO Auto-generated method stub
		int leftpointer = low;
		int rightPonter = high;
		while(true) {			
				while(arr[++leftpointer] < pivot) {
				}
				
				while(rightPonter>0&& arr[--rightPonter] > pivot) {
				}
				if(leftpointer>=rightPonter) {
					break;
				}else {
					swap(arr, leftpointer, rightPonter);
				}
		}
		
		swap(arr, leftpointer, high);
		
		return leftpointer;
	}




	public static void main(String[] args) {
	
		int[] arr = {6,2,1,8,10,12,1,5,22};
		
		new QuickSort().sort(arr, 0, arr.length-1, arr[arr.length-1]);
	}
	

}
