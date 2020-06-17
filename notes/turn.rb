def display_board(board)
  # how to get the stuff onto the board? interpelation
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  board[index] ==  "X" || board[index] == "O"
end

def move(board, index, token = "X")
  # the thing that we are assigning goes on the left
  board[index] = token
end

# Recursion - when you call a method that you are writing within itself
# .. caustion: the main thing that you have to be carful with is that you dont create an infinit loop
# Their has to be a way for the method to stop calling itself at some point. So the way to usually handle that
# .. is that their is some conditional logic. THEIR HAS TO BE SOMEWAY THAT THE METHOD CAN STOP CALLING ITSELF EVENTUALLY
# OTHERWISE YOU CRASH EVERYTHING!!
def turn(board)
  puts "Please enter 1-9:"
  a_user_input = gets.strip
  index=input_to_index(a_user_input)
  if valid_move?(board, index)
     move(board, index)
     display_board(board)
   else
     puts "Whoops! That's not a valid move."
     turn(board)
 end
end
