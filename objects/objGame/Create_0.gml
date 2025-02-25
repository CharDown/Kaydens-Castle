//gun
global.gunids = []
global.gunids2 = []
global.cdguns = []
global.lastshot = 0
global.lastgun = 0
global.bombids = []

// projectile
global.atkspd = 0.5
global.velo = 0.75
global.projids = []



// player
global.canjump = false
global.walljump = 0
global.playerspeed = 1
global.topspeed = 1
global.jumpstrength = 1
global.inventory = []
playerspawning = false
global.jumping = false
global.left = false
global.moving = false
global.falling = false
global.animationlock = false
global.shielding = false
global.devmode = false


// ground
global.groundids = []


// chest
global.chestids = []

// random
global.text = []
global.checkpoint = [objPlayer.phy_position_x, objPlayer.phy_position_y]
global.cutscene = false
global.lives = 5
global.aaaa = 0
global.laserwall = false
global.showdark1 = true
global.shouldmove = false

//alarm[1] = 10

audio_play_sound(sndSong,7,true)