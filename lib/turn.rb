# display the current state of the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# is this a valid move? Is it within the range of the board? Is the place already taken?
def valid_move?(board, index)
  # if the index is within range of 0-8 and is unoccupied
  if position_taken?(board, index) == false && index.between?(0, 8)
    return true
  else
    return false
  end
end

# Is this position already taken?
def position_taken?(board, index)
  if board[index] === " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

# converts a user_input to an integer
def input_to_index(user_input)
  index = user_input.to_i - 1
end

# set the correct index value of that position within the board equal to the token
def move(board, index, token="X")
  display_board = board[index] = token
end

# ask and receive the player's turn
def turn(board)
  # get input
  puts "Please enter 1-9:"
  #get input
  user_input = gets.strip
  # convert to index
  index = input_to_index(user_input)
  # if move is valid, make the move
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  # if move is invalid, ask for input again
  else
    turn(board)
  end
end
