import java.util.Arrays;

//Using Greedy Algo
public class Dijkstras {

	private int[] visitedNode;
	private int[] unvisitedNode;
	private int[] minCostNode;
	private int[] linkedNode;
	public Dijkstras(int[][] arr) {
		visitedNode = new int[arr.length];
		unvisitedNode = new int[arr.length];
		minCostNode = new int[arr.length];
		visitedNode[0]=Integer.MIN_VALUE;
	}
		
	private void dijkstrasShortestPath(int[][] arr, int currentMinNodeIndex) {
		int count=0;
		for(int j = 0; j<arr[currentMinNodeIndex].length;j++) {
			if(arr[currentMinNodeIndex][j] >0) {
				unvisitedNode[j]=j;
				count++;
				if(minCostNode[j] == 0 || (minCostNode[j]>0 && minCostNode[j] > (arr[currentMinNodeIndex][j] + minCostNode[currentMinNodeIndex])))
				minCostNode[j]	= arr[currentMinNodeIndex][j] + minCostNode[currentMinNodeIndex];		
			}			
		}
		
		int tempMax =  Integer.MAX_VALUE;
		int visitedIndex =0;
		for(int c=0; c<minCostNode.length;c++) {
			if(minCostNode[c]>0 && minCostNode[c]<tempMax && visitedNode[c] == 0) {
				tempMax =minCostNode[c];
				visitedIndex=c;
			}
		}		
		visitedNode[visitedIndex]=visitedIndex+1;
		unvisitedNode[visitedIndex]= -1;
		
		System.out.println("min cost current minindex:"+ currentMinNodeIndex  + "  "   +Arrays.toString(minCostNode));
		dijkstrasShortestPath(arr, visitedIndex);
	}
	
	public static void main(String[] args) {
		 int graph[][] = new int[][] { { 0, 4, 0, 0, 0, 0, 0, 8, 0 }, 
             { 4, 0, 8, 0, 0, 0, 0, 11, 0 }, 
             { 0, 8, 0, 7, 0, 4, 0, 0, 2 }, 
             { 0, 0, 7, 0, 9, 14, 0, 0, 0 }, 
             { 0, 0, 0, 9, 0, 10, 0, 0, 0 }, 
             { 0, 0, 4, 14, 10, 0, 2, 0, 0 }, 
             { 0, 0, 0, 0, 0, 2, 0, 1, 6 }, 
             { 8, 11, 0, 0, 0, 0, 1, 0, 7 }, 
             { 0, 0, 2, 0, 0, 0, 6, 7, 0 } }; 
             
             
             Dijkstras dj = new Dijkstras(graph);
             dj.dijkstrasShortestPath(graph, 0);
	}

}
