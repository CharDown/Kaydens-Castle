// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawLeaderboard(xOffset, yOffset){
	
	//change this code to alter the way the leaderboard is drawn
	

	
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
	
	try
	{
		for (var i = 0; i < 10; ++i) {
	    draw_text(xOffset, yOffset, string(global.leaderboard[i, 0]) + ": " + string(global.leaderboard[i, 1]))
		//draw_text(xOffset + 200, yOffset, string(global.leaderboard[i, 1]))
		
		yOffset += 50
		}

	}
	catch(_exception)
	{
		show_debug_message("Highscore System: Something Went Wrong." + " \n " + " Make sure you have set up your leaderboard by putting objHighScoreManage in your room.")
	
	}
	

}