package mythreads;

public class MaxProfit {

	public static void main(String[] args) {
		int[] profit = {100, 180, 260, 310, 40, 535, 695};
		
		int minVal=Integer.MAX_VALUE;
		int nextVal=Integer.MAX_VALUE;
		
		for(int i =0;i<profit.length;i++) {
			
			if(profit[i]<minVal) {
				minVal = profit[i];
				System.out.println("buy on "+ i + " i.e "+ profit[i]);
			}
			if(profit.length-1 >= i+1) {
				nextVal = profit[i+1];
			}else {
				break;
			}
			
			//sell if 
			if(nextVal<profit[i] || (i+1 == profit.length-1 && profit[i])) {
				if(i+1 == profit.length-1)
					System.out.println("sell on "+i + " i.e "+ profit[i] +" profit[i]-minVal:  "+  (profit[i]-minVal));
				else
				System.out.println("sell on "+i + " i.e "+ profit[i] +" profit[i]-minVal:  "+  (profit[i]-minVal));
				minVal=Integer.MAX_VALUE;
			}
			
			
			
			
			
		}
	}
}
