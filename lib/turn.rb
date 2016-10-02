def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input) # code your input_to_index and move method here!
  input.to_i - 1
end

def valid_move?(board, index)
  if index.between?(0,8) && board[index] == " "
    return true
  else
    return false
end
end

def move(board, index, character="X")
board[index]=character
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.chomp
  index= input_to_index(input)
  if valid_move?(board, index)
  move(board, index, character="X")
  else
    turn(board)
  end
  display_board(board)
end
