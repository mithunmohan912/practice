package BST;


public class RedBlackTree {

	Node root;
private void reColor(Node grandParent, Node currNode, Node currNodeParent, Node currNodeParentSibiling,Node greatGrandParent) {
	String tempColor;
	if(currNodeParentSibiling!= null && currNodeParentSibiling.color.equals("r")) {
		currNodeParentSibiling.color ="b";
		currNodeParent.color ="b";
		if(greatGrandParent==null) {
			grandParent.color = "b";
		}else {
			grandParent.color = "r";
		}
	}else if(currNodeParentSibiling == null) {
		tempColor = grandParent.color;
		grandParent.color = currNodeParent.color;
		currNodeParent.color=tempColor;
	}
	
}


private Node rebalance(Node grandParent, Node currNode, Node currNodeParent, Node sibilingNode, Node greatGrandParent) {
	
		if(sibilingNode == null || sibilingNode.color.equals("b")) {
			reColor(grandParent, currNode, currNodeParent,sibilingNode,greatGrandParent);
			if(grandParent.right !=null) {
				if(currNode!=null && currNodeParent!=null && currNode.data > currNodeParent.data && currNode.data > grandParent.data) { //RR{
					return leftRotate(grandParent);		
				}else if(currNode!=null && currNodeParent!=null && currNode.data < currNodeParent.data &&  currNode.data > grandParent.data) {//RL
					rightRotate(grandParent);
					return leftRotate(grandParent);	
				}
			}else if(grandParent.left !=null ) {
				if(currNode!=null && currNodeParent!=null && currNode.data < currNodeParent.data &&  currNode.data < grandParent.data) {
					return rightRotate(grandParent);
				}else if(currNode!=null && currNodeParent!=null && currNode.data < currNodeParent.data &&  currNode.data > grandParent.data) {
					leftRotate(grandParent);	
					return rightRotate(grandParent);
				}
			}
		}else {
			reColor(grandParent, currNode, currNodeParent,sibilingNode,greatGrandParent);
		}
	
	return currNode;
}


private Node insert(Node node,int data) {
	Node tempInsertedNode = null;
	Node grandParent = null;
	Node greatGrandParent = null;
	Node parent = null;
	Node current = null;
	if(node == null) {
		Node tNode = new Node(data);
//		tNode.color="b";
		return tNode;
	}
	
	if(data>node.data) {
		tempInsertedNode = insert(node.right, data);
		
		
	}else if(data<node.data) {
		tempInsertedNode = insert(node.left, data);
		
	}else {
		return node;
	}
	if(tempInsertedNode.color == null || !tempInsertedNode.color.equals("b")) {
		tempInsertedNode.color="r";
	}
	current = root;
	if(data>node.data) {
		node.right = tempInsertedNode; 
	}else {
		node.left= tempInsertedNode;
	}
	while(current.data != data) {
		greatGrandParent = grandParent;
		grandParent = parent;
		parent=current;
		current = data>current.data ?current.right:current.left;
//		current = tempInsertedNode;
		
	}
	Node sibilingNode =null;
	if(grandParent!=null) {
		sibilingNode = grandParent.data>parent.data?grandParent.right:grandParent.left;
	}
	if(tempInsertedNode.color.equals("r") && parent.color.equals("r")) {
			node = rebalance(grandParent, tempInsertedNode, parent,sibilingNode,greatGrandParent);
		}

	
	
	
	
	
	return node;
	
}

private Node leftRotate(Node node) {
	Node tempRight = node.right;
	Node tempLeftofRight = tempRight.left;
	
	tempRight.left= node;
	node.right = tempLeftofRight;	
	
	return tempRight;
	
}

private Node rightRotate(Node node) {
	Node tempLeftNode = node.left;
	Node tempRightOfLeft = tempLeftNode.right;
	
	tempLeftNode.right = node;
	node.left = tempRightOfLeft;
	return tempLeftNode;
}
	
private void preOrderTraversal(Node node) {
	if(node == null) {
		return;
	}
	System.out.println("data: "+ node.data + "  color: "+node.color);
	preOrderTraversal(node.left);
	preOrderTraversal(node.right);
}

public static void main(String[] args) {
	RedBlackTree tree = new RedBlackTree();
	tree.root = tree.insert(tree.root, 3);
	tree.root = tree.insert(tree.root, 21);
	tree.root = tree.insert(tree.root, 32);
	tree.root = tree.insert(tree.root, 17);
	tree.preOrderTraversal(tree.root);
}
	
}



class Node{
	
	Node left;
	Node right;
	int data;
	String color = "b";
	public Node(int data) {
		this.data = data;
	}
	
}
