



//phy_rotation = ((point_direction(phy_position_x,phy_position_y,mouse_x,mouse_y)*-1)-90)


if collision_rectangle(objGUN.phy_position_x,objGUN.phy_position_y-100,objGUN.phy_position_x+1200,objGUN.phy_position_y+100,objPlayer,1,0){
	phy_rotation = ((point_direction(phy_position_x,phy_position_y,objPlayer.phy_position_x,objPlayer.phy_position_y)*-1)-90)
	if !shooting {		
		instance_create_depth(phy_position_x,phy_position_y, -1, objProjectile)	
		shooting = true
		alarm[0] = 60*global.atkspd
	}
}

