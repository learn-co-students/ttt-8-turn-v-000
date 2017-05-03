def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  indexInput = user_input.to_i
  indexInput - 1
end

def move(array, index, character="X")
  array[index] = character
end
# code your #valid_move? method here
def valid_move?(board, index)
  indexMove = index.to_i
  indexMove - 1
  indexMove.between?(0, 8) && !position_taken?(board, index)
end



# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  board.include?("")
  !board.include?(" ")
  board.include?("X" || "O")

end
