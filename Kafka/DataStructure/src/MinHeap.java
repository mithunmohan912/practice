import java.util.Arrays;

public class MinHeap {
	
	private int size;
	private int[] Heap;
	
	public MinHeap(int maxSize) {
		this.size = 0;
		Heap = new int[maxSize];
//		Heap[0]= Integer.MIN_VALUE;
	}
	
	public int getLeftNode(int position) {
		
		return Heap [2*position +1];
		
	}
	
	public int getLeftNodePosition(int rootPosition) {
			
			return 2*rootPosition +1;			
	}
	
	public int getRightNodePosition(int rootPosition) {
		
		return 2*rootPosition +2;			
	}
	
	public int getRightNode(int position) {
		return Heap [2*position +2];
	}
	
	public int getParentNode(int position) {
		return Heap [(position-1)/2];
	}
	
	private boolean isLeafNode (int position) {
		if(getLeftNodePosition(position) >= Heap.length) {
			return true;
		}
		
		return false;
	}
	
	
	public int getParentNodeIndex(int position) {
		return (position-1)/2;
	}
	
	private void swap(int swapTo, int swapFrom) {
		int temp;
		temp = Heap[swapFrom];
		Heap[swapFrom] =Heap[swapTo];
		Heap[swapTo] = temp;		
	}

	private void insert(int element) {
		int currentPosition = size;
		Heap[size++] = element;

		int parentNodeIndex = getParentNodeIndex(currentPosition);

		if(element < Heap[parentNodeIndex]) {
			swap(currentPosition, parentNodeIndex);			
		}
	}
	
	
	private void minHeapify() {
		boolean heapify = false;
		for(int i =0;i<Heap.length;i++) {
			if(isLeafNode(i)) {
				break;
			}			
			
			if(getLeftNode(i) < Heap[i]) {
				heapify= true;
				swap(getLeftNodePosition(i), i);
			}else if(getRightNode(i)< Heap[i]) {
				swap(getRightNodePosition(i), i);
				heapify=true;
			}			
		}		
		if(heapify) {
			minHeapify();
		}else {
	        System.out.println("min heap = "+ Arrays.toString(Heap));
		}
	}
	
	
	private void maxHeapify() {
		boolean heapify = false;
		for(int i =0;i<Heap.length;i++) {
			if(isLeafNode(i)) {
				break;
			}			
			
			if(getLeftNode(i) > Heap[i]) {
				heapify= true;
				swap(getLeftNodePosition(i), i);
			}else if(getRightNode(i)> Heap[i]) {
				swap(getRightNodePosition(i), i);
				heapify=true;
			}			
		}		
		if(heapify) {
			maxHeapify();
		}else {
	        System.out.println("min heap = "+ Arrays.toString(Heap));
		}
	}
	
	
	

	public static void main(String[] args) {
		
		MinHeap minHeap = new MinHeap(9);
		minHeap.insert(5); 
        minHeap.insert(3); 
        minHeap.insert(17); 
        minHeap.insert(10); 
        minHeap.insert(84); 
        minHeap.insert(19); 
        minHeap.insert(6); 
        minHeap.insert(22); 
        minHeap.insert(9); 
        minHeap.minHeapify();
        
        minHeap = new MinHeap(9);
		minHeap.insert(5); 
        minHeap.insert(3); 
        minHeap.insert(17); 
        minHeap.insert(10); 
        minHeap.insert(84); 
        minHeap.insert(19); 
        minHeap.insert(6); 
        minHeap.insert(22); 
        minHeap.insert(9); 
        minHeap.maxHeapify();
		
	}
	

}
