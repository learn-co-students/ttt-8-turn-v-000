def display_board(board)
  puts " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move? (board, index)
if index.between?(0,8) && !position_taken?(board, index)
  true
else
  false
end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
     false
  else
     true
end
end

def move(board, index, character = "X")
 board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
 user_input = gets.strip
index = input_to_index(user_input)
until valid_move?(board, index) == true
  puts "please try a valid move. Use an empty location 1 through 9"
  user_input = gets.strip
 index = input_to_index(user_input)
end
move(board, index, character= "X")
display_board(board)
end
