if (input_check_pressed("up")) room_goto(rmGame_1)	

if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)) && mouse_check_button_pressed(mb_left) {
	room_goto(rmGame_1)	
}


if (input_check_pressed("Fullscreen")) {
	if (window_get_fullscreen()) {
		window_set_fullscreen(false) 
		return
	}
	if (!window_get_fullscreen()) {
		window_set_fullscreen(true) 
		return
	}
}