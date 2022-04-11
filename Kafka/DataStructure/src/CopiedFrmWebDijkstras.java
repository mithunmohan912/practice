import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Set;

public class CopiedFrmWebDijkstras { 
    private int dist[]; 
    private Set<Integer> settled; 
    private PriorityQueue<Node> pq; 
    private int V; // Number of vertices 
    List<List<Node> > adj; 
  
    public CopiedFrmWebDijkstras(int V) 
    { 
        this.V = V; 
        dist = new int[V]; 
        settled = new HashSet<Integer>(); 
        pq = new PriorityQueue<Node>(V, new Node()); 
    } 
  
    // Function for Dijkstra's Algorithm 
    public void dijkstra(List<List<Node> > adj, int src) 
    { 
        this.adj = adj; 
  
        for (int i = 0; i < V; i++) 
            dist[i] = Integer.MAX_VALUE; 
  
        // Add source node to the priority queue 
        pq.add(new Node(src, 0)); 
  
        // Distance to the source is 0 
        dist[src] = 0; 
        while (settled.size() != V) { 
  
            // remove the minimum distance node  
            // from the priority queue  
            int u = pq.remove().getNode(); 
  
            // adding the node whose distance is 
            // finalized 
            settled.add(u); 
  
            e_Neighbours(u); 
        } 
    } 
  
    // Function to process all the neighbours  
    // of the passed node 
    private void e_Neighbours(int u) 
    { 
        int edgeDistance = -1; 
        int newDistance = -1; 
  
        // All the neighbors of v 
        for (int i = 0; i < adj.get(u).size(); i++) { 
            Node v = adj.get(u).get(i); 
  
            // If current node hasn't already been processed 
            if (!settled.contains(v.getNode())) { 
                edgeDistance = v.getCost(); 
                newDistance = dist[u] + edgeDistance; 
  
                // If new distance is cheaper in cost 
                if (newDistance < dist[v.getNode()]) 
                    dist[v.getNode()] = newDistance; 
  
                // Add the current node to the queue 
                pq.add(new Node(v.getNode(), dist[v.getNode()])); 
            } 
        } 
    } 
  
    // Driver code 
    public static void main(String arg[]) 
    { 
        int size = 9; 
        int source = 0; 
  
        // Adjacency list representation of the  
        // connected edges 
        List<List<Node> > adj = new ArrayList<List<Node> >(); 
  
        // Initialize list for every node 
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
		graph.get(5).add(new Node(4,9));
		graph.get(4).add(new Node(3,9));
		graph.get(4).add(new Node(5,10));	
		
        // Calculate the single source shortest path 
        CopiedFrmWebDijkstras dpq = new CopiedFrmWebDijkstras(size); 
        dpq.dijkstra(graph, source); 
  
        // Print the shortest path to all the nodes 
        // from the source node 
        System.out.println("The shorted path from node :"); 
        for (int i = 0; i < dpq.dist.length; i++) 
            System.out.println(source + " to " + i + " is "
                               + dpq.dist[i]); 
    } 
} 