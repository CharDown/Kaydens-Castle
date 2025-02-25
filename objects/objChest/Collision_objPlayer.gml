array_push(global.inventory, iteminside)
array_push(global.text, "You Obtained " + iteminside)
audio_play_sound(sndPickup,8,false)
instance_destroy()

if collisiontrigger = 1 {
	camera_set_view_target(view_camera[0],noone)
	global.shouldmove = true
	global.laserwall = true
	objLaserWall.alarm[0] = 20
}