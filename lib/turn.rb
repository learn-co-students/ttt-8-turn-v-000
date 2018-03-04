def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts ["-----------"]
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts ["-----------"]
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(position) # converts a user_input to an integer
  position.to_i - 1 # we subtract one because the user's input has to match the array.
end # if user wants top left square, they will select 1 but the indexed poin in the array is 0

def valid_move?(board, position)
  if position.between?(0,8) && !position_taken?(board, position)
    true
  else
    false
  end
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

def move(board, index, input="X") # 3 arguments - board, position a player wants to fill & position player fills and their character X or O (X is the default value)
  board[index] = input # when we make a move, we'll place an X or O at this location "input" on the board
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  index = input_to_index(position)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
  display_board(board)
end
