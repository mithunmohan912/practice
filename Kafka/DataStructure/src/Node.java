import java.util.Comparator;

 public class Node implements Comparator<Node>{
		
		private int cost;
		private int node;
		
		
		public Node() {
			super();
		}
		public Node(int node, int cost) {
			this.cost = cost;
			this.node = node;
		}
		public int getCost() {
			return cost;
		}

		public void setCost(int cost) {
			this.cost = cost;
		}

		public int getNode() {
			return node;
		}

		public void setNode(int node) {
			this.node = node;
		}
		
		
		
		
		@Override
		public int hashCode() {
			final int prime = 31;
			int result = 1;
			result = prime * result + cost;
			result = prime * result + node;
			return result;
		}
		@Override
		public boolean equals(Object obj) {
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			Node other = (Node) obj;
			if (node != other.node)
				return false;
			return true;
		}
		@Override
		public int compare(Node o1, Node o2) {
			// TODO Auto-generated method stub
			if(o1.node == o2.node) {
				if(o1.cost > o2.cost) {
					return 1;	
				}else if(o1.cost < o2.cost) {
					return -1;
				}else {
					return 0;
				}
				
			}else if(o1.cost>o2.cost) {
				return 1;
			}else if(o1.cost == o2.cost) {
				return 0;
			}else {
				return -1;
			}
		}
		@Override
		public String toString() {
			return "Node [cost=" + cost + ", node=" + node + "]";
		}
		
		
		
	}