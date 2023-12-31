class Player 
  # getter on @name instance variable (does not modify it)
  attr_reader :name
  # getter and setter on @lives intance variable 
  attr_accessor :lives 


  # Method to initialize new object instance
  # Includes players names and their starting lives
  def initialize(name)
    @name = name
    @lives = 3
  end 

  # Method to decrement a life from player
  def lose_life 
    @lives -= 1
  end 

  # Method which verifies (returns boolean) if players still alive
  def alive?
    @lives > 0
  end
end 

