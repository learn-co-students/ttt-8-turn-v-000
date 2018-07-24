def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

##changes the integer input to index 
def input_to_index(location)
  location = location.to_i - 1
end

##checks if it is a valid position
def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    true
  else
    false
  end
end

##checks if position is taken
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

def move(board, location, value="X")
  board[location] = value
end

def turn(board)
  puts "Please enter 1-9:"
  location = input_to_index(gets.strip)
  if valid_move?(board, location) == true
    move(board, location, value="X")
    display_board(board)
  else
    turn(board)
  end 
end