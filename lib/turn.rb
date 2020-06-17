def turn (board)
puts "Please enter 1-9:"
user_input = gets.strip
index = input_to_index(user_input)
if valid_move?(board, index)
  board[index]="X"
  display_board(board)
else
  turn(board)
end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
if !position_taken?(board, index) && index.between?(0,8) && board[index] == " "
  return true
else
  return false
end
end

def position_taken? (board, index)
if board[0] == " "
  return false
elsif board[index] == ""
  return false

elsif board[index] == "X" || board[index] == "O"
  return true

else
  return false
end
end

def input_to_index(user_input)
user_input = user_input.to_i
user_input = user_input - 1
end

def move(board, position = 0, char = "X")
board[position] = char
end
