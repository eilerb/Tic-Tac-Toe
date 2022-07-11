class TicTacToe
  @@players = []

  def initialize
    @board = " * * *\n * * *\n * * *"
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
        @board[8] = symbol
        puts @board
      when '1'
        @board[10] = symbol
        puts @board
      when '2'
        @board[12] = symbol
        puts @board
      end
    when '2'
      case move[1]
      when '0'
        @board[15] = symbol
        puts @board
      when '1'
        @board[17] = symbol
        puts @board
      when '2'
        @board[19] = symbol
        puts @board
      end
    end
  end

  def play_game
    puts 'First player name?'
    name = gets.chomp
    @@players << Player.new(name, 'X')
    puts 'Second player name?'
    name = gets.chomp
    @@players << Player.new(name, 'O')

    winner = false
    while winner == false
      puts "Your turn #{@@players[0].name}"
      move = gets.chomp.split
      print_board(move, @@players[0].symbol)
      check_winner

      puts "Your turn #{@@players[1].name}"
      move = gets.chomp.split
      print_board(move, @@players[1].symbol)
      check_winner
    end
  end

  def check_winner
    winner = false
    if @board[1] && @board[8] && @board[15] == 'X' ||
       @board[3] && @board[10] && @board[17] == 'X' ||
       @board[5] && @board[12] && @board[19] == 'X' ||
       @board[1] && @board[3] && @board[5] == 'X' ||
       @board[8] && @board[10] && @board[12] == 'X' ||
       @board[15] && @board[17] && @board[19] == 'X' ||
       @board[1] && @board[10] && @board[19] == 'X' ||
       @board[5] && @board[10] && @board[15] == 'X'
      puts "#{@@players[0].name} won!"
      winner = true
    elsif @board[1] && @board[8] && @board[15] == 'O' ||
          @board[3] && @board[10] && @board[17] == 'O' ||
          @board[5] && @board[12] && @board[19] == 'O' ||
          @board[1] && @board[3] && @board[5] == 'O' ||
          @board[8] && @board[10] && @board[12] == 'O' ||
          @board[15] && @board[17] && @board[19] == 'O' ||
          @board[1] && @board[10] && @board[19] == 'O' ||
          @board[5] && @board[10] && @board[15] == 'O'
      puts "#{@@players[1].name} won!"
      winner = true
    else
      winner
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
