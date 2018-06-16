def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  separator = "-----------"
  puts separator
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts separator
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1 
end


def position_taken?(board, index)
  if 
    board[index] == " " || board[index] == """" || board[index] == nil
    false 
  else
    board[index] == "X" || board[index] == "O"
    true
  end
end

def valid_move?(board, index)
 if index.between?(0, 8) && !position_taken?(board, index) 
   true
 else 
   false 
  end
end
