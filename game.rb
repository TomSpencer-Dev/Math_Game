class Game

# Set up game here (e.g., players, scores)
  def initialize
    @player_1 = Person.new('Player 1', 3)
    @player_2 = Person.new('Player 2', 3)
  end

  def start
    q = Question.new(@player_1.name, @player_2.name)
    puts  q.question
    answer = q.num1 + q.num2
    input = gets.chomp
    checkAnswer(answer, input)

  end
def checkAnswer(a, i)
  if a == i
    puts "YES! You are correct."
  else
    puts "Seriously? No!"
  end
end


  # Other methods related to game logic
end