# code your #valid_move? method here
def valid_move?(board, index)
  if(index >= 0 && index <= 8)
    return !(position_taken?(board,index))
  end
  return false;
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if(board[index] != "X" && board[index] != "O")
    return false
  end
  return true
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  return user_input.to_i - 1
end

def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if(!valid_move?(board, index))
    turn(board)
  else
    move(board,index)
    display_board(board)
  end
end
