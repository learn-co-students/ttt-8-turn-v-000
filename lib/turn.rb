def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
integer = input.to_i
index = integer - 1
end

def position_taken?(board, index)
  if board[index] == "X"
    true
  elsif board[index] == "O"
    true
  elsif board[index] != " " || "" || nil
    false
  end
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  end
end

def move(board, index, character="X")
board[index] = character
end

def turn(board)
puts "Please enter 1-9:"
input = gets.strip
integer = input.to_i
index = integer - 1
input_to_index(input)
if valid_move?(board, index)
  move(board, index, character="X")
else counter = 0
  until counter == index.between?(1,9)
  puts "Please reenter 1-9:"
  end
end
puts display_board(board)
end
