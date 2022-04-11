import java.util.Arrays;
import java.util.Collections;

public class NQueensProblem {
	
	private int numberOfQueensPlaced = 8;
	boolean isBacktracked = false;
	private void printSolutionForAllQueens(String[][] board, int rowIndex, int colIndex) {
		try {
		System.out.println("printSolutionForAllQueens");
		
		if(numberOfQueensPlaced == 0) {
			System.out.println(Arrays.toString(board));
			return;
		}
		String validMsg = isValidRowColumnMove(rowIndex, colIndex, board);
		if(validMsg.equals("success")) {
			if(!isValidHorizontalMove(rowIndex, colIndex, board)) {
				if(colIndex == board.length-1) {
					colIndex = 0;
					rowIndex--;
					isBacktracked=true;
				}else {
				colIndex++;
				}
			}else {
				if(board[rowIndex][colIndex] == null) {
					board[rowIndex][colIndex]="Q"+numberOfQueensPlaced;
					numberOfQueensPlaced--;		
					rowIndex++;
					isBacktracked=false;
					colIndex = 0;
				}else {
					board[rowIndex][colIndex] = null;
				}
				
			}
		}else {
			if(board[rowIndex][colIndex]!= null) {
				board[rowIndex][colIndex]=null;
				numberOfQueensPlaced++;
			}
			
			if(validMsg.equals("invalidRow") && !isBacktracked) {
				rowIndex++;
			}else{
				if(colIndex == board.length-1) {
					colIndex = 0;
					rowIndex--;
					isBacktracked=true;
				}else
				colIndex++;
			}
			
//			numberOfQueensPlaced++;
			
		}
		printSolutionForAllQueens(board, rowIndex, colIndex);

		}catch(Exception e) {
			System.out.println(e);
		}
//		for (int i = 0; i < board.length; i++) {
//			for (int j = 0; j < board.length; j++) {
//				if(numberOfQueensPlaced >0) {
//					if(isValidRowColumnMove(i, j, board) && isValidHorizontalMove(i, j, board)) {
//						board[i][j]="Q"+numberOfQueensPlaced;
//						numberOfQueensPlaced--;
//					}else {
//						
//					}
//					
//				}
//				
//			}
//		}
		
	}
	
	private String isValidRowColumnMove(int x, int j, String [][] board) {
		System.out.println("isValidRowColumnMove");
		String valid = "success";
		for (int i = 0; i < board.length; i++) {
			for (int k = 0; k < board.length; k++) {
				if(board[i][k] != null && (i == x || k == j)) {
					if(i == x) {
						valid = "invalidRow";
					}else if(k == j){
						valid = "invalidCol";
					}
					
					break;
				}
			}
			if(!valid.equals("success")) {
				break;
			}
		}
		
		return valid;
	}
	
	
	private boolean isValidHorizontalMove(int x, int j, String [][] board) {
		System.out.println("isValidHorizontalMove");
		int negX =x-1;
		int negY=j-1;
		int posX=x+1;
		int posY=j+1;
		boolean valid = true;
		while(negX >= 0 || negY >=0) {
			if(board[negX][negY]  != null || j < board.length-1 && board[negX][j+1] != null) {
				return false;
				
			}
			if(negX ==0 || negY == 0) {
				
			}
			negX--;
			negY--;
		}
		
		while(posX <board.length && posY<board.length) {
			try {
			if((board[posX][posY]  != null) || (posY>0 && board[posX][posY-1]  != null)) {
				return false;
			}
			posX++;
			posY++;
			}catch (Exception e) {
				System.err.println("error");
				// TODO: handle exception
			}
		}
		
		return valid;
	}
	
	public static void main(String[] args) {
		
		NQueensProblem np= new NQueensProblem();
		String[][] chessBoard = new String[8][8];
//		String[] queensArr = {"Q1","Q2","Q3","Q4",};
		
		np.printSolutionForAllQueens(chessBoard,0,0);
	}

}
