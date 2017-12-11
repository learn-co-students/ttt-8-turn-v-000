def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#changes the user input to the corresponding board index
def input_to_index(input)
  return input.to_i - 1
end

#checks if the move is valid
def valid_move?(board, idx)
  if position_taken?(board, idx) == false && idx.between?(0, 8)
    return true
  else
    return false
  end
end

#helper method for #valid_move?
def position_taken?(board, idx)
  if board[idx] == " " || board[idx] == "" || board[idx] == nil
    return false
  else
    return true
  end
end


def move (board, idx, token = "X")
  return board[idx] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

# #loop until #valid_move is true. will return index once loop breaks
#   until valid_move?(board, index) == true
#     puts "Please enter 1-9:"
#     input = gets.strip
#     index = input_to_index(input)
#   end
#
#   move(board,index)
#   display_board(board)


if valid_move?(board,index) == true
  move(board,index)
  display_board(board)
else
  turn(board)
end



end
