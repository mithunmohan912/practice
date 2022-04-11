import java.util.Arrays;

public class MergeSort {
	
	static int[] tempArr;
	
	
	public MergeSort(int[] arr) {
		// TODO Auto-generated constructor stub

	}
	
	
	public static void sort() {
		int[] arr = {3,4,2,1,7,5,6};
		tempArr = Arrays.copyOf(arr,arr.length);
		divide(0, arr.length-1, arr);
		System.out.println(Arrays.toString(arr));
		
	}
	public static void divide(int low, int high, int[] arr) {
		if(low<high) {
			int mid= low+(high-low)/2;
			divide(0,mid, arr);
			divide(mid+1,high, arr);
			merge(low,mid,high,arr);
		}
	}
	
	public static void merge(int low, int mid,int high, int[] arr) {
		
		int i =low;
		int j= mid+1;
		int lowerIdex = low;;
		while(i<=mid && j<=high) {
			
			if(tempArr[i]<tempArr[j]) {
				arr[lowerIdex]=tempArr[i];
				i++;
				
			}else {
				arr[lowerIdex] = tempArr[j];
				j++;
			}
			lowerIdex++;
			
		}
		
		while(i<mid) {
			
			arr[lowerIdex++]=tempArr[i];
			i++;
		}
		
		while(j<high) {
			arr[lowerIdex++]=tempArr[j];
			j++;			
		}
	}
	
	
	
	public static void main(String[] args) {
		sort();
	}

}
