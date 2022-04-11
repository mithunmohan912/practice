import java.util.Stack;

public class towerOfHanoi {
	
	public static void main(String[] args) {
		Stack<Integer> source = new Stack<Integer>();
		source.add(4);
		source.add(3);
		source.add(2);
		source.add(1);
		Stack<Integer> helper = new Stack<Integer>();
		Stack<Integer> destination = new Stack<Integer>();
//		helper.push(source.pop());
//		destination.push(source.pop());
		createTowerOfHanoi("A","B","C",4);
		
	}

	private static void createTowerOfHanoi(String source, String helper, String destination, int size) {
		if(size == 1) {
			System.out.println("move disk "+ size + "  from source: "+ source +" to destination: "+ destination);

			return;
		}	
			createTowerOfHanoi(source, destination,helper,size-1);
			System.out.println("move disk "+ size + "  from source: "+ source +" to destination: "+ destination);
			
			createTowerOfHanoi(helper,source,destination, size-1);
		
	}
}
