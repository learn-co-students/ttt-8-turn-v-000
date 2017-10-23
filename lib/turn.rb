#4 things a computer can do
# GET the value of a variable
# SET the value of a variable
# DEFINE the steps of a function
# EXECUTE the steps of a function

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, my_char = "X")
  board[index] = my_char
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  puts index
  if valid_move?(board, index)
    move(board, index, my_char = "X") && display_board(board)
  else
    puts "your choice is invalid, please try again"
    turn(board)
  end
end
