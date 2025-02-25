gun = id
if collision_rectangle(gun.phy_position_x,gun.phy_position_y-150,gun.phy_position_x-2000,gun.phy_position_y+100,objPlayer,1,0){
	gun.phy_rotation = ((point_direction(gun.phy_position_x,gun.phy_position_y,objPlayer.phy_position_x,objPlayer.phy_position_y)*-1)-90)
	
	if global.lastgun == gun {	
		if (current_time - global.lastshot < 500/global.atkspd) {
			return
		}
	}
		newangle = normaliseangle(gun.phy_rotation)
		xdist = gun.phy_position_x - lengthdir_x(240,newangle)
		ydist = gun.phy_position_y - lengthdir_y(240,newangle)

		instance_create_layer(xdist,ydist, layer, objProjectile,
			{
				rotation : gun.phy_rotation,
			})
		global.lastshot = current_time
		global.lastgun = gun
}
