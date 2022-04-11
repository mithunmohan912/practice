package stateDesignPattern;

public class NoCashState implements ATMState {
	
	ATMMachine machine;
	
	public NoCashState(ATMMachine atmMachine) {
		// TODO Auto-generated constructor stub
		this.machine = atmMachine;
	}
	

	@Override
	public void dispense(int amount) {
		System.out.println("no cash available !!!");
	}

	@Override
	public void refill(int amount) {
		machine.setCashStock(machine.getCashStock()+amount);
		machine.setState(new WorkingState(machine));
		System.out.println("amount refilled! total amount available in atm: "+ machine.getCashStock());
		
	}

}
