if (sprite_index = sprPlayerJumpLeft_1 || sprite_index = sprPlayerJumpRight_1) {
	if (!left) sprite_index = sprPlayerJumpStillRight_1
	if (left) sprite_index = sprPlayerJumpStillLeft_1
}

if (sprite_index = sprPlayerWallJumpLeft_1 || sprite_index = sprPlayerWallJumpRight_1) {
	if (!left) { 
		sprite_index = sprPlayerJumpStillLeft_1
		left = true
		return
	}
	if (left) {
		sprite_index = sprPlayerJumpStillRight_1
		left = false
		return
	}
}