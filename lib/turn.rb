def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0,8)
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, position, token="X")
  board[position] = token
  board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.to_i
  if !valid_move?(board, input_to_index(input))
    turn(board)
  else
    display_board(move(board, input - 1))
    # display_board(board)
  end
end
