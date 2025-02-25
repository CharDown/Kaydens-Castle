if (!global.shielding) {
	if current_time - lastdeath > 300 {
		death()
	}
} else if (global.shielding) audio_play_sound(sndShieldHit,8,false)
