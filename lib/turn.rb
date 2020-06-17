board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    true
  elsif !index.between?(0, 8) || position_taken?(board, index) == true
    false
  end
end

def position_taken? (board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board [index] == nil
    false
  elsif board[index] == "X" || "O"
    true
  end
end

def input_to_index(input)
  s = input.to_i
   s - 1
end

def turn_count(board)
end

def move(board, index, char = "X")
  board[index] = char
  turn_count(board)
  display_board(board)
end

def update_array_at_with(array, index, value)
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
   move(board, index, char = "X")
  else
  display_board(board)
  turn(board)
end
end
