
phy_fixed_rotation = true
phase = 0
dir = 1
lastjump = 0
global.cutscene = true
left = false
falling = false
jumping = false

if cutscene = 1 {
	dir = 1
	alarm[0] = 30
}

if cutscene = 2 {
	dir = 1	
	alarm[1] = 190
}