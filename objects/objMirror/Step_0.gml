

if collision_rectangle(phy_position_x-3,phy_position_y,phy_position_x+3,phy_position_y+32,objPlayer,true,false) {
	global.canjump = true
	global.walljump = 1

	return	
}

if collision_rectangle(phy_position_x+29,phy_position_y,phy_position_x+35,phy_position_y+32,objPlayer,true,false) {
	global.canjump = true
	global.walljump = 2
	
	return	
}

if collision_rectangle(phy_position_x,phy_position_y-3,phy_position_x+32,phy_position_y+3,objPlayer,true,false) {
	global.canjump = true
	global.walljump = 0
	
	return	
}
