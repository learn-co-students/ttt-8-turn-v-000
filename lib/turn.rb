def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_integer = user_input.to_i
  user_integer -= 1
end

def move(board, position, char="X")
  board[position] = char
end

def valid_move?(board, index)
  if index >= 0 && index <= 8
    if !position_taken?(board, index)
     return true
    end
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
  	return false
  elsif board[index] == nil
  	return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_index = input_to_index(user_input)
  if valid_move?(board, input_index) == true
    move(board, input_index)
    display_board(board)
  else
    turn(board)
  end
end

# ask for input
# get input
# convert input to index
# if index is valid
#   make the move for index
#   show the board
# else
#   ask for input again until you get a valid input
# end
