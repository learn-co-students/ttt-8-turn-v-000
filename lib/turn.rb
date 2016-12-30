def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index = index.to_i
  if index.between?(0,8) == false
    return false
  elsif index.between?(0,8) == true && position_taken?(board, index) == true
    return false
  elsif index.between?(0,8) == true && position_taken?(board, index) == false
    return true
  else return false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input = user_input - 1
end

def move(board, user_input, token="X")
  board[user_input] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  user_input = input_to_index(user_input)
  if valid_move?(board, user_input) == true
    move(board, user_input, token="X")
    display_board(board)
  elsif valid_move?(board, user_input) == false
    turn(board)
  end
end
