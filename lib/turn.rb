def display_board(board)
  row(board, 0, 1, 2)
  line
  row(board, 3, 4, 5)
  line
  row(board, 6, 7, 8)
end

def line
  puts "-----------"
end

def row(board, num1, num2, num3)
  puts " #{board[num1]} | #{board[num2]} | #{board[num3]} "
end

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0, 8)
end

def move(board, index, token="X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  valid_move?(board, index) ? move(board, index) : turn(board)
  display_board(board)
end
