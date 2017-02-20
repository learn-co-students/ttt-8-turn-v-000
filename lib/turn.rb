
# Define display_board that accepts a board and prints
# out the current state.
def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  user_index = input_to_index(input)
  if (valid_move?(board, user_index))
    move(board, user_index)
    display_board(board)
  else
    user_index = turn(board)
  end
end

# code your input_to_index and move method here!
def input_to_index (user_input)
  index = user_input.to_i-1
end
# code your #valid_move? method here
def valid_move? (board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  else
    false
  end
end
# code your #position_taken? method here!
def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def move(board, index, character = "X")
  board[index] = character
end
