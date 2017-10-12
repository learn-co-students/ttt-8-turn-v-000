def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  value = user_input.to_i - 1
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == "X"
    true
  elsif board[index] == "O"
      true
  elsif board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  end
end

def move(board, index, char="X")
  board[index] = char
end

def turn(board)
  user_input = request_user_input
  ind = input_to_index(user_input)
  if valid_move?(board, ind)
    move(board, ind)
  else
    user_input = request_user_input
  end
  display_board(board)
end

def request_user_input
  puts "Please enter 1-9:"
  user_input = gets.strip
end
