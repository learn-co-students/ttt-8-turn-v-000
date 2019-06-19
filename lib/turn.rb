#prints 3X3 tic tac toe board

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
  
  
  
  
  
# 1. accepts a board and index,  2. returns true if index is within the correct range 3. & is unoccupied
def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] ==""
    return FALSE
  elsif board[index] == NIL
    return FALSE
  elsif board[index] == "X" || board[index] == "O"
    return TRUE
  end
end





#mark position with X, set correct index value of position in board 
def input_to_index(position) 
  position.to_i - 1 #.to_i changes to an integer
end

def move(board, index, value = "X")
 board[index] = value 
end
 


def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index = input_to_index(input) 
  if valid_move?(board, index)
    move(board, index)
  else 
    turn(board)
  end
  display_board(board)
end






#get input
#convert input to index
#if index is valid
 # make the move for input
#else
 # ask for input again until you get a valid input
#end




 
  