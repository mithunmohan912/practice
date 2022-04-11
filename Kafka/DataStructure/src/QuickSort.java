import java.util.Arrays;
import java.util.HashMap;

public class QuickSort {
	static int[] array ;
	
	private void swap(int from,int todx, int[] arr) {
		int temp =arr[from];
		arr[from] = arr[todx];
		arr[todx] = temp;
	}
	
	
	public void sort(int[] arr, int low, int high) {
		
		int idx = partion(arr, low, high);
		if(low<idx-1) {
			sort(arr, low, idx-1);
		}
		if(idx>high)
		sort(arr, idx, high);
		
 	}
	
	public int partion(int[] arr, int low, int high) {
		int mid = low+high/2;
		int pivot = arr[mid];
		int lowToHigh = low;
		int highToLow=high;
		//for i 
		
		while(low<=high) {
			while(arr[low] <pivot) {
				low++;
			}
			
			while(arr[high]>pivot) {
				high--;
			}
			
			if(low<=high) {
				swap(low,high,arr);
				low++;
				high--;
			}
			
		}
		
		return low;
		
		
		
		
	}
	

    private static void quickSort(int left, int right) {
 
        int i = left;
        int j = right;
        // find pivot number, we will take it as mid
        int pivot = array[left+(right-left)/2];
 
        while (i <= j) {
            /**
             * In each iteration, we will increment left until we find element greater than pivot
             * We will decrement right until we find element less than pivot
             */
            while (array[i] < pivot) { i++; } while (array[j] > pivot) {
                j--;
            }
            if (i <= j) {
                exchange(i, j);
                //move index to next position on both sides
                i++;
                j--;
            }
        }
        // call quickSort() method recursively
        if (left < j)
            quickSort(left, j);
        if (i < right)
            quickSort(i, right);
    }
 
    private static void exchange(int i, int j) {
        int temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }

	public static void main(String[] args) {
		int[] arr = {9,7,8,3,2,1};
		array = new int[]{9,7,8,3,2,1};
//		new QuickSort().quickSort(arr, 0, arr.length-1);
		new QuickSort().sort(arr, 0, arr.length-1);
		System.out.println(Arrays.toString(arr));
//		quickSort(0, arr.length-1);
//		System.out.println(Arrays.toString(array));
	}
}
