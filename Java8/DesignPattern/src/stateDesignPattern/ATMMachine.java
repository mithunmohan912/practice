package stateDesignPattern;

public class ATMMachine {
	private ATMState state;
	private int cashStock;
	
	public ATMMachine(ATMState state) {
		// TODO Auto-generated constructor stub
		this.state = new NoCashState(this);
	}
	
	public void refillAtm(int amount) {
		state.refill(amount);
	}
	
	public int withdrawAmt(int amount) throws Exception {
		state.dispense(amount);

		return amount;
	}

	public ATMState getState() {
		return state;
	}

	public void setState(ATMState state) {
		this.state = state;
	}

	public int getCashStock() {
		return cashStock;
	}

	public void setCashStock(int cashStock) {
		this.cashStock = cashStock;
	}
	
	
	
	
	
	
	

}
