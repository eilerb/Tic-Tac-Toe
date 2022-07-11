class Board
  attr_accessor :board, :board_layout

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
    
    case move
    when 1
      self.board[1] = symbol
      print_board
    when 2
      self.board[2] = symbol
      print_board
    when 3
      self.board[3] = symbol
      print_board
    when 4
      self.board[4] = symbol
      print_board
    when 5
      sel.board[5] = symbol
      print_board
    when 6
      self.board[6] = symbol
      print_board
    when 7
      self.board[7] = symbol
      print_board
    when 8
      self.board[8] = symbol
      print_board
    when 9
      self.board[9] = symbol
      print_board
    end
  end
end
