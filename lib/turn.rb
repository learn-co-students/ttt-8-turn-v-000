def turn(board)
  board = board
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
  valid_move?(board, index)
  turn(board)
  move(board, index, value = X)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
  position_taken?(board, index)
end

def position_taken?(board, index)
  input_to_index(input)
  puts index
  if board[index] == "X" || board[index] == "O"
    true
    puts "true"
  elsif board[index] == " " || board[index] == "" || board[index] == nil
  else
    false
    puts "false"
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) == true && position_taken?(board, index) == false
    true
  else
    false
  end
end

def move(board, index, value = "X")
 board[index]=value
end
