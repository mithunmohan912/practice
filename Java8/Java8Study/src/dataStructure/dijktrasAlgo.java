package dataStructure;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Set;

public class dijktrasAlgo {
	
	private List<Node> visitedNode;
	private PriorityQueue<Node> unvistiedNodes;
	
	
	public dijktrasAlgo() {
		// TODO Auto-generated constructor stub
		visitedNode = new ArrayList<>();
		unvistiedNodes = new PriorityQueue<dijktrasAlgo.Node>(Comparator.comparing(Node::getCost));
	}
	
	
	private void dijiktras(List<List<Node>> graph, Node source) {
		
		List<Node> adjNodes = graph.get(source.getNodeNo());
		Iterator<Node> it = adjNodes.iterator();
		while(it.hasNext()) {
			Node adjNode = it.next();
			int index = visitedNode.indexOf(adjNode);
			if(index == -1) {
				adjNode.setCost(adjNode.getCost()+source.cost);
				unvistiedNodes.add(adjNode);	
			}
		}
		
//		if(!visitedNode.contains(source)) {
			visitedNode.add(source);
//		}
		Node leastcostNode = unvistiedNodes.remove();
//		leastcostNode.setCost(leastcostNode.cost + source.cost);
		if(visitedNode.size() == graph.size()) {
			System.out.println(visitedNode);
			return;
		}		
		dijiktras(graph, leastcostNode);	
		
	}
	
	
	public static void main(String[] args) {
		List<List<Node>> graph = new ArrayList<>();
		dijktrasAlgo alg = new dijktrasAlgo();
		   for (int i = 0; i < 9; i++) {
	            List<Node> item = new ArrayList<Node>();
	            graph.add(item);
	        }
	  
		graph.get(0).add(alg.new Node(8, 7));
		graph.get(0).add(alg.new Node(4, 1));
		graph.get(1).add(alg.new Node(4, 0));
		graph.get(1).add(alg.new Node(11, 7));
		graph.get(1).add(alg.new Node(8, 2));
		graph.get(7).add(alg.new Node(8, 0));
		graph.get(7).add(alg.new Node(11, 1));
		graph.get(7).add(alg.new Node(1, 6));
		graph.get(7).add(alg.new Node(7, 8));
		graph.get(2).add(alg.new Node(8, 1));
		graph.get(2).add(alg.new Node(2, 8));
		graph.get(2).add(alg.new Node(4, 5));
		graph.get(2).add(alg.new Node(7, 3));
		graph.get(3).add(alg.new Node(7, 2));
		graph.get(3).add(alg.new Node(14, 5));
		graph.get(3).add(alg.new Node(9, 4));
		graph.get(8).add(alg.new Node(2, 2));
		graph.get(8).add(alg.new Node(7, 7));
		graph.get(8).add(alg.new Node(6, 6));
		graph.get(6).add(alg.new Node(6, 8));
		graph.get(6).add(alg.new Node(1, 7));
		graph.get(6).add(alg.new Node(2, 5));
		graph.get(5).add(alg.new Node(2, 6));
		graph.get(5).add(alg.new Node(4, 2));
		graph.get(5).add(alg.new Node(14, 3));
		graph.get(5).add(alg.new Node(10, 4));
		graph.get(4).add(alg.new Node(9, 3));
		graph.get(4).add(alg.new Node(10, 5));
		
		
		
		
		alg.dijiktras(graph, alg.new Node(0, 0));
		
		
		
	}
	
	

	  class Node {
		
		int cost;
		int nodeNo;
		public Node(int cost, int nodeNo) {
			super();
			this.cost = cost;
			this.nodeNo = nodeNo;
		}
		public int getCost() {
			return cost;
		}
		public void setCost(int cost) {
			this.cost = cost;
		}
		public int getNodeNo() {
			return nodeNo;
		}
		public void setNodeNo(int nodeNo) {
			this.nodeNo = nodeNo;
		}
		@Override
		public int hashCode() {
			final int prime = 31;
			int result = 1;
			result = prime * result + cost;
			result = prime * result + nodeNo;
			return result;
		}
		
		
		@Override
		public boolean equals(Object obj) {
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			Node other = (Node) obj;
			if (nodeNo != other.nodeNo)
				return false;
			return true;
		}
		
		@Override
		public String toString() {
			return "Node [cost=" + cost + ", nodeNo=" + nodeNo + "]";
		}		
		
	}
	
}
