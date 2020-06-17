def display_board(board)
  print "  #{board[0]} | #{board[1]} | #{board[2]} \n"
  print " -----------\n"
  print "  #{board[3]} | #{board[4]} | #{board[5]} \n"
  print " -----------\n"
  print "  #{board[6]} | #{board[7]} | #{board[8]} \n"
end


def valid_move?(board, position)
  position = position.to_i - 1
  if position.between?(0, 8) && !(is_position_taken?(board, position))
    return true
  else
    return false
  end
end


def is_position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else
    return true
  end
end


def move(board, position, value ="X")
  board[position.to_i - 1] = value
  return board
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input) == true
    move(board, input, value = "X")
  else puts "Please enter 1-9:"
    input = gets.strip
    move(board, input, value = "X")
  end
  display_board(board)
end
