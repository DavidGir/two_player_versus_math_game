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
    puts "----- NEW TURN -----"
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def start
    puts "----- START GAME -----"
    # Loop to ensure players are still alive
    while @player1.alive? && @player2.alive? 
      # call method to handle each game turn
      play_turn
      switch_player
    end
    game_over?
  end

  # Method to display scores as output on the CLI
  def display_scores
    puts "#{@player1.name}: #{@player1.lives} lives left vs #{@player2.name}: #{@player2.lives} lives left"
    puts "\n"
  end

  # Method to check if either player is still alive and call on the method announce_winner for the player whom is alive
  def game_over? 
    if @player1.alive?
      announce_winner(@player1)
    else
      announce_winner(@player2)
    end 
  end

  # Method that displays the winner (takes in either player1 or player2)
  def announce_winner(winner)
    puts "#{winner.name} wins with #{winner.lives} lives remaining!"
  end

  # make play_turn method private as it is part of the games internal control flow. 
  private 

  def play_turn
    question = Question.new
    # Outputs players turn and question to CLI
    puts "#{@current_player.name}'s turn: #{question}"

    # Prompt the user to make an input
    print "Enter your answer: "

    # Retrieve players answer and sets its value to integer 
    player_answer = gets.chomp.to_i

    if question.correct_answer?(player_answer)
      puts "That's correct, nicely done!"
    else 
      puts "Seriously? C'mon that's not it!"
      @current_player.lose_life
    end

    display_scores
  end
end

  


