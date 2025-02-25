if current_time - lastjump > 300 {
	lastjump = current_time
	if cutscene = 2 {
		alarm[2] = 10			
	}
}