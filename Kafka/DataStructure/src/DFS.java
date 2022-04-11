import java.util.ArrayList;
import java.util.List;

public class DFS {
	private List<Node> visitedNodes;
	public DFS() {
		// TODO Auto-generated constructor stub
		visitedNodes = new ArrayList<DFS.Node>();
	}
	
	public void dfsAlgo(Node startNode, List<List<Node>> graph){
		if(graph.get(startNode.getData()).size() == 0 || visitedNodes.contains(startNode)) {
			return;
		}
		visitedNodes.add(startNode);			
		System.out.print(startNode.data +">");
		for(Node node: graph.get(startNode.getData())) {
				
				dfsAlgo(node, graph);						
		}		
	}
	
	public static void main(String[] args) {
		DFS dfs = new DFS();
		int graphSize = 6;//13;
		List<List<Node>> graph = new ArrayList<List<Node>>(graphSize);
		
		for (int i = 0; i < graphSize; i++) {
			graph.add(new ArrayList<DFS.Node>());
		}
		
//		graph.get(1).add(dfs.new Node(2));
//		graph.get(1).add(dfs.new Node(7));
//		graph.get(1).add(dfs.new Node(8));
//		graph.get(2).add(dfs.new Node(3));
//		graph.get(2).add(dfs.new Node(6));
//		graph.get(8).add(dfs.new Node(9));
//		graph.get(8).add(dfs.new Node(12));	
//		graph.get(3).add(dfs.new Node(4));
//		graph.get(3).add(dfs.new Node(5));
//		graph.get(9).add(dfs.new Node(10));
//		graph.get(9).add(dfs.new Node(11));
		
		
		graph.get(0).add(dfs.new Node(2));
		graph.get(0).add(dfs.new Node(1));
		graph.get(2).add(dfs.new Node(0));
		graph.get(1).add(dfs.new Node(2));
		graph.get(3).add(dfs.new Node(3));
		graph.get(1).add(dfs.new Node(3));
//		graph.get(8).add(dfs.new Node(12));	
//		graph.get(3).add(dfs.new Node(4));
//		graph.get(3).add(dfs.new Node(5));
//		graph.get(9).add(dfs.new Node(10));
//		graph.get(9).add(dfs.new Node(11));
		
		dfs.dfsAlgo(dfs.new Node(2),graph);
		
//		graph.add(0, dfs.new Node(1));
//		graph.add(0, dfs.new Node(1));
//		graph.add(0, dfs.new Node(1));
//		graph.add(0, dfs.new Node(1));
//		graph.add(0, dfs.new Node(1));
//		graph.add(0, dfs.new Node(1));
//		graph.add(0, dfs.new Node(1));
//		graph.add(0, dfs.new Node(1));
//		graph.add(0, dfs.new Node(1));
		
	}
	
	
	
	class Node {
		private int data;
		
		public Node(int data) {
			this.data = data;
		}
		
		public int getData() {
			return data;
		}
		public void setData(int data) {
			this.data = data;
		}

		@Override
		public int hashCode() {
			final int prime = 31;
			int result = 1;
			result = prime * result;
			result = prime * result + data;
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
			Node other = (Node) obj;
			if (data != other.data)
				return false;
			return true;
		}

		@Override
		public String toString() {
			return "Node [data=" + data + "]";
		}
		
		
		
	}
	

}
