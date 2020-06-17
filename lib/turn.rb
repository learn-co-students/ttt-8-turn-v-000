#Should accept a board as an argument and print out the current state of the board for the user.
def display_board(the_board)
  puts " #{the_board[0]} | #{the_board[1]} | #{the_board[2]} "
  puts "-----------"
  puts " #{the_board[3]} | #{the_board[4]} | #{the_board[5]} "
  puts "-----------"
  puts " #{the_board[6]} | #{the_board[7]} | #{the_board[8]} "
end

#user's raw input converted
def input_to_index(user_index_choice)
  user_index_choice.to_i - 1
end

#Should accept a board and an index from the user and return true if the index is within the correct range of 0-8 and is currently unoccupied by an X or O token.
def valid_move?(board, index)

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def location_exists?(index)
  if index.between?(0,8) == true
    return true
  else
    return false
  end
end

if (position_taken?(board, index)) == false && (location_exists?(index) == true)
  return true
else
  return false
  end
end

#This method should accept a board, an index from the user (which was converted from their raw input with input_to_index), and a token to mark that position with (you can give that argument a default value of 'X'––we're not worrying about whose turn it is yet). The method should set the correct index value of that position within the board equal to the token.
def move (board, index, token = "X")
  board[index] = token
end

#a user's turn in the game
def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  user_response = input_to_index(index)
  if valid_move?(board, user_response) == true
    move(board, user_response)
    display_board(board)
else
  turn(board)
  end
end
