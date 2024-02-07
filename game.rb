class Game

# Set up game here (e.g., players, scores)
  def initialize
    @player_1 = Person.new('Player 1', 3)
    @player_2 = Person.new('Player 2', 3)
  end

  def start
    @current_player = @player_1
      play_turn        
  end

  def play_turn
    puts "----- NEW TURN -----"
    q = Question.new(@current_player.name)
    puts  q.question
    answer = q.num1 + q.num2
    input = gets.chomp.to_i
    checkAnswer(answer, input)
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"  
    unless @player_1.lives == 0 || @player_2.lives == 0
      switchPlayer
      play_turn
    else  
      game_over
    end
  end

  def game_over
    if @player_1.lives == 0
      puts "#{@player_2.name} wins with a score of #{@player_2.lives}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    else 
      puts "#{@player_1.name} wins with a score of #{@player_1.lives}/3"
    end
  end

  def switchPlayer
    if @current_player == @player_1
      @current_player = @player_2
    else
      @current_player = @player_1
    end
  end

  def checkAnswer(a, i)
    if a == i
      puts "YES! You are correct."
    else
      puts "Seriously? No!"
      @current_player.lives -= 1
    end
  end

end