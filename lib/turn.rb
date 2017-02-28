#prints the current state of the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "

end

#need to take user input and convert it to an index, so minus 1
def input_to_index(user_input)
  index = user_input.to_i
  index - 1

end

user_input = "1"

#accepts board, index and returns true if correct range and not occupied
def valid_move?(board, index)
  if index.between?(0,8) && ! position_taken?(board, index)
    true

  else
    false

  end
end

#accepts board, index_from_user that was converted from their raw input, and a token with default value X
  def move(board, index, token = "X")
    board[index] = token

  end

#not required but is good for validation of the move
def position_taken?(board, index)
if board[index] == "X" || board[index] == "O"
  true

else
  false

end

end

#this method has to handle invalid input and ask for input again.
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

  until valid_move?(board, index)
    puts "Invalid Move! Try again."
    user_input = gets.strip
    index = input_to_index(user_input)

  end

  move(board, index)
  display_board(board)

end
