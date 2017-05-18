# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if !(index >=0) || !(index<=8)
    return false
  end
  if position_taken?(board, index)
    return false
  else
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if (board[index] == "") || (board[index] == " ") || (board[index] == nil)
    return false
  else
    return true
  end
end

def input_to_index(ind)
  ind = ind.to_i - 1
  return ind
end

def move(board, index, value = "X")
  board[index] = value
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  move = gets.strip
  index = input_to_index(move)
  if valid_move?(board,index)
    board = move(board, index)
    display_board(board)
    return board
  else
    turn(board)
  end
end
