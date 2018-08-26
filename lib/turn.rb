
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i-1
end
#don't need gets because we already collected the input - how, idk..

def valid_move?(board, index)
  position_taken?(board, index) == false && index.between?(0, 8) == true
end

def move(board, index, token="X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "This is an invalid move. Try again."
    turn(board)
  end
end

def position_taken?(board, index)
  if board[index] != "X" && board[index] != "O"
    false
  else
    true
  end
end


#u wrote a function that checks to see if the position is taken correct? it looks like you are
# trying to something similar after the && is the if condition
# what if we just used that function position_taken? instead? but since it will
# return true if it is taken we should use the ! (not) operator also
