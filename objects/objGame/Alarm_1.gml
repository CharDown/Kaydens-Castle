	

for (i = 0; i < array_length(global.gunids2); i++){
	gun = global.gunids2[i]
	instance_create_depth(gun.phy_position_x,gun.phy_position_y, -1, objBase)
	


}
