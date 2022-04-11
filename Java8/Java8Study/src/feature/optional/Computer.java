package feature.optional;

import java.util.Optional;

public class Computer {

	private Optional<SoundCard> soundCard;

	public Optional<SoundCard> getSoundCard() {
		return soundCard;
	}

	public void setSoundCard(Optional<SoundCard> soundCard) {
		this.soundCard = soundCard;
	}

}
