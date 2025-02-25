
global.animationlock = false

	
	
if (sprite_index = sprPlayerJumpLeft || sprite_index = sprPlayerJumpRight) {
	if (!global.left) sprite_index = sprPlayerJumpStillRight
	if (global.left) sprite_index = sprPlayerJumpStillLeft
}

if (sprite_index = sprPlayerWallJumpLeft || sprite_index = sprPlayerWallJumpRight) {
	if (!global.left) { 
		sprite_index = sprPlayerJumpStillLeft
		global.left = true
		return
	}
	if (global.left) {
		sprite_index = sprPlayerJumpStillRight
		global.left = false
		return
	}
}

if (sprite_index == sprPlayerDeathRight) {
	sprite_index = sprPlayerDead
}

if (sprite_index == sprPlayerSlipLeft || sprite_index == sprPlayerSlipRight) {
	if (!global.left) sprite_index = sprPlayerIdleRight
	if (global.left) sprite_index = sprPlayerIdleLeft
}
