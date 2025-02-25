physics_apply_force(phy_position_x,phy_position_y,0,phy_mass*-3500)
if (left) sprite_index = sprPlayerJumpLeft_1
if (!left) sprite_index = sprPlayerJumpRight_1
jumping = true
if cutscene = 1 {
	alarm[0] = 80
}