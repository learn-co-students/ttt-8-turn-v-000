#displays tic tac toe board with board spaces passed as an array

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#converts user's place on board to index integer
def input_to_index(user_input)
  index = user_input.to_i-1
  return index
end

#checks the number to see if 1) the position is already taken and 2) it is an actual number
def valid_move?(board, index)
  if position_taken?(board, index) || index < 0 || index > 8
    return false
  elsif !position_taken?(board, index)
    return true
  end
end

def position_taken?(board, position)
  if board[position] == " "
    false
  elsif board[position] == ""
    false
  elsif board[position] == nil
    false
  else board[position] == "X" || "O"
    true
  end
end

def move(board, position, char="X")
  board[position] = char
  return board
end

#asks user for a number, check if it is valid, and if it's not, recursively continues to ask for a number
def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp
  index = input_to_index(num)
if valid_move?(board, index)
  move(board, index)
  display_board(board)
else turn(board)

end
end
