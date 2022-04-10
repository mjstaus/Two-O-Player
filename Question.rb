class Question
    attr_reader :q

  def initialize
    @x = rand(1..10)
    @y = rand(1..10)
    @q = "What does #{@x} plus #{@y} equal?"
  end
  
  def is_correct(answer)
    correct = @x + @y
    answer.to_i == correct ? true : false
  end 
end