def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board,index)

    if position_taken?(board,index) == false
    return true
  else
    return false
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board,index)
  if index.between?(0,9) == true
    if board[index] == (" ") || board[index] == ("") || board[index] == (nil)
    return false
  else
    return true
    end
  end
end

def input_to_index(user_input)

  user_input = user_input.to_i
  i = user_input - 1

end

def update_array_at_with(array, index, value)
  array[index] = value
end

def move(board,user_input,character = "X")
   board[user_input] = character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

  if valid_move?(board,index) == false
  turn(board)

else

    move(board,index,character = "X")
    display_board(board)


end
end
