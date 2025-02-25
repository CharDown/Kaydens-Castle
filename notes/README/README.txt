Welcome to the Quick High Score System!

Here are a couple things to keep in mind when using it:

When you are ready to ship your game make sure to run WipeLeaderboard() once (and then remove it) to get rid of all your debug scores!

Make sure objHighscoreManager is in your rooms (I have marked it persistent so you can add it in your start room and forget about it)

When using GetPlayerName() you have to use the provided global variables to set your score and name or else it will not work. This is because it is an asyncronous function 
and runs at the same time as the rest of the game.

If you have any questions or find any bugs please message me!


