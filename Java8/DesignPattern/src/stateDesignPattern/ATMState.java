package stateDesignPattern;

public interface ATMState {
	
	public void dispense(int amount);
	
	public void refill(int amount);

}
