board = [" "," "," "," "," "," "," "," "," "]


def position_taken?(board,index)
  board[index]== "X" || board[index]=="O"
end


def valid_move?(board,index)
  !(position_taken?(board,index)) && index.between?(0,8)
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
  index=user_input.to_i - 1
end


def move(array,index,value="X")
array[index]=value
end


def turn(board)
  puts "Please enter 1-9:"
  user_input=gets.strip
  index=input_to_index(user_input)
if valid_move?(board,index)
    # arguments in method calls pass values to the argument placeholders in method definitions.
    move(board, index) # array where the move method is defined gets set to the value of board.
    display_board(board)
  else
    turn(board)
end
end
