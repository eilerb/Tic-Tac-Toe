class Board
  attr_accessor :board, :board_layout
  attr_reader :row_separator, :column_separator

  def initialize
    @board = Array.new(10)
    @row_separator = '---+---+---'
    @column_separator = '   |   |   |'
    @board_layout = "
    #{board[1]}   |#{board[2]}   |#{board[3]}
    #{row_separator}
    #{board[4]}   |#{board[5]}   |#{board[6]}
    #{row_separator}
    #{board[7]}   |#{board[8]}   |#{board[9]}"
  end

  def print_board
    puts board_layout
  end

  def add_symbol(move, symbol)
    move = move.to_i
    board[move] = symbol
  end

  def valid_move?(move)
    
  end
end
