import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.HashMap;
import java.util.Iterator;

public class KIntergers {
	static long count = 0;
	private HashMap<Integer,Long> factorials = new HashMap<Integer, Long>();

	public static void recur(long[] A, Deque<Long> out, int k, int i, int n) {
		try {
			if (out.size() == k) {
				long sum = 0;
				Iterator<Long> itr = out.iterator();
				System.out.println("out: "+out.toString());
				while (itr.hasNext()) {
					sum = sum + itr.next();
				}
				if (sum % 2 == 0) {
					System.out.println(sum);
					count++;
				}
				return;
			}

			for (int j = i; j < n; j++) {
				out.addLast(A[j]);
				recur(A, out, k, 0, n);
				out.pollLast();
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	private static long factorial(int n) {
		if(n==0) {
			return 1;
		}
		return  n * factorial(n-1);
	}
	
	
	public static void test(int evenLength, int oddLength, int k) {
//		long totalRepitativeEven = k*factorial(evenLength);
		double totalRepitativeEven = Math.pow(evenLength, k);
		
		//as product of 2 odd is odd and sum of 2 odd are even
		//if k is even then sum of k odd is even  else odd
		//if k is odd k-1 is even hence k-1 odd nos can be place with 1 even 
		System.out.println("totalRepitativeEven: "+totalRepitativeEven);
		//with even in btwn
		double numOfOddELement = 0;
//		if(k%2 == 0) {
//			numOfOddELement += Math.pow(oddLength, k);
//		}
		

		for(int i=k;i>0;i--) {
			
			if(i%2 == 0 && k-i <= k) {
				numOfOddELement += (Math.pow(oddLength, i) * Math.pow(evenLength, k-i)) * (factorial(k)/factorial(i)) ;
			}			
//			else {
//				numOfOddELement += factorial(oddArr.length);
//			}
		}
		System.out.println("answer: "+ (totalRepitativeEven + numOfOddELement));
//		long totalRepitativeOdd = 
		//no with repition i.e 11111, 22222 etc
//		int numReption  = k*evenArr.length;
//		int numReptionDiff;
		
		
	}

	public static void main(String[] args) throws IOException {
		OutputStream output = new BufferedOutputStream(System.out);
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		String[] input = reader.readLine().split(" ");
		int m = Integer.parseInt(input[0]);
		int n = Integer.parseInt(input[1]);
		int k = Integer.parseInt(reader.readLine());
		int evenLength = 0;
		int oddLength = 0;
		if (m > 0 && n <= Math.pow(10, 9) && k <= Math.pow(10, 6)) {
			int TotalLength = (n - m+1);
			int length = TotalLength/2;

			if(m%2 == 0 && n%2 == 0) {
				evenLength = length+1;
				oddLength = TotalLength - evenLength;
			}else if( n%2 >0 && m%2 >0) {
				oddLength = length+1;
				evenLength = TotalLength - oddLength;
			}else if((m%2 == 0 && n%2 > 0) || (n%2 == 0 && m%2 > 0)) {
				evenLength = length;
				oddLength = length;
			}
//			long[] evenArr = new long[length];
//			long[] oddArr = new long[length];
//			int evenArrIndex = 0;
//			int oddArrIndex = 0;
//			int j = 0;
//			for (int i = m; i <= n; i++) {
//				if(m%2 == 0) {
////					evenArr[evenArrIndex++] = m;					
//				}else {
////					oddArr[oddArrIndex++] = m;	
//				}
////				A[j] = m;
//				m++;
////				j++;
//			}
			int modulo = 1000000007;
			Deque<Long> out = new ArrayDeque<>();
//			recur(A, out, k, 0, A.length);
			long l = System.currentTimeMillis();
			test(evenLength, oddLength, k);
			System.out.println("time: "+(System.currentTimeMillis() - l));
			output.write(((count % modulo) + "").getBytes());
		} else {
			output.write((0 + "").getBytes());
		}

		output.flush();
	}
}
