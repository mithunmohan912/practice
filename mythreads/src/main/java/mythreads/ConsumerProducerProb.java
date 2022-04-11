package mythreads;

import java.util.ArrayList;
import java.util.List;

public class ConsumerProducerProb {

	private List li;
	private static final int CAPACITY =3;
	
	public ConsumerProducerProb() throws InterruptedException {
		// TODO Auto-generated constructor stub
		li = new ArrayList();
		
		
		Runnable producer = () ->{
			while(true) {
				synchronized (li) {				
				while(li.size() == CAPACITY) {
					try {
						li.wait();
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}				
				li.add("test");	
				System.out.println("producer: "+ Thread.currentThread().getName()  + "   "+ li);
				li.notify();
			}
			}
			
		};
		
		
		Runnable consumer = () -> {
			while(true) {
				synchronized (li) {
				while(li.size() == 0) {
					try {
						li.wait();
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				
				li.remove(li.size()-1);
				System.out.println("consumer consumed: "+ Thread.currentThread().getName()  + "   "+ li);
				li.notify();
				
			}
			}
		};
		
		
		Thread producerT = new Thread(producer);
		Thread consumerT = new Thread(consumer);
		
		producerT.start();
		consumerT.start();
	}
	
	
	public static void main(String[] args) throws InterruptedException {
	new ConsumerProducerProb();	
	}
	
}
