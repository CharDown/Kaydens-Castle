
for (i = 0; i < global.lives; i++){

	draw_sprite(sprHeart ,1 ,30, 30+(i*50))	


}

r = global.aaaa

if forward = true {
	global.aaaa+=1
} else if forward = false {
	global.aaaa-=1
}

if global.aaaa > 230 {
	forward = false
}
if global.aaaa < 50 {
	forward = true	
}

draw_set_color(make_color_rgb(r,g,b))
