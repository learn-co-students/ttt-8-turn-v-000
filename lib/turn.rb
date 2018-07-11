def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  return index.to_i - 1
end

def valid_move?(board, index)
  if board[index]!="X"&&board[index]!="O"&&index.between?(0,8)
    return true
  else
    return false
  end
end

def move(board, index, char)
  board[index]=char
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index,'X')
    display_board(board)
  else
    turn(board)
  end
end
