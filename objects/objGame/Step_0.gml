if (input_check_pressed("restart")) game_restart()

if (input_check_pressed("Fullscreen")) {
	if (window_get_fullscreen()) {
		window_set_fullscreen(false) 
		return
	}
	if (!window_get_fullscreen()) {
		window_set_fullscreen(true) 
		return
	}
}

if room == rmGame_1 {
	
// gun shooting
	for (i = 0; i < array_length(global.gunids); i++){
		gun = global.gunids[i]
		if collision_rectangle(gun.phy_position_x,gun.phy_position_y-150,gun.phy_position_x+2000,gun.phy_position_y+100,objPlayer,1,0){
			gun.phy_rotation = ((point_direction(gun.phy_position_x,gun.phy_position_y,objPlayer.phy_position_x,objPlayer.phy_position_y)*-1)-90)
	
			if global.lastgun == gun {	
				if (current_time - global.lastshot < 500/global.atkspd) {
					return
				}
			}
		
				instance_create_layer(gun.phy_position_x,gun.phy_position_y, layer, objProjectile,
				{
					rotation : gun.phy_rotation,
				})
				global.lastshot = current_time
				global.lastgun = gun

		}
	}


}