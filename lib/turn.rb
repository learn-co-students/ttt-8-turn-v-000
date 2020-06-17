def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your move method here!
def move(board, location, character="X")
  board[location.to_i - 1]=character
end

def position_taken?(board, position)
 (board[position] ==  " " || board[position] == "" || board[position] == nil) ? 
    false : true
end

# code your #valid_move? method here
def valid_move?(board, position)
  position = position.to_i - 1
  (position.between?(0,8) && position_taken?(board,position) == false)?
    true : false
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.chomp
  while !(valid_move?(board, position))
    puts "Please enter 1-9:"
    position = gets.chomp
  end
  move(board, position, "X")
  display_board(board)
end

