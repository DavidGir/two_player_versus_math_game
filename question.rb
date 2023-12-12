class Question 

  # Initialize object instance with two random numbers between 1 to 20 for simple addition questions
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  # Generate the math questions
  def to_s
    "What does #{@number1} plus #{@number2} equal?"
  end 

  # Method to chck the answer; player_answer is the input from user/player received from get.chomps in Game class
  def correct_answer?(player_answer)
    player_answer == @answer
  end 
end 