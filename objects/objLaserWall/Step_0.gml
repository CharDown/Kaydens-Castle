if (global.shouldmove) {
	viewposx = lerp(camera_get_view_x(view_camera[0]),1728,0.15)
	viewposy = lerp(camera_get_view_y(view_camera[0]),5284,0.15)
	camera_set_view_pos(view_camera[0],viewposx,viewposy)
}