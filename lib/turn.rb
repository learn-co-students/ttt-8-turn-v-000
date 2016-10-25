
def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, index)
  if index.between?(0, 8) && board[index] == " "
    true
  else
    false
  end
end

def input_to_index (num_str)
  position = num_str.to_i
  ind = position - 1
end

def move (board, index, char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  index = input_to_index(position)
  until valid_move?(board, index)
    puts "Invalid move, please try again."
    position = gets.strip
    index = input_to_index(position)
  end
  move(board, index)
  display_board(board)
end
