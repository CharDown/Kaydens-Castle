
rotation = normaliseangle(((point_direction(phy_position_x,phy_position_y,objPlayer.phy_position_x,objPlayer.phy_position_y+16))))
force_strength = 5*global.velo
theta = ((rotation*-1)-rotation)
xvec = lengthdir_x(force_strength,theta)  
yvec = lengthdir_y(force_strength,theta)

phy_speed_x = xvec
phy_speed_y = yvec
//physics_apply_force( x, y, phy_mass*xvec, phy_mass*yvec )  

phy_rotation = rotation

