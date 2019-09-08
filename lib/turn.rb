def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
puts "Please enter 1-9:"
input = gets.strip
index = input_to_index(input)
if valid_move?(board, index)
  move(board, index, playercharacter = "X")
else
  puts "That move is invalid. Please enter 1-9:"
  inputs = gets.strip
end
display_board(board)
end


def input_to_index(input)
  input.to_i - 1
end

def move(board, index, playercharacter = "X")
  board[index] = playercharacter
end

def valid_move?(board, index)
  if index >= 9
    false
  elsif position_taken?(board, index)
    false
  elsif index <= -1
    false
  elsif index.between?(0,8)
    true
  else board[index] != "X" || board[index] != "O"
    true
  end
end

def position_taken? (board, index)
  if board[index] == "" || board[index] == " "
    false
  elsif board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end
