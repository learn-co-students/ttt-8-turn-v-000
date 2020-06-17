board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0,8)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  board[index] == "X" || board[index] == "O"
end

def input_to_index(user_input)
  converted_Input = user_input.to_i
  converted_Input - 1
end


board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def move(the_board, index, token = "X")
 the_board[index] = token
end

def turn(board)
  #Asking the user for their move by position 1-9.
  puts "Please enter 1-9:"
  #Receiving the user input.
  position = gets.strip
  #Convert position to an index.
  actual_position = input_to_index(position)
  #If the move is valid, make the move and display the board to the user.
  if valid_move?(board, actual_position)
    move(board, actual_position)
    display_board(board)
  #If the move is invalid, ask for a new move until a valid move is received.
  else
    turn(board)
  end
end
