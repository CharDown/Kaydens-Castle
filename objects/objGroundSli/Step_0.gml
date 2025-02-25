
if collision_rectangle(phy_position_x,phy_position_y-3,phy_position_x+32,phy_position_y+3,objPlayer,true,false) {
	global.canjump = true
	global.walljump = 0
	//if (round(objPlayer.phy_speed_y) != 0)array_push(global.text,"Colliding ground")
	if (!global.moving && !global.left && !global.jumping && !global.animationlock) objPlayer.sprite_index = sprPlayerIdleRight
	if (!global.moving && global.left && !global.jumping && !global.animationlock) objPlayer.sprite_index = sprPlayerIdleLeft
	//draw_set_color(#f6adc6)
	return	
}

