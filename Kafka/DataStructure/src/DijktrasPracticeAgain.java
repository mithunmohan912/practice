import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.stream.IntStream;

public class DijktrasPracticeAgain {
	List<GraphNode> visitedNodes;
	Queue<GraphNode> unvisitedNodes;
	private int dist[];
	
	
	public DijktrasPracticeAgain() {
		this.visitedNodes = new ArrayList<GraphNode>();
		this.unvisitedNodes = new PriorityQueue<GraphNode>(new GraphNode());
		dist = new int[9];
	}
	
	

	public int[] getDist() {
		return dist;
	}



	public void setDist(int[] dist) {
		this.dist = dist;
	}



	private void shortestPath(List<List<GraphNode>> graph, GraphNode source) {
//		if(visitedNodes.contains(source)) {
//			return;
//		}
		if(visitedNodes.size() == graph.size()) {
			System.out.println("visitedNodes:" +visitedNodes.toString());
			return;
		}
		List <GraphNode> adjacentNodes = graph.get(source.connectedNode);
		
		for(GraphNode n: adjacentNodes) {
			if(!visitedNodes.contains(n)) {
				n.cost = n.cost+source.cost;
				if(n.cost<dist[n.connectedNode]) {
					dist[n.connectedNode] = n.cost;
				}
				n.cost=dist[n.connectedNode];
				unvisitedNodes.add(n);
				
			}			
		}
		if(!visitedNodes.contains(source)) {
			visitedNodes.add(source);
		}
		
		
		
		GraphNode toBeTraversed = unvisitedNodes.poll();
//		unvisitedNodes.remove(toBeTraversed);
//		toBeTraversed.cost = source.cost + toBeTraversed.cost;
		System.out.println("to : "+ toBeTraversed.connectedNode + " cost:"+toBeTraversed.cost);
		shortestPath(graph, toBeTraversed);
	}
		
	public static void main(String[] args) {
		int size =9;
		List<List<GraphNode>> graph = new ArrayList<List<GraphNode>>(size);
		GraphNode sourceNode = new GraphNode(0, 0);
		DijktrasPracticeAgain dijiktras = new DijktrasPracticeAgain();
		for(int i=0;i<size;i++) {
			graph.add(new ArrayList<GraphNode>());
			dijiktras.getDist()[i]=Integer.MAX_VALUE;
		}
		
		graph.get(0).add(new GraphNode(1,4));
		graph.get(0).add(new GraphNode(7,8));
		graph.get(7).add(new GraphNode(0,8));
		graph.get(7).add(new GraphNode(1,11));
		graph.get(7).add(new GraphNode(8,7));
		graph.get(7).add(new GraphNode(6,1));
		graph.get(1).add(new GraphNode(0,4));
		graph.get(1).add(new GraphNode(7,11));
		graph.get(1).add(new GraphNode(2,8));
		graph.get(6).add(new GraphNode(8,6));
		graph.get(6).add(new GraphNode(5,2));
		graph.get(6).add(new GraphNode(7,1));
		graph.get(8).add(new GraphNode(2,2));
		graph.get(8).add(new GraphNode(6,6));
		graph.get(8).add(new GraphNode(7,7));
		graph.get(2).add(new GraphNode(3,7));
		graph.get(2).add(new GraphNode(5,4));
		graph.get(2).add(new GraphNode(1,8));
		graph.get(2).add(new GraphNode(8,2));
		graph.get(3).add(new GraphNode(2,7));
		graph.get(3).add(new GraphNode(4,9));
		graph.get(3).add(new GraphNode(5,14));
		graph.get(5).add(new GraphNode(2,4));
		graph.get(5).add(new GraphNode(6,2));
		graph.get(5).add(new GraphNode(3,14));
		graph.get(5).add(new GraphNode(4,10));
		graph.get(4).add(new GraphNode(3,9));
		graph.get(4).add(new GraphNode(5,10));	
		
		
		dijiktras.shortestPath(graph, sourceNode);
		
	}

	
}

class GraphNode implements Comparator<GraphNode>{
	int cost;
	int connectedNode;
	public GraphNode() {
		super();
	}
	
	public GraphNode(int connectedNode,int cost) {
		super();
		this.cost = cost;
		this.connectedNode = connectedNode;
	}
	
	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + connectedNode;
		result = prime * result + cost;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		GraphNode other = (GraphNode) obj;
		if (connectedNode != other.connectedNode)
			return false;		
		return true;
	}

	@Override
	public int compare(GraphNode node1, GraphNode node2) {
		// TODO Auto-generated method stub
		return node1.cost-node2.cost;
	}
	@Override
	public String toString() {
		return "Node [cost=" + cost + ", node=" + connectedNode + "]";
	}
}