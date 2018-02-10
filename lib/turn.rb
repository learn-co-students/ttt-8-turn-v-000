# display_board

def display_board(board)
  row_1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  row_2 = " #{board[3]} | #{board[4]} | #{board[5]} "
  row_3 = " #{board[6]} | #{board[7]} | #{board[8]} "
  dashes = "-----------"
  puts row_1
  puts dashes
  puts row_2
  puts dashes
  puts row_3
end

# position_taken?

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O" || board == []
    true
  end
end

# valid_move?

def valid_move?(board, index)
  if position_taken?(board, index) == false && board[index] != nil && index >= 0 && index <= 8
    true
  else
    false
  end
end

# input_to_index

def input_to_index(input)
  input = input.to_i
  input = input - 1
end

# move

def move(array, index, value = "X")
  array[index] = value
end

# turn

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == false
    turn(board)
  else
    move(board, index)
    display_board(board)
  end
end
