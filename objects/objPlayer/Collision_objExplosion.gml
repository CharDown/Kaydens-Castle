
if (!global.shielding) death()
if (global.shielding) {
	launch(5000*global.velo, point_direction(objExplosion.phy_position_x,objExplosion.phy_position_y,phy_position_x,phy_position_y))
	audio_play_sound(sndShieldHit,8,false)
}
