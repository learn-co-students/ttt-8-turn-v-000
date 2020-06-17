def display_board(board)
puts " #{board [0]} | #{board [1]} | #{board [2]} "
puts "-----------"
puts " #{board [3]} | #{board [4]} | #{board [5]} "
puts "-----------"
puts " #{board [6]} | #{board [7]} | #{board [8]} "
end

def valid_move?(board, position)
if position.to_i.between?(0,8) && board[position.to_i] == " "
  return true
else
  return false
end
end

def position_taken?(board, position)
!(board[position].nil? || board[position] == " " || board[position] == "")
end

def input_to_index(input)
  input.to_i-1
end

def move(board, position, default = "X")
  board[position.to_i] = default
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip.to_i
  position = input_to_index(input)

  if valid_move?(board, position)
    move(board, position, default = "X")
    display_board(board)
  else
    turn(board)
end
end
