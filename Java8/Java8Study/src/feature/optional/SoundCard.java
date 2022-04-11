package feature.optional;

import java.util.Optional;

public class SoundCard {

	private Optional<USB> usb;

	public Optional<USB> getUsb() {
		return usb;
	}

	public void setUsb(Optional<USB> usb) {
		this.usb = usb;
	}
	
	
}
