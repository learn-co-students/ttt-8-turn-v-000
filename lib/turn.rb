board = ["X", "X", "X", "X", "O", "O", "X", "O", "O"]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
display_board(board)

def input_to_index(input)
  input.to_i-1
end

def position_taken?(board,index)
  if (board[index]) == " " || (board[index]) == "" || (board[index]) == nil
    taken = false
  else
    taken = true
end
end

def valid_move?(board,position)
  if position.to_i.between?(0,8) && !position_taken?(board,position.to_i)
    return true
  else
    return false
end
end

def move(board,location,player="X")
  board[location]=player
end

def turn(board)
puts "Please enter 1-9:"
input = gets.strip
index_position= input_to_index(input)
if valid_move?(board,index_position)
  move(board,index_position,"X")
else
  turn(board)
end
display_board(board)
end
