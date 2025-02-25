if room == rmGame_1 {
	cam = view_camera[0]
	if (global.showdark1) draw_sprite(sprBG,1,camcenterx(cam),camcentery(cam))
	if (global.shielding) draw_sprite(sprPlayerShield,-1,objPlayer.x,objPlayer.y)
	
}