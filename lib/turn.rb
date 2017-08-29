def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i-1
end

def move(board, index, value="X")
  board[index] = value
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  anything = gets
  newvariable = input_to_index(anything)
  if valid_move?(board,newvariable)
    move(board, newvariable)
    display_board(board)#this is all i need to execute,pass move
  else
    turn(board)
  end
end









#LEARNED: variables actually execute; methods don't. values are stored in variables

# if index is valid
# make the move for index
# show the board
# else
# ask for input again until you get a valid input
