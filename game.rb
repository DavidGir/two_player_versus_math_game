require_relative 'player'
require_relative 'question'

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

  def start
    # Loop to ensure players are still alive
    while @player1.alive? && @player2.alive? 
      # call method to handle each game turn
      play_turn
      switch_player
    end
    game_over?
  end

  def display_scores
    puts "#{@player1.name}: #{@player1.lives} vs #{@player1.name}: #{@player2.lives} "
  end

  

  


