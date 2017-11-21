board = ["   ","   ","   ","   ","   ","   ","   ","   ","   "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  input = input - 1
end

def position_taken?(board,index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board,index)
  if  index.between?(0,8) && position_taken?(board,index) == false#if index is in the range between 0 and 8 and if it's not X or O
    return true
  else
    return false
  end
end

def move(board,index,value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index) == true
    move(board,index,value = "X")
    display_board(board)
  else
    turn(board)
  end
end





#
#   while valid_move(board,index) == true
#     input = gets.strip
#     input = input.to_i
#     index = input - 1
#     board[index] = value
#     display_board(board)
#   else
#     turn(board)
#   end#takes the index and puts X in the board and displays
# end
