class Game

# Set up game here (e.g., players, scores)
  def initialize
    @player_1 = Person.new('Player 1', 3)
    @player_2 = Person.new('Player 2', 3)
  end

  def start
  puts @player_1.name
  puts @player_1.lives
    # The game loop or logic to start the game
  end

  # Other methods related to game logic
end