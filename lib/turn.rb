#turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end

#display board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid move
def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif !index.between?(0, 8)
    return false
  else
    return true
  end
end

#position taken
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

#input to index
def input_to_index(input)
  index = (input.to_i - 1)
  # Do I need this return statement?
  return index
end

#move
def move(board, index, player = "X")
  board[index] = player
  return board
end
