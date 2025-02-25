
physics_apply_force(phy_position_x,phy_position_y,0,phy_mass*100)

if phy_speed_y > 0.1 {
	//array_push(global.text,phy_speed_y)
	jumping = false
	falling = true

	
	if (!left) sprite_index = sprPlayerFallRight_1
	if (left) sprite_index = sprPlayerFallLeft_1

} else if phy_speed_y < 0 {
	falling = false	
}


if dir = 0 {
	if (phy_speed_x > -5) {
//		array_push(global.text, "Left")
		physics_apply_force(phy_position_x,phy_position_y,phy_mass*-50,0)
		left = true
		if (!falling && !jumping) sprite_index = sprPlayerRunLeft_1
	}
}

if dir = 1 {
	if (phy_speed_x < 5) {
//		array_push(global.text, "Right")
		physics_apply_force(phy_position_x,phy_position_y,phy_mass*50,0)
		if (!falling && !jumping) sprite_index = sprPlayerRunRight_1
		left = false
	}
}
if collision_rectangle(4330, 9100, 4380, 9200, objPlayer_1, 1, 0) && dir = 1{
	alarm[0] = 20
	dir = 0
}
