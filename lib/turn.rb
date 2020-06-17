# accepts a board as an array argument and prints the current state of the board to the player
def display_board(board)
  rows = Array.new
  rows[0] = " #{board[0]} | #{board[1]} | #{board[2]} "
  rows[1] = "-----------"
  rows[2] = " #{board[3]} | #{board[4]} | #{board[5]} "
  rows[3] = "-----------"
  rows[4] = " #{board[6]} | #{board[7]} | #{board[8]} "

  puts rows[0]
  puts rows[1]
  puts rows[2]
  puts rows[3]
  puts rows[4]
end

# takes the position the player would like to play and determines if it is already occupied by an "X" or "O"
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] = "O"
    return true;
  end
end

# determines if the index the player would like to play is a valid position on the baord and calls position_taken? to determine if the position is already occupied
def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

# converts the players input to the corresponding board index
def input_to_index(input)
  (input.to_i) - 1
end

#
def move(board, position, player_character="X")
  board[position] = player_character
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip.to_i - 1
  input_to_index(input)
  if valid_move?(board, input)
    move(board, input, "X")
    display_board(board)
  else
    turn(board)
  end
end
