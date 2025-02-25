// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetLeaderboard() {
	
		ini_open("Leaderboard.ini")
		
		for (var i = 0; i < objHighScoreManager.amountOfEntries; ++i) {
			//looks for the variable of name for each entry, if there is not one then set it to unknown
		    global.leaderboard[i, 0] = ini_read_string(string(i), "Name", objHighScoreManager.placeHolderName)
			 global.leaderboard[i, 1] = ini_read_string(string(i), "Score", 0)
		}
		ini_close()
		

}


