def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]}  "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, location)
  board[location] == " "
end # Is this position taken? Yes, if the method is true.

def valid_move?(board, position)
  position.to_i.between?(1,9) && position_taken?(board, position.to_i-1) #is position between 1 & 9 & is it empty?
end

def move(board, position, player = "X")
  index = position.to_i-1
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board, position)
    move(board, position, "X")
  else 
    turn(board)
  end
  display_board(board)
end