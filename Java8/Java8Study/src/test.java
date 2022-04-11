
public class test {

static int maxFreq(int[] arr, int n) {
    //using moore's voting algorithm
    int res = 0;
    int count = 1;
    for(int i = 1; i < n; i++) {
        if(arr[i] == arr[res]) {
            count++;
        } else {
            count--;
        }
         
        if(count == 0) {
            res = i;
            count = 1;
        }
         
    }
     
    return arr[res];
}
 
public static void main(String[] args) {
	    int arr[] = {30,50,30,40,50,30,30,90,88};
    int n = arr.length;
    int freq =  maxFreq(arr , n);
    int count = 0;
    for(int i = 0; i < n; i++) {
        if(arr[i] == freq) {
            count++;
        }
    }
    System.out.println(count);
    // 100
    int i = 4^(1<<1);
    System.out.println(i);
}


}
