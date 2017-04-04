
def display_board(board)
  column_separator = "|"
  row_separator = "-----------"
  print " #{board[0]} "
  print column_separator
  print " #{board[1]} "
  print column_separator
  puts " #{board[2]} "
  puts row_separator
  print " #{board[3]} "
  print column_separator
  print " #{board[4]} "
  print column_separator
  puts " #{board[5]} "
  puts row_separator
  print " #{board[6]} "
  print column_separator
  print " #{board[7]} "
  print column_separator
  puts " #{board[8]} "
end



def input_to_index (input)
  index = input.to_i - 1
end



def position_taken? (board, index)
  board[index] == "X" || board[index] == "O"
end

def valid_move? (board, index)
  position_taken?(board,index) == false && index.between?(0,8)
end



def move (board, index, token = "X")
  board[index] = token
end



def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end

end
