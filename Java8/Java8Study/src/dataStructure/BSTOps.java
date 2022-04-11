package dataStructure;

public class BSTOps {
	
	int maxLevel = 0;
	
	public static void main(String[] args) {
		Node node = new Node(5);
		node.left = new Node(2);
		node.left.left = new Node(1);
		node.left.right = new Node(3);
		node.right = new Node(7);
		node.right.right = new Node(8);
		node.right.left = new Node(6);
		
		boolean[] arr = new boolean[10] ;
		arr[0] = true;
		new BSTOps().leftBSTView(node.left, 0, arr);
		
		new BSTOps().rightBSTView(node.right, 0);
	}
	
	//   5
	// 2   7
	//1 3  6
//          
//156
	private void leftBSTView(Node source, int level, boolean[] levelarr) {
		boolean nodeprint = false;		
		if(source == null) {
			return;
		}
//		if(levelarr[level]) {
//			System.out.println("print>>>"+source.data);
//			levelarr[level]=false;
//		}
		
		if(maxLevel ==0 || maxLevel < level) {
			maxLevel = level;
			System.out.println(source.data);
		}
//		if(source.left !=null && !levelarr[++level]) {
//			levelarr[level] = true;
////			nodeprint = true;
//		}
		
		leftBSTView(source.left, level+1,levelarr);
		
		
		leftBSTView(source.right, level+1, levelarr);
		
	}
	
	private void rightBSTView(Node source, int level) {
		boolean nodeprint = false;		
		if(source == null) {
			return;
		}
//		if(levelarr[level]) {
//			levelarr[level]=false;
//			System.out.println("print>>>"+source.data);
//		}
		
		if(maxLevel ==0 || maxLevel < level) {
			maxLevel = level;
			System.out.println(source.data);
		}
//		if(source.left !=null && !levelarr[++level]) {
////			nodeprint = true;
//			levelarr[level] = true;
//		}
		
		rightBSTView(source.right, level+1);

		
		rightBSTView(source.left, level+1);
		
	}
	
	
	
	
	
	static class Node{
		public Node left;
		public Node right;
		public int data;
		public Node(int data) {
			this.data = data;
		}
		
		
		
	}

}
