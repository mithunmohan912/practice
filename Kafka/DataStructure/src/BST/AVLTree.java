package BST;

public class AVLTree {
	Node root;
	
	
	public AVLTree() {
	}
	
	private Node rightRotate(Node node) {
		Node leftNode = node.left;
		
		Node tempRightNode = leftNode.right;
//		node = leftNode;
		node.left=tempRightNode;
		leftNode.right = node;
//		node=leftNode;
		leftNode.height = 1+ Math.max(height(leftNode.left), height(leftNode.right));
		node.height=1+ Math.max(height(node.left), height(node.right));		
		return leftNode;
	}

	private Node leftRotate(Node node) {
		Node right = node.right;
		Node origLeftofRight = right.left;
//		Node rightChild = node.right.right;
		right.left=node;
//		right.right=rightChild;
//		node=right;
		node.right = origLeftofRight;
		right.height = 1+ Math.max(height(right.left), height(right.right));
		node.height = 1+ Math.max(height(node.right), height(node.left));
		return right;
	}
	
	private int getBalance(Node node) {
		if(node == null) {
			return 0;
		}
		return height(node.left) - height(node.right);
		
		
	}
	
	private int height(Node N) { 
        if (N == null) 
            return 0; 
  
        return N.height; 
    } 
	private Node insert(Node nodeData, int data) {
		
		if(nodeData == null) {
			return new Node(data);
		}
		
		if(nodeData.getData() > data) {
			nodeData.left =  insert(nodeData.left, data);
					
		}else if (nodeData.getData() < data) {
			nodeData.right =  insert(nodeData.right, data);
		}else {
			return nodeData;
		}
		
		nodeData.height = 1+ Math.max(height(nodeData.left), height(nodeData.right));
		
		int balanceFactor = getBalance(nodeData);
		//LL
		if(balanceFactor>1 && nodeData.left.data > data) {
			return rightRotate(nodeData);
			// rr
		}else if (balanceFactor< -1 && nodeData.right.data < data) {
			return leftRotate(nodeData);
		}else if(balanceFactor>1 && nodeData.left!=null && data > nodeData.left.data){//lr
			nodeData.left = leftRotate(nodeData.left);
			return rightRotate(nodeData);
			
		}else if(balanceFactor<-1 && data < nodeData.right.data){
			nodeData.right = rightRotate(nodeData.right);
			return leftRotate(nodeData);			
		}
		return nodeData;
	}
	
	
	private void preOrderTraversal(Node node) {
		if(node!=null) {
			System.out.println(node.data + " ");
		preOrderTraversal(node.left);
		preOrderTraversal(node.right);
		}
	}
	
	public static void main(String[] args) {
		
		AVLTree tree = new AVLTree();
		tree.root = tree.insert(tree.root, 10);
		tree.root = tree.insert(tree.root, 20);
		tree.root = tree.insert(tree.root, 15);
//		tree.root = tree.insert(tree.root, 40);
//		tree.root = tree.insert(tree.root, 50);
//		tree.root = tree.insert(tree.root, 25);
		tree.preOrderTraversal(tree.root);
	}
	



private class Node {
	Node left;
	Node right;
	int data;
	int height = 0;
	
	public Node() {
		height = 1;
	}
	public Node(int data) {
		height = 1;
		this.data = data;
	}
	
	public Node getLeft() {
		return left;
	}
	public void setLeft(Node left) {
		this.left = left;
	}
	public Node getRight() {
		return right;
	}
	public void setRight(Node right) {
		this.right = right;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public int getData() {
		return data;
	}
	public void setData(int data) {
		this.data = data;
	}	

}

	
	
	
}