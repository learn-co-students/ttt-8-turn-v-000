# print the current state of the board
def display_board(board)
  puts " #{board[0]} " + '|' + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + '|' + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + '|' + " #{board[7]} " + "|" + " #{board[8]} "
end

#check if the position is taken
def position_taken? (board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  elsif board[index] == " " || "" || nil
    return false
  end
end

#check if the move is valid
def valid_move? (board, index)
  if position_taken?(board,index) != false || !(index.between?(0,8))
    return false
  elsif position_taken?(board,index) == false && index.between?(0,8)
    return true
  end
end

#convert user input into index
def input_to_index(num)
  num = num.to_i
  return num - 1
end

#do the move
#need to get user input
def move(board, index, symbol = "X")
  board[index] = symbol
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board, index, symbol = "X")
    display_board(board)
  else
    turn(board)
  end
end
