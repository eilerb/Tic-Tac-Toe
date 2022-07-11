class TicTacToe
  def initialize
    @board = " * * *\n * * *\n * * *"
    @@players = []
  end

  

  def print_board(move)
    case move[0]
    when '0'
      case move[1]
      when '0'
        @board[1] = 'X'
        puts @board
      when '1'
        @board[3] = 'X'
        puts @board
      when '2'
        @board[5] = 'X'
        puts @board
      end
    when '1'
      case move[1]
      when '0'
        @board[7] = 'X'
        puts @board
      when '1'
        @board[9] = 'X'
        puts @board
      when '2'
        @board[11] = 'X'
        puts @board
      end
    when '2'
      case move[1]
      when '0'
        @board[13] = 'X'
        puts @board
      when '1'
        @board[15] = 'X'
        puts @board
      when '2'
        @board[17] = 'X'
        puts @board
      end
    end
  end

  def play_game
    puts 'First player name?'
    name = gets.chomp
    @@players << Player.new(name)
    puts 'Second player name?'
    name = gets.chomp
    @@players << Player.new(name)

    winner = false
    while winner == false
      puts "Your turn #{player1.name}"
      move = gets.chomp.split
      print_board(move)
    
      puts "Your turn #{player2.name}"
      move = gets.chomp.split
      print_board(move)
  end
end

class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

game = TicTacToe.new
game.play_game
