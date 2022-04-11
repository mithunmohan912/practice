import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Scanner;
import java.util.stream.Stream;

public class InsertionSort {

	public InsertionSort() {
	
	}
	
	private int[] sort(int[] arr) {
		for (int i = 0; i < arr.length-1; i++) {
			if(arr[i]>arr[i+1]) {
				arr = shiftIndex(arr, arr[i+1], i+1);
			}
		}		return arr;
	}
	
	
	private int[] shiftIndex(int[] arr, int replaceVal, int movingIndexTo) {
		int bufferVal = 0;
		int nextbufferVal = 0;
		for(int i = 0;i<arr.length;i++) {
			if(i>movingIndexTo) {
				break;
			}
			if(arr[i]>replaceVal && bufferVal == 0) { 
				bufferVal = arr[i];
				arr[i]=replaceVal;
			}else if(bufferVal>0) {
				nextbufferVal = arr[i];
				arr[i] = bufferVal;
				bufferVal = nextbufferVal;
			}
			System.out.println(Arrays.toString(arr).substring(1,Arrays.toString(arr).length()-1).replaceAll(",", " "));
		}
		return arr;		
	}
	
	
	public static void main(String[] args) throws NumberFormatException, IOException {
		
//		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		
//		int[] array = new int[Integer.parseInt(reader.readLine())];
//		String[] arrayData = reader.readLine().split(" ");
//		int[] array = Stream.of(arrayData).mapToInt(data-> Integer.parseInt(data)).toArray();
		int[] array1 = {9,5,7,4,1,8,3,18,6,2};
		int[] array = {2,4,6,8,3};
		
		InsertionSort is=new InsertionSort();
		is.sort(array);
	}

}
