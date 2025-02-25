if (sprite_index != sprCheckpointCaptured) {
	array_push(global.text, "Checkpoint Updated") 
	global.checkpoint = [x,y-50]
	image_speed = 3
	audio_play_sound(sndCheckpoint,8,false)
}
