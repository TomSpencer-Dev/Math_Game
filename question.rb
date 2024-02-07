class Question

attr_reader :num1, :num2

def initialize (current_player)
  @num1 = rand 1..20
  @num2 = rand 1..20
  @current_player = current_player
end

def question
  print "#{@current_player}: What does #{@num1} plus #{@num2} equal?"
  end

end