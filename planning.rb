# The following is the planning for the game:

class Player
  # encapsulates info about the two players
  # state => player's name and number of lives
  # methods => def initialize(name) which will assign a name and initial lives to both players 
    # def lose_life which will decrement a life from a player 
    # def alive? which will check if player still has lives (boolean, retunrs true of player still alive)
end

class Game
  # encapsulates about the game flow in terms of the main game loop and managing whom the current player is
  # state => two players (Player 1 & Player 2), current_player, game status 
  # methods => def initialize(player1, player2) with two players 
    # def start which will start game loop 
    # def switch_player which will change current_player 
    # gef game_over? which will check if game is over and will output GAME OVER
end 

class Question
  # encapsulates math questions (simple math additions) and validates answers 
  # state => question and correct_answer
  # methods => def initialize a question with two random numbers between 1 and 20
    # def ask_question whcih the user will read as output on the CLI
    # def check_answer which will validate player answer/input in CLI 
end

# More relevant info:

# class Player is focused on player's state

# class Game and class Question are to handle the user I/O such as displaying questions and reading questions