def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = (user_input.to_i)-1
end

def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif index < 0 || index > 8
    false
  else
    true
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def move(board, index, token = "X")
  if valid_move?(board, index)
    board[index] = token
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  validation = valid_move?(board, index)
  if !validation
    puts "That position is taken. Please enter 1-9:"
    user_input = gets.strip
  else
    board[index] = "X"
  end
  display_board(board)
end
