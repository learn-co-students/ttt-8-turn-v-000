#Board Display
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#Input to index
def input_to_index (user_input)
  index = user_input.to_i - 1
  index
end
#Move Method
def move (board, index, char = "X")
  board[index]= char
end
#Valid Move Method
def valid_move? (board, index)
  #this is saying if our value is between 0 and 8 AND our position is empty ==> this is a valid move
  if index.to_i.between?(0, 8) && position_taken?(board, index) == false
    return true
  #if the above  values are not met then this is an invalid move
  else
    return false
  end
end
#Position Taken Method
def position_taken? (board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == "X"
    return true
  elsif board[index] == "O"
    return true
  else
    false
  end
end
#Method we are currently working on
def turn(board)
#This is the initial prompt telling our user to input
  puts "Please enter 1-9:"
#this gets our user input
  user_input= gets.strip
#I set the index variable for later methods to = the outcome of the input to index method
  index = input_to_index(user_input)
#If the outcome of the valid move method is true then run the board method and display the board
  if valid_move?(board, index) == true
    move(board, index, char = "X")
    display_board(board)
#if not run the turn method again
  else
    turn(board)
  end
end
