class Question

attr_reader :num1, :num2

def initialize (player1, player2)
  @num1 = rand 1..20
  @num2 = rand 1..20
  @player_1 = player1
  @player_2 = player2
end

def question
  puts "#{@player_1}: What does #{@num1} plus #{@num2} equal?"
  end

end