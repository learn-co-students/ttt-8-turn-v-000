#display board array in human readable format
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#check if move valid for context of board size
def valid_move?(board, position)
  position = position.to_i
  position = (position - 1)
  if ((position_taken?(board, position)) || !(position.between?(0,8)))
    false
  else
    true
  end
end

#check is space is free
def position_taken?(board, position)
  if ((board[position] == " ") || (board[position] == "") || (board[position] == nil))
    false
  else
    true
  end
end

#accept input for move
def move(board, input, value = "X")
  position = (input.to_i - 1)
  board[position] = value
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position)
    display_board(board)
  else
    puts "Invalid move. Please choose again."
    turn(board)
  end
end
