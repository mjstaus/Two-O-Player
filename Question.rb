class Question

  def initialize
    @x = rand(1..10)
    @y = rand(1..10)
    puts "What does #{@x} plus #{@y} equal?"
  end
  
  def is_correct(answer)
    correct = @x + @y
    answer.to_i == correct ? true : false
  end 
end