def display_board(board)
  dash_lines = "-----------"

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts dash_lines
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts dash_lines
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
  board[index] == " "
end

def valid_move?(board, index)
  index.between?(0, 8) && position_taken?(board, index)
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.chomp)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    index = turn(board)
  end
end
