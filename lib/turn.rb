# board
board = ["   ","   ","   ","   ","   ","   ","   ","   ","   ",]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  user_input.to_i - 1
end

# valid_move
def valid_move?(board, index)
  if (index.between?(0,8)) && (position_taken?(board, index))
    true
  else
    false
  end
end
# position_taken
def position_taken?(board, index)
  if ((board[index] == "X") || (board[index] == "O"))
    false
  else
    true
  end
end

# move
def move(board, index, char = "X")
  board[index] = char
end

# turn
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, char = "X")
    display_board(board)
  else
    turn(board)
  end
end
