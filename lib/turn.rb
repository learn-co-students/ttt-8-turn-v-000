def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  elsif board[index] == "" || board[index] == " " || board[index] == nil
    return false
  end
end

def valid_move?(board, index)
  if index.to_i.between?(0,8) && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def move(board_array, index, character="X")
  board_array[index] = character
  return board_array
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets
  user_index = input_to_index(user_input)

 if valid_move?(board, user_index) == true
   move(board, user_index, character="X")
   return display_board(board)
 elsif valid_move?(board, user_index) == false
   turn(board)
 end
end
