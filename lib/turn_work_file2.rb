# Define display_board that accepts a board and prints
# out the current state.
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8) == true
    true
  else
    false
end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else return true
end
end
# code your input_to_index and move method here!
def input_to_index(user_input)
  user_input = user_input.to_i
  user_input - 1
end
#create move method
def move(board, position, char = "X")
  board[position.to_i] = char
end

# create tic tac toe turn here
def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
#---------------
#while valid_move?(board, index) == true
puts "Please enter 1-9:"
display_board(board)
end
