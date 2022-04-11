
public class Test {
	
	public static void main(String[] args) {
		
		String str= "aabcccabba";
		String left = str.substring(0, str.length()/2);
		String right = str.substring(str.length()/2);
		compute(right, left);
		
		String s = new String("mith");
		String st = "weee";
		testString(s, st);
		System.out.println(s + "     "+st);
		
	}
	
	
	private static void testString(String str, String str1) {
		str = str + "mt";
		str1 = str1 + "pqr";
		System.out.println(">>>"+ str + "     "+str1);

	}
//	
//	private void checkIfCharacterPresent(String left, String right, String charc) {
//		while(left.endsWith(charc) || right.endsWith(charc)) {
//			if(left.endsWith(charc)) {
//			left.substring(0,left.length()-1);
//			}
//			if(right.endsWith(charc)) {
//				left.substring(0,left.length()-1);
//			}
//		}
//	}
	private static void compute(String left, String right) {		
		
		while(left.charAt(left.length()-1) == right.charAt(0) ) {
			String charc = String.valueOf(right.charAt(0));
			while(left.endsWith(charc) || right.startsWith(charc)) {
				if(left.endsWith(charc)) {
					left = left.substring(0,left.length()-1);
				}
				if(right.startsWith(charc)) {
					right = right.substring(1);
				}
			}
		}
		if(left.charAt(left.length()-1) != right.charAt(0)) { 
		
			System.out.println(left+right);
			return;
		}
	}
}
