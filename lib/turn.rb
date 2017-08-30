#ask for input
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
  display_board(board)
end

#convert input to index
def input_to_index(input)
  index = input.to_i - 1
  index
end

def move(board, index, value = "X")
    board[index] = value
end

#if index is valid, make the move for index then show the board
def valid_move?(board, index)
  if ((position_taken?(board, index)) != (index.between?(0, 8)))
    true
  elsif ((index.between?(0, 8)) == (position_taken?(board, index)))
    false
  end
end

def position_taken?(board, index)
  if ((board[index] == " ") || (board[index] == "") || (board[index] == nil))
    false
  elsif ((board[index] == "X") || (board[index] == "O"))
    true
  end
end

#else ask for input again until we get a valid input
def play(input)
  input_to_index(input)
  counter = 0
  while counter < 8
    move(board, index, value)
    turn(board)
    counter += 1
  end
end
