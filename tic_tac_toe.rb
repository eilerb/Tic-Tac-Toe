class TicTacToe
  def initialize
    @board = " * * *\n * * *\n * * *"
    @@players = []
  end

  def print_board(move, symbol)
    case move[0]
    when '0'
      case move[1]
      when '0'
        @board[1] = symbol
        puts @board
      when '1'
        @board[3] = symbol
        puts @board
      when '2'
        @board[5] = symbol
        puts @board
      end
    when '1'
      case move[1]
      when '0'
        @board[7] = symbol
        puts @board
      when '1'
        @board[9] = symbol
        puts @board
      when '2'
        @board[11] = symbol
        puts @board
      end
    when '2'
      case move[1]
      when '0'
        @board[13] = symbol
        puts @board
      when '1'
        @board[15] = symbol
        puts @board
      when '2'
        @board[17] = symbol
        puts @board
      end
    end
  end

  def play_game
    puts 'First player name?'
    input = gets.chomp.split
    @@players << Player.new(input[0], input[1])
    puts 'Second player name?'
    input = gets.chomp
    @@players << Player.new(input[0], input[1])

    winner = false
    while winner == false
      puts "Your turn #{@@players[0].name}"
      move = gets.chomp.split
      print_board(move, @@players[0].symbol)

      puts "Your turn #{@@players[1].name}"
      move = gets.chomp.split
      print_board(move, @@players[1].symbol)
    end
  end
end

class Player
  attr_accessor :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end
end

game = TicTacToe.new
game.play_game
