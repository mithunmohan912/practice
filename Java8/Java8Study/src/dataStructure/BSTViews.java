package dataStructure;

import dataStructure.BSTOps.Node;

public class BSTViews {
	
	int maxLevel =-1;
	
	static class Node{
		int data;
		Node left;
		Node right;
		public Node(int data) {
			super();
			this.data = data;
		}
		
		
		
	}
	
	
	
	public void leftView(Node src,int level) {
		
		if(maxLevel < level) {
			maxLevel = level;
			System.out.println(src.data);

		}
		
		
		if(src.left !=null) {
			leftView(src.left, level+1);
		}
		
		if(src.right !=null) {
			leftView(src.right, level+1);
		}
		
	}

	public static void main(String[] args) {
		//for left view
		Node node = new Node(10);
		node.left = new Node(4);
		node.right = new Node(14);
//		node.left.left = new Node(2);
//		node.left.left.left = new Node(1);
//		node.left.left.right = new Node(3);
		node.left.right = new Node(6);
//		node.left.right.right = new Node(7);
		node.right.left = new Node(11);
		node.right.right = new Node(18);
		node.right.right.left = new Node(15);
		
		new BSTViews().leftView(node, 0);
		//left view end
		
	}
}
