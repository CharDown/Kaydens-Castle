function normaliseangle(angle) {
	angle*=-1
	angle+=90
	if (angle > 360) angle-=360
	if (angle < 0) angle+=360
	if (angle > 360) angle-=360
	if (angle < 0) angle+=360
	if (angle > 360) angle-=360
	if (angle < 0) angle+=360
	
	return angle
}

function launch(strength, rotation) {
	force_strength = strength
	theta = rotation
	xvec = lengthdir_x(force_strength,theta)  
	yvec = lengthdir_y(force_strength,theta) 
	physics_apply_force( x, y, phy_mass*xvec, phy_mass*yvec )  
}

function death() {
		global.cutscene = true
		objPlayer.phy_position_x = global.checkpoint[0]
		objPlayer.phy_position_y = global.checkpoint[1]
		global.lives-=1
		lastdeath = current_time
		objPlayer.phy_speed_x = 0
		objPlayer.phy_speed_y = 0
		global.canjump = false
		global.walljump = 0
		objPlayer.sprite_index = sprPlayerDeathRight
		objPlayer.alarm[3] = 100
		audio_play_sound(sndDeath,8,false)
		if (global.lives = 0) room_goto(rmLose)		
}

function camcenterx (camera) {
	xpos = camera_get_view_x(camera) + (camera_get_view_width(camera)/2)
	return xpos
}

function camcentery (camera) {
	ypos = camera_get_view_y(camera) + (camera_get_view_height(camera)/2)
	return ypos
}

function centercammouse (camera) {
	cineviewposx = (mouse_x) - (camera_get_view_width(cam)/2)
	cineviewposy = (mouse_y) - (camera_get_view_height(cam)/2)
	camera_set_view_pos(cam,cineviewposx,cineviewposy)
}

function scalecamera (camera, xsize, ysize) {
	viewsizex = lerp(camera_get_view_width(camera),xsize,0.25)
	viewsizey = lerp(camera_get_view_height(camera),ysize,0.25)
	camera_set_view_size(camera,viewsizex,viewsizey)	
}

function GameEnd () {
	room_goto(rmWin)	
}