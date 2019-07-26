
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0,8) && board[index] == " "
    return true
  else
    return false
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def input_to_index(input)
  return input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  i = input_to_index(gets.chomp)
  if valid_move?(board, i)
    move(board, i)
    display_board(board)
  else
    turn(board)
  end
end