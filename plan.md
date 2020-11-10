## Game Description
Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life. 
## Details 
- Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.
- The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is. 

## Classes 

### Question 
- number_generator-> Randomizes a number between 1 and 20 and saves them as global variables 
- string_generator-> calls the other methods to output a string like "Player 1: What does 5 plus 3 equal?" 
- validate-> Checks if the two numbers added together is equal to the user input. If false invokes life change.

### Game 
- turn_number-> Increments each time the class is invoked 
- player_turn-> If turn_number odd player one if even player 2 
- promt_user-> Promts the user to write in the console 
- response-> Sends response message based on validate msg true/false 
- new_turn-> If neither player is at 0 outputs NEW TURN and calls turn number. If a player is at 0 lives
outputs the player that won and their lives left then GAME OVER followed by good bye! 


### Player 
- take_life-> When called takes a life off of current players turn using the odd/even turn  
- update_score-> Outputs life count of the game  
- player_names-> Takes in 2 names for the player names

Game
Player names/lives
Question 
