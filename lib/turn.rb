#The following prints arbitrary arrangements of the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#Converts user_input to interger using to_i and subtracts 1 from the user_input to make index
def input_to_index(user_input)
  user_input.to_i - 1
end
#IF the index is between 0 and 8 AND the position is NOT taken they can use their value
def valid_move?(board,index)
  if index.between?(0,8) && !position_taken?(board,index)
    true
  end
end
#Make sure to define position_taken when using it as a helper method
#If the space is NOT available we CAN (true) enter number
def position_taken?(board,index)
  if board[index] != " "
    true
  end
end
#Move to the value the current player has chosen
def move(board,index, current_player = "X")
  board[index] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end
