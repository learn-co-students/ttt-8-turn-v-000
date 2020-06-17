def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board, position)
   position = position.to_i - 1 #define position variable and minus it since array starts at 0
   position.between?(0,8) && position_taken?(board,position) == false ?  #position is between range and position taken is
                                                                           #false.
  true : false
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,position)
    board[position] ==  " " || board[position] == "" || board[position] == nil ?  #ternary is fun
    false : true
end
def move(board, location, current_player = "X")
  board[location.to_i-1] = current_player
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.strip
  if valid_move?(board,position) == true
    move(board,position,current_player = "X")
  else
    puts "Oops try again"
    position = gets.strip
  end
  puts "#{display_board(board)}"
end
