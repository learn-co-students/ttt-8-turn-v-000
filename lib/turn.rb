def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

# checks to see if a move is valid using #position_taken?
def valid_move?(board, index)   #is the index even within the board?
  if index < 0 || index > 8
    return false
  else
    return !(position_taken?(board, index)) #checks to see if position is occupied
  end
end

# checks to see if position is nil on the board
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == 'X' || board[index] == 'O'
    return true
  end
end

#takes a turn on the tictactoe board
def move(board, index, value = 'X')
  board[index] = value
  return board
end

#takes a turn
def turn(board)
  puts "Please enter 1-9:"
  value = gets.strip
  index = input_to_index(value)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end
