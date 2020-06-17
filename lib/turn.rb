def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  display_board(board)
  puts "Please enter 1-9:"
  input=gets.strip.to_i
  if input<1 || input>9
    turn(board)
  end
  index=input_to_index(input)
  valid_move?(board, index)
  position_taken?(board, index)
  move(board, index, letter="X")
  display_board(board)
end

def input_to_index(input)
  index=input.to_i-1
  return index
end

def valid_move?(board, index)
if position_taken?(board, index)==true && index>=0 && index<=8
  return true
else
  return false
end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board, index)
  if board[index] =="" || board[index]==" " || board[index]== nil
    return true
else
  return false
end
end

def move(board, index, letter="X")
board[index]=letter
return board
end
