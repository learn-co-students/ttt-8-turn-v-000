def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts row = "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts row = "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i - 1
end

def move(board, user_input, value = "X")
  board[user_input] = value
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
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
