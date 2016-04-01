def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == nil || board[position] == ""
    return false
  else
    return true
  end
end

def valid_move?(board, position)
  position = position.to_i - 1
  if position < 9 && position >= 0
    if !position_taken?(board, position)
      return true
    else
      return false
    end
  else
    return false
  end
end

def move(board, spot, player = "X")
  board[spot - 1] = player
end

def turn(board)
  puts "Please enter 1-9:"
  spot = gets.strip.to_i
  until valid_move?(board, spot)
    puts "Please enter 1-9:"
    spot = gets.strip.to_i
  end
  move(board, spot)
  display_board(board)
end