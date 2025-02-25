		gun = id
		if collision_rectangle(gun.phy_position_x+150,gun.phy_position_y,gun.phy_position_x-150,gun.phy_position_y+700,objPlayer,1,0){
			
			if global.lastgun == gun {	
				if (current_time - global.lastshot < 1000/global.atkspd) {
					return
				}
			}

				instance_create_layer(gun.x,gun.y+120, layer, objBombproj)
				global.lastshot = current_time
				global.lastgun = gun


		
		}