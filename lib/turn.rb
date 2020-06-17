user_input = " "

def input_to_index(user_input)
  index = user_input.to_i
  return index -= 1
end

def display_board(board)
horizontal_line = "-----------"
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts horizontal_line
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts horizontal_line
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
if board[index] == "X" || board[index] == "O"
   true
elsif board[index] == " " || board[index] == "" || board[index] == nil
   false
else
  false
end
end

def valid_move?(board, index)
if position_taken?(board, index) == false && index.between?(0, 8)
  true
else
  nil
end
end

def move(board, index, token = "X")
board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
   turn(board)
 end
end
