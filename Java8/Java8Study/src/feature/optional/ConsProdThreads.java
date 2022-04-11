package feature.optional;

import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;

import javax.swing.text.StyledEditorKit.BoldAction;

public class ConsProdThreads {

	public void producerconsumer() {

		List li = new ArrayList();
		Runnable producer = () -> {
			while (true) {
				synchronized (this) {
					while (li.size() == 3) {
						try {
							wait();
						} catch (InterruptedException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					li.add(1);

					System.out.println("added ele: " + li);
					notify();
				}
			}

		};

		Runnable consumer = () -> {
			while (true) {
				synchronized (this) {
					while (li.size() == 0) {
						try {
							wait();
						} catch (InterruptedException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}
					
					System.out.println("be4 removed:   " + li );

					System.out.println("removed:   " + li.remove(0) );
					notify();
				}
			}

		};

		Thread proThreads = new Thread(producer);

		Thread xonsThreads = new Thread(consumer);
		proThreads.start();
		xonsThreads.start();
	}
	
	public void producerconsumer1() {

//		List li = new ArrayList();
		Queue q = new LinkedBlockingQueue<>();
		Runnable producer = () -> {
			while (true) {
				
//					while (q.size() == 3) {
//						try {
//							wait();
//						} catch (InterruptedException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//					}
					q.add(1);

					System.out.println("added ele: " + q);
//					notify();
				
			}

		};

		Runnable consumer = () -> {
			while (true) {
//				synchronized (this) {
//					while (q.size() == 0) {
//						try {
//							wait();
//						} catch (InterruptedException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//					}
//					
//					System.out.println("be4 removed:   " + q );
//
					System.out.println("removed:   " + q.poll() );
////					notify();
//				}
				System.out.println("be4 removed:   " + q );
			}

		};

		Thread proThreads = new Thread(producer);

		Thread xonsThreads = new Thread(consumer);
		proThreads.start();
		xonsThreads.start();
	}

	public static void main(String[] args) {
		new ConsProdThreads().producerconsumer1();

	}

}
