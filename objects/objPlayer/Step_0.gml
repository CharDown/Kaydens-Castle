

if global.cutscene = true {
	phy_speed_x = 0
	physics_apply_force(phy_position_x,phy_position_y,0,phy_mass*100)
	return
}
physics_apply_force(phy_position_x,phy_position_y,0,phy_mass*100)


if (global.shielding) {
	basespeed = 1	
} else {
	basespeed = 5	
}

if (input_check_pressed("up")) && global.canjump = true {

	if current_time - lastjump > 300 {
		//phy_speed_y = 0
		global.jumping = true
		audio_play_sound(sndJump,8,false)
		switch (global.walljump)
		{
			case 0:
				alarm[2] = 5
				if (!global.left && !global.animationlock) sprite_index = sprPlayerJumpRight
				if (global.left && !global.animationlock) sprite_index = sprPlayerJumpLeft
				break;
			case 1:
				sprite_index = sprPlayerWallJumpRight
				alarm[2] = 5
				break
			case 2:
				alarm[2] = 5
				sprite_index = sprPlayerWallJumpLeft
				break;
		}
		lastjump = current_time
	}
}

if phy_speed_y > 0.1 {
	//array_push(global.text,phy_speed_y)
	global.jumping = false
	global.falling = true
	global.canjump = false
	
	if (!global.left && !global.animationlock) sprite_index = sprPlayerFallRight
	if (global.left && !global.animationlock) sprite_index = sprPlayerFallLeft	
/*
	if (collision_line(objPlayer.x,objPlayer.y+50,objPlayer.x,objPlayer.y+80,objGroundSli,false,false)) {
		if (!global.left && !global.animationlock) sprite_index = sprPlayerFallingRight
		if (global.left && !global.animationlock) sprite_index = sprPlayerFallingLeft
		global.animationlock = true
	}	
*/	
} else if phy_speed_y < 0 {
	global.falling = false	
}

if (input_check("right")){
	if (phy_speed_x < basespeed*global.topspeed) {
		physics_apply_force(phy_position_x,phy_position_y,phy_mass*50*global.playerspeed,0)
		global.left = false
		global.moving = true
		if (!global.jumping && !global.falling && !global.animationlock) sprite_index = sprPlayerRunRight
	}
}

if (input_check("left")) {
	if (phy_speed_x > -basespeed*global.topspeed) {
		physics_apply_force(phy_position_x,phy_position_y,phy_mass*-50*global.playerspeed,0)
		global.left = true
		global.moving = true
		if (!global.jumping && !global.falling && !global.animationlock) sprite_index = sprPlayerRunLeft
	}
}

if (input_check_released("left") || input_check_released("right")) global.moving = false




if (!global.moving && !global.left && !global.falling && !global.jumping && !global.animationlock) sprite_index = sprPlayerIdleRight
if (!global.moving && global.left && !global.falling && !global.jumping && !global.animationlock) sprite_index = sprPlayerIdleLeft

if ((phy_speed_x > 0.5) && (!global.moving && !global.jumping && !global.falling && !global.animationlock)) sprite_index = sprPlayerSlipRight
if ((phy_speed_x < -0.5) && (!global.moving && !global.jumping && !global.falling && !global.animationlock)) sprite_index = sprPlayerSlipLeft

if array_contains(global.inventory, "Shield") {
	if (input_check_pressed("shield")) {
		global.shielding = true
		audio_play_sound(sndShieldUp,8,false)
		
	} else if (input_check_released("shield")) {
		global.shielding = false
		audio_play_sound(sndShieldDown,8,false)
	//	sprite_index = sprPlayer	
	}
}


if (input_check("Map")) {
	cam = view_camera[0]
	scalecamera(cam,5760,3240)
	camera_set_view_target(cam, noone)
	camypos = 6400
	if (objPlayer.y < camypos+1400) camypos = objPlayer.y-2160
	viewposx = lerp(camera_get_view_x(cam),0,0.15)
	viewposy = lerp(camera_get_view_y(cam),camypos,0.15)
	camera_set_view_pos(cam,viewposx,viewposy)
	global.showdark1 = false
}
if (input_check_released("Map")) {
	//viewsizex = lerp(camera_get_view_width(view_camera[0]),1920,0.25)
	//viewsizey = lerp(camera_get_view_height(view_camera[0]),1080,0.25)
	camera_set_view_target(view_camera[0],id)
	camera_set_view_size(view_camera[0],1920,1080)
	global.showdark1 = true
}

if mouse_check_button_pressed(mb_right) && (global.devmode) {
	if (!cinemamode) {
		phy_position_x = mouse_x
		phy_position_y = mouse_y
	} else if (cinemamode) {
		cam = view_camera[0]	
		//cineviewposx = (mouse_x  + (camera_get_view_width(cam)/2))
		//cineviewposy = (mouse_y  + (camera_get_view_height(cam)/2))
		cineviewposx = (mouse_x) - (camera_get_view_width(cam)/2)
		cineviewposy = (mouse_y) - (camera_get_view_height(cam)/2)
		camera_set_view_pos(cam,cineviewposx,cineviewposy)
	}
}

if keyboard_check_pressed(ord("T")) && (global.devmode) {
	global.lives+=1
	global.checkpoint = [mouse_x,mouse_y]
	//objGround.sprite_index = sprGroundStrobe
}

if keyboard_check_pressed(ord("P")) {
	switch (global.devmode) 
	{
		case 0:
			global.devmode = true
			break;
		case 1:
			global.devmode = false
			break;
	}
	array_push(global.text, "Devmode " + string(bool(global.devmode)))
}

if (input_check("zoomIn")) {
	cam = view_camera[0]
	if (!cinemamode) { 	
		scalecamera(cam,192,108)
	} else if (cinemamode) {
		xpos1 = camcenterx(cam)
		ypos1 = camcentery(cam)
		scalecamera(cam,192,108)
		camera_set_view_pos(cam,xpos1-(camera_get_view_width(view_camera[0])/2),ypos1-(camera_get_view_height(view_camera[0])/2))

	}
} 
if (input_check("zoomOut")) {
	cam = view_camera[0]
	if (!cinemamode) { 	
		scalecamera(cam,1920,1080)
	} else if (cinemamode) {
		xpos1 = camcenterx(cam)
		ypos1 = camcentery(cam)
		scalecamera(cam,1920,1080)
		camera_set_view_pos(cam,xpos1-(camera_get_view_width(view_camera[0])/2),ypos1-(camera_get_view_height(view_camera[0])/2))
	}
}


if keyboard_check_pressed(ord("O")) {
	cam = view_camera[0]
	if (!cinemamode) { 	
		camera_set_view_target(cam, noone)
		centercammouse(view_camera[0])
		cinemamode = true
	} else if (cinemamode) {	
		camera_set_view_target(cam, id)
		cinemamode = false
	}
}
