package dataStructure;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Stack;
import java.util.TreeMap;

public class LeftViewBST {

	Node root;
	Queue<Node> myQueue = new LinkedList<Node>();

	public LeftViewBST() {
		// TODO Auto-generated constructor stub

//		root = new Node(6);
	}

	Node leftView() {
		Queue<Node> queue = new LinkedList<Node>();
		queue.add(root.left);
//		root.right = null;
//		Node temp = root.left;

		while (!queue.isEmpty()) {

			Node n = queue.poll();
			System.out.println(n.data);
			if (n.left != null) {
				queue.add(n.left);

			}

			if (n.right != null) {
				queue.add(n.right);

			}

//			while(temp.left !=null) {
//				queue.add(temp.left);	
//				temp = temp.left;
//			}
//			
//			Node nwtemp =  queue.poll();
//			while(nwtemp.right !=null) {
//				queue.add(temp.left);	
//				temp = temp.left;
//			}

		}

		return root;

	}

	Node addToBST(Node source) {

		if (root == null) {
			root = source;
		} else {
			Node temp = root;
			while (temp != null && (temp.data < source.data || temp.data > source.data)) {
				if (temp.data > source.data) {
					if (temp.left == null) {
						temp.left = source;
						break;
					} else
						temp = temp.left;
				} else {
					if (temp.right == null) {
						temp.right = source;
						break;
					} else
						temp = temp.right;
				}
			}
		}
//		System.out.println(root);
		return root;

	}

	private void bottomView() {

		Node temp;
		Stack<Node> st = new Stack<>();
		st.add(root);
		boolean isrootToBePrinted = false;

		while (!st.empty()) {

			temp = st.pop();
			if (temp.left != null) {
				st.push(temp.left);
			}
			if (temp.right != null) {
				st.push(temp.right);
			}

			isrootToBePrinted = false;
			if (temp.left != null && (temp.left.left == null || temp.left.right == null)) {
				if (temp.right == null || temp.right.left == null) {

					isrootToBePrinted = true;
				}
				System.out.println("left:  " + temp.left.data);

			}

			if (temp.right != null && (temp.right.left == null || temp.right.right == null)) {
				if (isrootToBePrinted && (temp.left == null || temp.left.right == null))
					System.out.println("right root:  " + temp.data);
				System.out.println("right" + temp.right.data);

			}
		}
	}

	private int printNodeForLevel(int currentLvl, int checkLevel, Node node, boolean isRH) {

		if (node == null || currentLvl > checkLevel) {
			return -1;
		}
		if (currentLvl == checkLevel) {
			System.out.println("-- " + node.data);
			maxleafcount++;
		}
		if (isRH) {
			printNodeForLevel(currentLvl + 1, checkLevel, node.right, isRH);
			printNodeForLevel(currentLvl + 1, checkLevel, node.left, isRH);
		} else {
			printNodeForLevel(currentLvl + 1, checkLevel, node.left, isRH);
			printNodeForLevel(currentLvl + 1, checkLevel, node.right, isRH);
		}

		return maxleafcount == 0 ? -1 : currentLvl;
	}

	private int maxleafcount = 0;

	private void zigzag(Node node) {

		boolean isRH = false;
		int currLevel = 0;
		int checkLvl = 0;
		double two = 2;
//		int maxCountLevel =0;

		while (true) {
//			maxCountLevel = (int) Math.pow(two, new Double(checkLvl).doubleValue());
			int temp = printNodeForLevel(0, checkLvl, node, isRH);
			isRH = !isRH;
			checkLvl++;
			if (temp == -1) {
				break;
			}
			maxleafcount = 0;
		}

	}

	private void printZigZag(Node src, int level) {

		boolean isRL = true;
		while (!myQueue.isEmpty()) {

			Node tempNode = myQueue.poll();
			System.out.println(tempNode.data);
			if (isRL) {
				if (tempNode.right != null) {
					myQueue.add(tempNode.right);

				}
				if (tempNode.left != null) {
					myQueue.add(tempNode.left);
				}
			} else {

				if (tempNode.left != null) {
					myQueue.add(tempNode.left);

				}
				if (tempNode.right != null) {
					myQueue.add(tempNode.right);
				}
			}
		}

	}

	Map<Integer, int[]> cachedMap = new TreeMap();

	private void bottomViewUpdated(Node src, int lvl, int hd) {

		if (src == null) {
			return;
		}
		if(cachedMap.get(hd) == null) {
		cachedMap.put(hd, new int[] {src.data,lvl});
		}else {
			int[] temp = cachedMap.get(hd);
			
			if(temp[1] <= lvl) {
				temp[1] = lvl;
				temp[0] = src.data;
			}
			
			cachedMap.put(hd, temp);
		}

		if (src.left != null) {
			bottomViewUpdated(src.left, lvl + 1, hd - 1);
		}

		if (src.right != null) {
			bottomViewUpdated(src.right, lvl + 1, hd + 1);
		}

	}
	
	public static void main(String[] args) {
		LeftViewBST lv = new LeftViewBST();
		lv.addToBST(new Node(10));
		lv.addToBST(new Node(14));
		lv.addToBST(new Node(9));
		lv.addToBST(new Node(4));
		lv.addToBST(new Node(2));
		lv.addToBST(new Node(6));
		lv.addToBST(new Node(1));
		lv.addToBST(new Node(3));
		lv.addToBST(new Node(18));
		lv.addToBST(new Node(15));
		lv.addToBST(new Node(7));
		lv.addToBST(new Node(12));
//		lv.leftView();
//		lv.bottomView();
//		lv.myStack.add(lv.root);
		System.out.println(lv.root);
//		lv.printZigZag(lv.root);
//		lv.zigzag(lv.root);
		lv.bottomViewUpdated(lv.root, 0, 0);
//		System.out.println(lv.cachedMap.values());
//		System.out.println(lv.root);
		lv.cachedMap.entrySet().stream().forEach(t ->  System.out.println(t.getKey()+ "   "+Arrays.toString(t.getValue())));

	}

	static class Node {
		Node left;
		Node right;
		int data;

		public Node(int data) {
			// TODO Auto-generated constructor stub
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

		public int getData() {
			return data;
		}

		public void setData(int data) {
			this.data = data;
		}

		@Override
		public String toString() {
			return "data=" + data;
		}
	}

}
