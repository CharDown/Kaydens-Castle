//if collision_rectangle(2048, 6720, 2100, 6100, objPlayer, 1, 0) {
if objPlayer.phy_position_y < 6720 {
	global.atkspd = 1
	global.velo = 1
}

if collision_rectangle(3100,9200,3000,8400,objPlayer,1,0) && scenestriggered = 0 {
		scenestriggered += 1
		scenenum = 1
		xpos = 3196
		ypos = 9120
		alarm[1] = 60
		global.cutscene = true
		objPlayer.sprite_index = sprPlayerIdleRight
}

if collision_rectangle(4000,9200,4100,8400,objPlayer,1,0) && scenestriggered = 1 {
		scenestriggered += 1
		scenenum = 2
		xpos = 4096
		ypos = 9120 
		alarm[1] = 60
		global.cutscene = true
		objPlayer.sprite_index = sprPlayerIdleRight
}

if collision_rectangle(1824,4288,1860,4000,objPlayer,1,0) && !livesgiven {
	global.lives = 9
	livesgiven = true
}
