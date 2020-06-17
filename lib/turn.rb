def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


# code your #valid_move? method here
def valid_move?(board, position)
position = position.to_i
position = position - 1
  if position.between?(0, 8) && !position_taken?(board, position)
  #if position.between?(1, 9)
  #if position_taken?(board, position)
    true
  else false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.


def position_taken?(board, location)
  if board[location] == " " || board[location] == "" || board[location] == nil
    false
  else true
  end
end


# code your move method here!
def move(board, position, player = "X")
  position = position.to_i
  position = position - 1
  board[position] = player
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if !valid_move?(board, position)
    turn(board)
  else move(board, position)
    display_board(board)
  end
end
