switch (global.walljump)
	{
		case 0:
			physics_apply_force(phy_position_x,phy_position_y,0,phy_mass*-3500*global.jumpstrength)
			break;
		case 1:
			physics_apply_force(phy_position_x,phy_position_y,phy_mass*-1500*global.jumpstrength,phy_mass*-3700*global.jumpstrength)
			break
		case 2:
			physics_apply_force(phy_position_x,phy_position_y,phy_mass*+1500*global.jumpstrength,phy_mass*-3700*global.jumpstrength)
			break;
	}
				
alarm[0] = 5
global.walljump = 0