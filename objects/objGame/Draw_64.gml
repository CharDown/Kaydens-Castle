global.time = round((current_time - starttime)/1000)

if room = rmGame_1 {
	draw_set_halign(fa_right)
	draw_text(1900,50,global.time)
}

if room == rmLose {
	draw_set_font(Lose)
	draw_set_halign(fa_center)
	draw_set_color(#ffe41d)
	//draw_text(window_get_width()/2,(window_get_height()/2)-170,"Your Score: " + string(global.score))
	draw_text(room_width/2,(room_height/2)-120,"Press R to Restart")

//	DrawLeaderboard(window_get_width()/2,(window_get_height()/2)-60)
	draw_set_color(c_white)
	draw_set_font(aaaaaa)
}

