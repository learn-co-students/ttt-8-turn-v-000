def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# code your #valid_move? method here
def valid_move?(board,index)
if position_taken?(board,index) == false && index.between?(0,8) == true
  true # position on the board && position not taken
else
  false # return false or nil here for invalid move
end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
if board[index] == " "
  false
elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
end
end
# code your input_to_index and move method here!
# input_to_index
def input_to_index(user_input)
  user_input.to_i - 1
end
# move method
def move (board, index, new_player = "X")
  board[index] = new_player
end
# define turn method here
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
if valid_move?(board,index) == true
    move(board, index, new_player = "X") || move(board, index, new_player = "O")
    display_board(board)
else
  turn(board)
end
end
