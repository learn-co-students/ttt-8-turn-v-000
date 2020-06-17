
#takes in index
def turn(board)

puts "Please enter 1-9:"
user_input = gets
new_index = input_to_index(user_input)

if valid_move?(board, new_index) == false
  turn(board)

end


move(board, new_index, "X")
display_board(board)
end




def input_to_index(user_input)

  new_index = user_input.to_i
  new_index = new_index - 1

end



#takes in move and unpdeared the board
def move(board, new_index, position = "X")

board[new_index] = position

end





#displays the current state of the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end




#checks whether the move input was valid
def valid_move?(board, new_index)
  if 8 < new_index || new_index < 0
    return false
  elsif position_taken?(board, new_index) == true
    return false
  else
    return true
  end
end


#checks weather the position is taken or not
def position_taken?(board, new_index)
  if board[new_index] == "X" || board[new_index] == "O"
    return true
  else
    return false
  end
end
