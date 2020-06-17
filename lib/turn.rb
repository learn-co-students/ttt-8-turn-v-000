def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(position)
  index = position.to_i - 1
 end
 
def move(board, index, character = "X")
  board[index] = character
end

def valid_move?(board, index)
 !(position_taken?(board, index)) && index.between?(0,8)
 end
 
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
 ! (board[index] == " " || board[index] == "" || board[index] == nil)
end

def turn(board)
puts "Please enter 1-9:"
position = gets.strip
index = input_to_index(position)
if valid_move?(board, index)
  move(board, index)
display_board(board) 
else
  !valid_move?(board, index)
  turn(board)
  puts "Please enter 1-9:"
display_board(board)  


end
end