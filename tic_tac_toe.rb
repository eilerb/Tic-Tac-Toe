class TicTacToe
  
  def initialize

  end

  def play_game
    puts 'First player name?'
    player1 = Player.new(gets.chomp)
    puts 'Second player name?'
    player2 = Player.new(gets.chomp)
  end

  def board
    
  end

end

class Player
  attr_accessor :name

  @@player_count = 0

  def initialize(name)
    @name = name
    @@player_count += 1
  end
end

game = TicTacToe.new()
game.play_game
