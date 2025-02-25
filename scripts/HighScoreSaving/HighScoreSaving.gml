// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveScore(playerName, scoreInput){


	//checks to see if the player name is not blank or score is not an invalid value
	if(playerName != "" && scoreInput > -1)
	{
		
		//gets the most up to date leaderboard before writing
		GetLeaderboard()
		
		
		for (var i = 0; i < objHighScoreManager.amountOfEntries; ++i) {
		    
			//find where the player's score should go by seeing what entry it is bigger than
			if(scoreInput > global.leaderboard[i, 1])
			{
				//cycle backwards up the leaderboard shifting all the values downwards by 1
				for (var j = objHighScoreManager.amountOfEntries - 1; j > i; --j) {
				   global.leaderboard[j, 0] = global.leaderboard[j - 1, 0];
				   global.leaderboard[j, 1] = global.leaderboard[j - 1, 1];
				   
				}
				
				//once we have shifted all the values up insert  the new value
				global.leaderboard[i, 0] = playerName;
				global.leaderboard[i, 1] = scoreInput;
				break;
				
				
			}
			//gets the most up to date leaderboard after writing
			GetLeaderboard()
		}
		
		//save the new leaderboard
		ini_open("Leaderboard.ini")
		for (var i = 0; i < objHighScoreManager.amountOfEntries; ++i) {
		    ini_write_string(string(i), "Name", global.leaderboard[i, 0])
			ini_write_string(string(i), "Score", global.leaderboard[i, 1])
		}
		ini_close();
	
	}
	else
	{
		show_debug_message("Highscore System: Something Went Wrong. Maybe check you have inputed a valid name and score.")
	
	}

}