# This method accepts a board as an argument and prints out the current state of the board for the user:
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


# This method accepts a board and an index from the user and returns true if the index is within
# the correct range of 0-8 and is currently unoccupied by an X or O token:
def valid_move?(board, index)
 if index.between?(0, 8) && position_taken?(board, index) == false
   true
 else
   false
 end
end


# This method checks if the position is occupied:
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end


# This method should accept a board, an index from the user (which was converted from their
# raw input with input_to_index), and a token to mark that position with (you can give that
# argument a default value of 'X'––we're not worrying about whose turn it is yet). The method
# should set the correct index value of that position within the board equal to the token:
def input_to_index(input)
  input.to_i - 1
end


def move(board, index, token = "X")
  board[index] = token
end


# Turn method using other helper methods to play 1 turn:
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip              #get user input and store in variable 'input'
  index = input_to_index(input)   #convert user response into an integer and subtract 1


  # maybe need something (like an IF stmt) to check for if the position is not occupied with an X or O,
  # make the move, otherwise run the Turn method again.
  if valid_move?(board, index)    #check if user input is in correct range of array 0-8, and position taken is true.
    move(board, index)
    display_board(board)          #display the board after all these above checks
  else
    turn(board)
  end

end
