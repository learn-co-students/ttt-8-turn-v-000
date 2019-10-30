def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def valid_move?(board, index)
  (index.between?(0, 8) && board[index] == " ")
end

def position_taken?(board,index)
  if (board[index]==" "||board[index]==""||board[index]==nil)
    return false
  else return true
  end
end

def input_to_index(user_input)
 index = user_input.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  iput = gets.strip
  index = input_to_index(iput)
  if valid_move?(board, index)
  move(board, index)
  display_board(board)
else
  turn(board)
end
end
