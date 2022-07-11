# require 'pry-byebug'
require_relative 'board'
require_relative 'player'

class TicTacToe
  attr_accessor :player1, :player2, :game_board, :winner

  LINES = [[1, 2, 3], [1, 4, 7], [1, 5, 9], [4, 5, 6], [7, 8, 9], [2, 5, 8], [3, 6, 9], [3, 5, 7]]

  def initialize
    puts 'First player name?'
    name = gets.chomp
    @player1 = Player.new(name)
    puts 'Second player name?'
    name = gets.chomp
    @player2 = Player.new(name)
    @game_board = Board.new
    @winner = false
  end

  def play_game
    game_board.print_board

    until winner == true
      turn(player1)
      break if winner?(player1)
      break if tie?

      turn(player2)
      winner?(player2)
    end
  end

  def turn(player)
    puts "\nYour turn #{player.name}: "
    move = gets.chomp.to_i
    game_board.add_symbol(move, player.symbol)
    player.player_moves << move
  end

  def winner?(player)
    player_choices = player.player_moves.permutation(3).to_a
    player_choices.each do |choice|
      if LINES.include?(choice)
        puts "#{player.name} won!"
        return self.winner = true
      end
    end
    self.winner = false
  end

  def tie?
    if game_board.board.one? { |item| item == ' ' }
      puts "It's a tie!"
      return self.winner = true
    end

    self.winner = false
  end
end

game = TicTacToe.new
game.play_game
