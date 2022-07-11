class Board
  attr_accessor :board

  def initialize
    @board = Array.new(10)
  end

  def print_board
    row_separator = '---+---+---'
    column_separator = '   |   |   |'
    board_layout = "        
    #{board[1]}   |#{board[2]}   |#{board[3]}
    #{row_separator}
    #{board[4]}   |#{board[5]}   |#{board[6]} 
    #{row_separator}
    #{board[7]}   |#{board[8]}   |#{board[9]}"

    puts board_layout
  end
  
end
