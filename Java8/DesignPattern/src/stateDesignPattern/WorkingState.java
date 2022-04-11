package stateDesignPattern;

public class WorkingState implements ATMState {

	ATMMachine machine;
	
	public WorkingState(ATMMachine atmMachine) {
		this.machine = atmMachine;
	}
	
	@Override
	public void dispense(int amount) {
		int amtWithAtm = machine.getCashStock();
		if(amount>amtWithAtm) {
		System.out.println("Please select lower amount.");
		return;
		}
		int deduAmt = amtWithAtm-amount;
		if(deduAmt ==0 ) {
			machine.setState(new NoCashState(machine));
		}
		machine.setCashStock(deduAmt);
		System.out.println("amount withdrawn: "+amount);
	}

	@Override
	public void refill(int amount) {
		System.out.println("amount refilled with: "+amount);
		machine.setCashStock(machine.getCashStock()+amount);
		
		
	}

}
