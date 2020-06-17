def turn (board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if (valid_move?(board, index))
    move(board, index)
    display_board(board)
  else
    error_message (board)
  end
end

def error_message (board)
  puts "that move is invalid, try another move!"
  turn (board)
end

def input_to_index(stringdex)
  index = stringdex.to_i - 1
end

def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, index)
  index.between?(0,8) && board[index] == " "
end

def move (board, index, player = "X")
  board[index] = player
end
