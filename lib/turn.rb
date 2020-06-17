def turn(board)
  puts "Welcome to Tic Tac Toe!\n"
  index = greeting
  index = input_to_index(index)
  move(board,index)
  display_board(board)
end

def greeting
  puts "It is your turn.\n"
  puts "Please enter 1-9:"
  index = gets.strip
  return index
end

def invalid_move
  puts "That move is invalid!\n"
  greeting
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(int)
  return int.to_i - 1
end

def move(board, index, char = "X")
  if valid_move?(board, index)
    board[index] = char
  else
    invalid_move
  end
end

# code your #valid_move? method here
def valid_move?(board,index)
  if index > 9 || index < 0
    return false
  elsif position_taken?(board,index)
    return false
  else
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end
