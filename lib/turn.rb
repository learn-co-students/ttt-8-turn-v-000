board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  pipe = "|"
  separating = "-----------"
  puts " #{board[0]} " + pipe + " #{board[1]} " + pipe + " #{board[2]} "
  puts separating
  puts " #{board[3]} " + pipe + " #{board[4]} " + pipe + " #{board[5]} "
  puts separating
  puts " #{board[6]} " + pipe + " #{board[7]} " + pipe + " #{board[8]} "
end

def move(board, index, character = "X")
  board[index] = character
  puts board
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  elsif board[index] != "X" && board[index] != "O"
    false
  end
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  end
end

def input_to_index(user_input)
  integer = user_input.to_i
  index = integer - 1
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, character = "X")
    display_board(board)
  else turn(board)
  end
end
