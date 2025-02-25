/// @description Setup Leaderboard


//this is the name that all blank entries will use
placeHolderName = "Unknown"
//this is the amount of entries that the leaderboard will store (it is probably best to have at least 3)
amountOfEntries = 5

//Set up the inital array for the leaderboard
global.leaderboard = [10, 10]


//the player name global variable (used for the GetPlayerNameFunction)

global.playerName = ""

//the player score global variable (used for the GetPlayerNameFunction)


global.playerScore = 0


//Setup leaderboard only if it has never been create before


if(file_exists("Leaderboard.ini"))
{
	
	ini_open("Leaderboard.ini")

	for (var i = 0; i < amountOfEntries; ++i) {
    
		//utilising a 2D array to store the leaderboard. Position 0 is the players name while 1 is the score
		global.leaderboard[i, 0] = placeHolderName;
		global.leaderboard[i, 1] = "0";
	}
	
	ini_close()


}



//If you don't want to write your own input system to get the player's name you can use this one. 
//However, you might want to consider that there are no checks on what the player can enter.
//You also won't be able to submit a sore until the player has submitted a name which will be returned in a global name veriable
//You also need to use the global.playerScore variable to hold your score and it will be written to the leaderboard as soon as the player presses OK.


function GetPlayerName()
{
	nameGotten = get_string_async("Enter you name: ", "Anonymous")
	
	//see Async - Dialog for the rest of the code
	
	
	

}



function WipeLeaderboard()
{
	ini_open("Leaderboard.ini")

	for (var i = 0; i < 10; ++i) {
    
		global.leaderboard[i, 0] = "unknown";
		global.leaderboard[i, 1] = "0";
	}
	ini_close()

}