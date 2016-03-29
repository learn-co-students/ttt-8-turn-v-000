def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  position = position.to_i
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, position)
  if !(position.to_i-1).between?(0,8)
    return false
  elsif position_taken?(board, (position.to_i-1)) == true
    return false
  else
    return true
  end
end

def move(board, position, player = "X")
  board[position.to_i - 1] = player
end

def turn(board)
  prompt = "Please enter 1-9:"
  puts prompt
  user_move = gets.strip

  if valid_move?(board, user_move) == true
    move(board, user_move, player = "X")
  else
    turn(board)
  end
  display_board(board)
end


