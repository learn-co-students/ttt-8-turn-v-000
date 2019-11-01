def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == false
    turn(board)
  end
  move(board, index, value = "X")
  display_board(board)
end

### HELPER METHODS ###

def display_board(board)
  puts " #{board[0]} | #{ board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{ board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{ board[7]} | #{board[8]} "
end

def input_to_index(input)
  request = input.to_i
  request - 1
end

def valid_move? (board, index)
  if index_valid?(board, index) == true && position_taken?(board, index) == false
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  elsif
    board[index] == "X" || board[index] == "O"
    true
  else
    nil
  end
end

def index_valid?(board, index)
  if index.between?(0, 10)
    true
  else
    false
  end
end

def move(board, index, value = "X")
  token = value
  board[index] = token
end
