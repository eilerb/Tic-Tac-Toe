class Board
  attr_accessor :board
  attr_reader :row_separator

  def initialize
    @board = Array.new(10, ' ')
    @row_separator = '---+---+---'
  end

  def print_board
    board_layout = "
     #{board[1]} | #{board[2]} | #{board[3]}
    #{row_separator}
     #{board[4]} | #{board[5]} | #{board[6]}
    #{row_separator}
     #{board[7]} | #{board[8]} | #{board[9]}"
    puts board_layout
  end

  def add_symbol(move, symbol)
    board[move.to_i] = symbol
    print_board
    puts "\n"
  end
end
