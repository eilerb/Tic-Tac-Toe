require_relative 'board'
require_relative 'player'

class TicTacToe
  attr_accessor :player1, :player2
  
  @@players = []

  def initialize
    puts 'First player name?'
    name = gets.chomp
    @player1 = Player.new(name)
    puts 'Second player name?'
    name = gets.chomp
    @player2 = Player.new(name)
  end

  def play_game
    
    board = Board.new
    board.print_board
    winner = false
    while winner == false
      puts "Your turn #{@@players[0].name}"
      move = gets.chomp.split
      board.add_symbol(move, @@players[0].symbol)
      winner = check_winner
      break if winner == true

      puts "Your turn #{@@players[1].name}"
      move = gets.chomp.split
      board.add_symbol(move, @@players[1].symbol)
      winner = check_winner
    end
  end

  def check_winner
    winner = false
    if @board[1] == 'X' && @board[8] == 'X' && @board[15] == 'X'
      puts "#{@@players[0].name} won!"
      winner = true
    elsif @board[3] == 'X' && @board[10] == 'X' && @board[17] == 'X'
      puts "#{@@players[0].name} won!"
      winner = true
    elsif @board[5] == 'X' && @board[12] == 'X' && @board[19] == 'X'
      puts "#{@@players[0].name} won!"
      winner = true
    elsif @board[1] == 'X' && @board[3] == 'X' && @board[5] == 'X'
      puts "#{@@players[0].name} won!"
      winner = true
    elsif @board[8] == 'X' && @board[10] == 'X' && @board[12] == 'X'
      puts "#{@@players[0].name} won!"
      winner = true
    elsif @board[15] == 'X' && @board[17] == 'X' && @board[19] == 'X'
      puts "#{@@players[0].name} won!"
      winner = true
    elsif @board[1] == 'X' && @board[10] == 'X' && @board[19] == 'X'
      puts "#{@@players[0].name} won!"
      winner = true
    elsif @board[5] == 'X' && @board[10] == 'X' && @board[15] == 'X'
      puts "#{@@players[0].name} won!"
      winner = true
    elsif @board[3] == 'O' && @board[10] == 'O' && @board[17] == 'O'
      puts "#{@@players[1].name} won!"
      winner = true
    elsif @board[5] == 'O' && @board[12] == 'O' && @board[19] == 'O'
      puts "#{@@players[1].name} won!"
      winner = true
    elsif @board[1] == 'O' && @board[3] == 'O' && @board[5] == 'O'
      puts "#{@@players[1].name} won!"
      winner = true
    elsif @board[8] == 'O' && @board[10] == 'O' && @board[12] == 'O'
      puts "#{@@players[1].name} won!"
      winner = true
    elsif @board[15] == 'O' && @board[17] == 'O' && @board[19] == 'O'
      puts "#{@@players[1].name} won!"
      winner = true
    elsif @board[1] == 'O' && @board[10] == 'O' && @board[19] == 'O'
      puts "#{@@players[1].name} won!"
      winner = true
    elsif @board[5] == 'O' && @board[10] == 'O' && @board[15] == 'O'
      puts "#{@@players[1].name} won!"
      winner = true
    elsif @board[1] == 'O' && @board[8] == 'O' && @board[15] == 'O'
      puts "#{@@players[1].name} won!"
      winner = true
    else
      winner = false
    end
  end
end

game = TicTacToe.new
game.play_game
