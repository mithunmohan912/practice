import java.util.stream.Stream;

public class Palindrome {

	
	public static void main(String[] args) {
		String str = "malayalam";
		char[] chars = str.toCharArray();
		int mid = chars.length/2;
		String firsthalf="";
		String secondhalf="";
				
		for(int i=mid;i>=0;i--) {
			firsthalf = firsthalf+Character.toString(chars[i]);
		}
		
		for(int i=mid;i<chars.length;i++){
			secondhalf = secondhalf+Character.toString(chars[i]);
		}
		
		if(secondhalf.equals(firsthalf)) {
			System.out.println("hello"+secondhalf);
		}else {
			System.out.println("false");
			System.out.println(firsthalf);
			System.out.println(secondhalf);
		}
		
	}
}
