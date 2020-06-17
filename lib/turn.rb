def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0, 8)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if (board[index] == nil || board[index].strip == "")
    false
  elsif (board[index].strip == "X" || board[index].strip == "O")
    true
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, x_or_o = 'X')
  board[index] = x_or_o
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  spot = input_to_index(input)
  if (valid_move?(board, spot))
    move(board,spot)
  else
    turn(board)
  end
  display_board(board)
end

=begin

get input
convert input to index
if index is valid
  make the move for input
else
  ask for input again until you get a valid input
end

=end
