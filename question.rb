
class Question 

  # Initialize object instance with two random numbers between 1 to 20 for simple addition questions
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end