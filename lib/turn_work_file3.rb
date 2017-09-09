# create tic tac toe turn here
def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
index = input_to_index(index)
while valid_move?(board, index) == false
  puts "Please enter 1-9:"
  move(board, position, char = "X")
  display_board(board)
end
end
