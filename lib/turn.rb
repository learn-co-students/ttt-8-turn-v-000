def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(input)
  index = input.to_i - 1
end
def move(array, index, value='X')
  array[index] = value
end
def position_taken?(board, index_number)
if board[index_number] == " "
return false
elsif board[index_number] == ""
return false
elsif board[index_number] == nil
return false
elsif board[index_number] == "X" || "O"
return true
end
end
def valid_move?(board, index_number)
if position_taken?(board, index_number)
  return false
elsif index_number.between?(0, 8)
  return true
else
  return false
end
end
def turn(board)
  puts "Please enter 1-9:"
  input = gets
index = input_to_index(input)
  if valid_move?(board, index)
    puts move(board, index, value='X')
    puts display_board(board)
  else
    puts "Please enter 1-9:"
turn(board)
end
end
