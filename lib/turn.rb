def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1 # convert input to position index
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else
    true
  end
end

def valid_move?(board, position)
  if position.between?(0,8) && !position_taken?(board, position)
    true
  else
    false
  end
end

def move(board, position, player="X")
  board[position] = player
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip # get user input (1-9)
  position = input_to_index(input) # convert user input number to an index (0-8) and store as position variable

  if valid_move?(board, position)
    move(board, position) # call move method & add player symbol to board array at position

    display_board(board) # display board with player move
  else
    turn(board) # ask again for player move
  end
end
