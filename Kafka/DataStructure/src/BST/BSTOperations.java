package BST;



public class BSTOperations {
	private BSTNode root;
	
	public BSTOperations() {
		// TODO Auto-generated constructor stub
	}
	
	private BSTNode add(BSTNode newRoot, BSTNode node) {
//		if(root == null || root.data == -1 ) {
//			root = node;
//		}else {
		
		
			if(newRoot.data>= node.data ) {
				 
				 if(newRoot.left !=null) {
					 add(newRoot.left, node);
				 }else {
					 newRoot.left = node;
					 System.out.println(  newRoot.left.data);

				 }
				 
			}else if (newRoot.data< node.data) {
				
				if(newRoot.right !=null) {
					 add(newRoot.right, node);
				 }else {
					 newRoot.right = node;
					 System.out.println("                             "+  newRoot.right.data);
				 }
			}
//		}
		return newRoot;
		
		
	}
	
	
	public static void main(String[] args) {
		BSTOperations opt = new BSTOperations();
		opt.root = new BSTNode(10);
		System.out.println("==============="+ opt.root.data + "=============");
		opt.add(opt.root, new BSTNode(11));
		opt.add(opt.root, new BSTNode(9));
		opt.add(opt.root, new BSTNode(1));
		opt.add(opt.root, new BSTNode(5));
		opt.add(opt.root, new BSTNode(17));
		opt.add(opt.root, new BSTNode(16));
		opt.add(opt.root, new BSTNode(19));
		
		
		
	}

	static class BSTNode{
		  
		  BSTNode left;
		  BSTNode right;
		  int data = -1;
		public BSTNode(int data) {
			this.data = data;
		}
		
		@Override
		public String toString() {
			return "BSTNode [left=" + left + ", right=" + right + ", data=" + data + "]";
		}	
		
	}

}

