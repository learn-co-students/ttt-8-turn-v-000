def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if(board[index] == " ") || (board[index] == "") || (board[index] == nil)
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  # is move present on the game board + is the position taken?
  if (index.between?(0, 8)) && (position_taken?(board, index) == false)
    return true
  else
    return false
  end
end

def input_to_index(input)
  input = input.to_i
  index = input - 1
  return index
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, char = "X")
    display_board(board)
  else
    turn(board)
  end
end
