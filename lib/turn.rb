def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index < 9 && index > -1
    position_taken?(board, index)
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] != " "
    false
  else
    true
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  move = gets.chomp
  index = input_to_index(move)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def input_to_index(input)
  index = input.to_i
  return index - 1
end
