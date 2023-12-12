require_relative 'player'

class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def switch_player 
    # Current player will be checked by ternary; if it is player1 return to player2 if false return to player1
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

 

