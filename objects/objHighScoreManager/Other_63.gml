/// @description Capture the player's name
// You can write your code in this editor


//if player's name is not blank then it is valid (you can change this to meet your criteria. This would probably be the best place to put any validation if you want it)
if(ds_map_find_value(async_load, "result")  != "")
{
	global.playerName = ds_map_find_value(async_load, "result")
	SaveScore(global.playerName, global.playerScore)

}