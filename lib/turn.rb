
# Define #display_board and print out the current state of the board for the user
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Define #input_to_index to convert the user input to a valid array position (subtract 1 from their input)
def input_to_index(user_input)
  index=(user_input .to_i) -1
end



#Define #valid_move? Returns true if the index is within the correct range of 0-8 and is currently unoccupied by an X or O token.
# Encapsulate the logic to check if a position is occupied in its own method, with #position_taken?
def valid_move?(board,index)
# The user_input was accepted, converted to an integer and reduced by 1 in #input_to_index. Now you are testing to make sure
# that the value of the index is within the confines of the board array whose elements are 0-8. It also requires NOT #position_taken
# which means that the test that was done in position_taken which resulted in TRUE is turned into a NOT by using !position_taken
if index .between?(0,8) && !position_taken?(board,index)
  true
end

end

#Define #turn to get user input
def turn (board)
#Ask the user to tell you where they want to move on the board
  puts "Please enter 1-9:"
#Get the user input
  user_input=gets.strip
  index=input_to_index(user_input)
  # If the move is a valid move, then make the move and display the board
  if valid_move?(board,index)
    move(board,index,"X")
    display_board(board)
#If the user puts in an invalid answer or the space in the array is not free, go back to turn and start over
  else turn(board)
end
end

#Define #position_taken to see if the position the user requests is available or already filled with an X or an O.
# This code will be used with #valid_move?

def position_taken?(board, index)

  if (board[index]==" " || board[index]=="" || board[index] ==nil)
    false
  elsif (board[index]=="X"|| board[index]=="O")
    true
 end

end

#Define #move. Once it is is verified that the position is valid - this method inserts an X by default into the position chosen
#by the user
def move (board,index,character="X")
 board[index]=character
end
