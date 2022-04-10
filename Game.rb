require_relative "player"
require_relative "question"

class Game
  attr_accessor :current_player

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @current_player = @player1
  end

  def toggle_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def ask_question
    question = Question.new
    puts "Player #{@current_player.name}: #{question.q}"
    print "> "
    input = $stdin.gets.chomp
    if question.is_correct(input) == false
      @current_player.lose_life
      puts @current_player.lives
    end
  end


  
  
end

game = Game.new
game.ask_question





# question = Question.new
# input = $stdin.gets.chomp
# puts question.is_correct(input)