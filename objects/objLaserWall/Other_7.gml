if sprite_index = sprLaserWallAnimation {
	instance_destroy()	
	global.laserwall = false
	camera_set_view_target(view_camera[0],objPlayer)
}