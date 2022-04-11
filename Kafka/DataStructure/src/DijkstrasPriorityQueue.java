import java.awt.GradientPaint;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Queue;

public class DijkstrasPriorityQueue {
	private List<Node>visitedNodes;
	private PriorityQueue<Node>unvisitedNodes;

	public DijkstrasPriorityQueue(Node source) {
		// TODO Auto-generated constructor stub
		unvisitedNodes = new PriorityQueue<Node>(new Node());
		visitedNodes  = new ArrayList<Node>();
		visitedNodes.add(source);
	}
	
	private void findshortestDist(List<List<Node>> graph, Node source){
		
		List<Node> currentAdjacentNodes = graph.get(source.getNode());
		int temp= Integer.MAX_VALUE;
		Node tempNode = null;
		for(Node adjNode: currentAdjacentNodes) {
			if(adjNode.getCost()<temp) {
				if(visitedNodes.contains(adjNode)) {
					continue;
				}
				tempNode = adjNode;
				temp = tempNode.getCost();
			}
			unvisitedNodes.add(adjNode);			
		}
		unvisitedNodes.remove(tempNode);
		tempNode.setCost(source.getCost()+tempNode.getCost());
		Node lowestValNode;
		if(tempNode.getCost()> unvisitedNodes.peek().getCost()) {
			lowestValNode = unvisitedNodes.poll();
			lowestValNode.setCost(source.getCost()+lowestValNode.getCost());
			unvisitedNodes.add(tempNode);
		}else {
			lowestValNode = tempNode;
			unvisitedNodes.remove(lowestValNode);			
		}
		visitedNodes.add(lowestValNode);		
		if(unvisitedNodes.size() == 0) {
			System.out.println(visitedNodes);
		}else {
		findshortestDist(graph, lowestValNode);
		}
	}
	
	private void findshortestDistNew(List<List<Node>> graph, Node source){
		
		List<Node> adjNodeForCurrentSource = graph.get(source.getNode());
		
		for(Node node : adjNodeForCurrentSource) {
			if(!visitedNodes.contains(node)) {
				node.setCost(node.getCost()+source.getCost());
				unvisitedNodes.add(node);
			}
		}
		
		Node minCostNode = unvisitedNodes.poll();

//		while(unvisitedNodes.contains(minCostNode)) {
			unvisitedNodes.remove(minCostNode);
//		}
		
		visitedNodes.add(minCostNode);
		
		if(visitedNodes.size() == graph.size())
		{
			System.out.println(visitedNodes);
		}else {
			findshortestDistNew(graph, minCostNode);

		}
		
		
		
	}
	
	public static void main(String[] args) {
		
		Node sourceNode = new Node(0,0);
		DijkstrasPriorityQueue dpq = new DijkstrasPriorityQueue(sourceNode);
		int size = 9;
		List<List<Node>> graph = new ArrayList<List<Node>>(size);
		
		for(int i =0;i<size;i++) {
			graph.add(new ArrayList<Node>());
		}
		graph.get(0).add(new Node(1,4));
		graph.get(0).add(new Node(7,8));
		graph.get(7).add(new Node(0,8));
		graph.get(7).add(new Node(1,11));
		graph.get(7).add(new Node(8,7));
		graph.get(7).add(new Node(6,1));
		graph.get(1).add(new Node(0,4));
		graph.get(1).add(new Node(7,11));
		graph.get(1).add(new Node(2,8));
		graph.get(6).add(new Node(8,6));
		graph.get(6).add(new Node(5,2));
		graph.get(6).add(new Node(7,1));
		graph.get(8).add(new Node(2,2));
		graph.get(8).add(new Node(6,6));
		graph.get(8).add(new Node(7,7));
		graph.get(2).add(new Node(3,7));
		graph.get(2).add(new Node(5,4));
		graph.get(2).add(new Node(1,8));
		graph.get(2).add(new Node(8,2));
		graph.get(3).add(new Node(2,7));
		graph.get(3).add(new Node(4,9));
		graph.get(3).add(new Node(5,14));
		graph.get(5).add(new Node(2,4));
		graph.get(5).add(new Node(6,2));
		graph.get(5).add(new Node(3,14));
		graph.get(5).add(new Node(4,10));
		graph.get(4).add(new Node(3,9));
		graph.get(4).add(new Node(5,10));	
		
//		dpq.findshortestDist(graph, sourceNode);
		dpq.findshortestDistNew(graph, sourceNode);
	}
	

}
