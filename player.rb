class Player 
  


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

