import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class ProducerConsumerProblem {
	
	private LinkedList<Integer> listData;
	private static final int CAPACITY = 2;
	
	public ProducerConsumerProblem() {
		// TODO Auto-generated constructor stub
		listData = new LinkedList<Integer>();
	}
	
	
	private void produce() throws InterruptedException {
		int value=0;
		while(true) {
			synchronized (this) {
				
				while(listData.size() == CAPACITY) {
					wait();
				}
				int test = value++;
				listData.add(test);
				System.out.println("produce"+ test);
				notify();
			}			
		}		
	}
	
	private void consume() throws InterruptedException {
		while(true) {
			synchronized (this) {
				
				while(listData.size() == 0) {
					wait();
				}
				System.out.println("consume: " +listData.removeFirst());
				notify();
			}			
		}		
	}
	
	public static void main(String[] args) {
		ProducerConsumerProblem pcp = new ProducerConsumerProblem();
		
		Thread producerThread = new Thread(new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					pcp.produce();
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		});
		
		Thread consumerThread = new Thread(new Runnable() {			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				try {
					pcp.consume();
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}				
			}
		});
		
		producerThread.start();
		consumerThread.start();
		
	}

}
