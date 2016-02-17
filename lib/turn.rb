def turn(board)
  
  puts "Please enter 1-9:"
  position = gets.strip
  until valid_move?(board, position) == true

puts "Hey that's not a valid move!"
    position = gets.strip
  end
  move(board, position, player = "X")
  display_board(board)
end

def move(board, position, player = "X")
  board[position.to_i - 1 ] = player
end

def display_board(board)
 board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position_taken?(board, position.to_i-1) == false && position.to_i.between?(1, 9)
     true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position.to_i] == "" || board[position.to_i] == " " || board[position.to_i] == nil
    false
  else
    true
  end
end