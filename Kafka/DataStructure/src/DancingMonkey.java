import java.util.Arrays;

public class DancingMonkey {

	public DancingMonkey(int[] Postion,int size) {
		int[]  updatePosition = new int[size];
		for (int i = 0; i < Postion.length; i++) {
			updatePosition[Postion[i]]= Postion[i];
		}
		System.out.println("updatePosition:"+Arrays.toString(updatePosition));

		getMonkeyPostion(Postion, size, updatePosition);
	}
	
	private static void getMonkeyPostion(int[] Postion,int size, int[] updatePosition) {
		int[] arr=null;;		
		arr=new int[size];
		for (int i = 0; i < Postion.length; i++) {
			arr[Postion[i]]= updatePosition[i];	
		}
		updatePosition = arr;		
		
		System.out.println("updatePosition:"+Arrays.toString(updatePosition));
		if(Arrays.equals(updatePosition, Postion)) {
			System.out.println("print val");
		}else
		getMonkeyPostion(Postion,size,updatePosition);
			
	}

	public static void main(String[] args) {
		
		int[] Postion1 = {3,6,5,4,1,2};
		int[] Postion = {2,5,4,3,0,1};
		
		new DancingMonkey(Postion,6);

	}

}
