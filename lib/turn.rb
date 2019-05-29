def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  return index.to_i - 1
end

def valid_move?(board, index)
  return inbounds?(index) && !position_taken?(board, index)
end

def position_taken?(board, index)
  return board[index] != " " && board[index] != "" && board[index] != nil
end

def inbounds?(index)
  return index >= 0 && index < 9
end

def move(board, position, character = "X")
  board[position] = character
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets)
  while !valid_move?(board, index)
    puts "Invalid input. Please enter 1-9:"
    index = input_to_index(gets)
  end
  move(board, index)
  display_board(board)
end
