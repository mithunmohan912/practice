import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class EvenOddThread {
	private int count=0;
	private AtomicInteger atomicInteger;
	public EvenOddThread() {
		atomicInteger = new AtomicInteger(0);
	}
	
	private void splitTask() {
		
		
		List<Integer> li = IntStream.rangeClosed(0, 2000).boxed().collect(Collectors.toList());
		int batch = 500;
		int threadRequired = li.size()/batch;
		int start = 0;
		int end =batch;
		List<Wires> wireslist = new ArrayList<EvenOddThread.Wires>();
		for(int i =0;i<threadRequired;i++) {
			
			Wires wire = new Wires(li.subList(start, end));
			wireslist.add(wire);			
			start=end;
			end=end+batch;			
		}
		
		ExecutorService es = Executors.newFixedThreadPool(threadRequired);
		
		try {
			List<Future<List<Integer>>>  future = es.invokeAll(wireslist);
			List<List<Integer>> obj = future.stream().map((data) -> {
				try {
					return data.get();
				} catch (InterruptedException | ExecutionException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return li;
			}).collect(Collectors.toList());
			System.out.println(obj);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}
	
	public void oddEvenAtomicInterger() {
		Runnable run = ()->{
			
			while(atomicInteger.get() <100) {
				if(atomicInteger.get() %2 == 0)
				System.out.println("even : thread 1 :  "+atomicInteger.incrementAndGet());
				
			}
			
		};
		
Runnable run1 = ()->{
		while(atomicInteger.get()<100) {
			if(atomicInteger.get() %2 == 1)
			System.out.println("odd : thread 1 :  "+atomicInteger.incrementAndGet());		
		}
			
		};
		
		

		
		
		new Thread(run).start();
		new Thread(run1).start();
		
		
	}
	
	public void oddEvenUsingSynchronisedBlock() {

		// TODO Auto-generated constructor stub
	AtomicInteger t = new AtomicInteger();
		
	Runnable run = ()->{
//		t.incrementAndGet();
		synchronized (this) {	
		while(count % 2 ==0) {
				System.out.println("thread1 even");
				count++;
				try {
					wait();
					notify();
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		}
	};
	
	Runnable run1 = () ->{
		synchronized (this) {
			
		
		while(count % 2 == 1) {
			System.out.println("thread2 odd");
			count++;
			notify();
			try {
				wait();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		}
		
	};
	
	
	new Thread(run).start();
	new Thread(run1).start();
	
	
	
	}
	
	public static void main(String[] args) {
//		new EvenOddThread().oddEvenAtomicInterger();
		new EvenOddThread().splitTask();
	}
	
	
	class Wires implements Callable<List<Integer>>{
		List<Integer> li;
		ThreadLocal<Integer> lcl;
		
		
		public Wires(List<Integer> list) {
			// TODO Auto-generated constructor stub
			this.li = list;
			
		}
		
		

		@Override
		public List<Integer> call() throws Exception {
			// TODO Auto-generated method stub

			li.stream().map(data -> data*2).collect(Collectors.toList());
			System.out.println("Thread.currentThread().getName()"+Thread.currentThread().getName()  +  "   list: "+li);
			return li;
		}
		
	}
	

}
