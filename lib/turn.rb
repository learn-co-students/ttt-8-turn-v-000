# Display board for play
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Convert user move to board index
def input_to_index(user_input)
  user_input.to_i - 1
end

# Add user move to board -- update board array with user char
def move(board, user_move, user_char = "X")
  board[user_move] = user_char
end

# Confirm if move is valid (true) or out of board scope (false)
def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index)
    true
  else
    false
  end
end

# Confirm if position is empty (true) or not empty (false)
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    true
  else
    false
  end
end

# Execute a turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  user_move = input_to_index(input)
  if valid_move?(board, user_move) && position_taken?(board, user_move)
    move(board, user_move)
    display_board(board)
  else
    puts "Invalid move, try again"
    turn(board)
  end
end
