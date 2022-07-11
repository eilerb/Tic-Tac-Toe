class TicTacToe
  def initialize; end

  def player_names
    puts 'First player name?'
    name = gets.chomp
    player1 = Player.new(name)
    puts 'Second player name?'
    name = gets.chomp
    player2 = Player.new(name)
  end

  def play_game
    board = " * * *\n * * *\n * * *"
    winner = false
    while winner == false
      puts "Your turn #{player1.name}"
      player1_move = gets.chomp.to_i.split

      if player1_move[0] == 0
        if player1_move[1] == 0
          board[1] = "X"
        end
      end
    end
  end
end

class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

game = TicTacToe.new
game.player_names
game.play_game
