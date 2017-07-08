def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts " -----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts " -----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
index.to_i.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else board[index] == "X" || "O"
    true
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, input, value = "X")
  board[input] = value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip.to_i
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
  turn(board)
  end
end
