
board = [" 0 ", " 1 ", " 2 ", " 3 ", " 4 ", " 5 ", " 6 ", " 7 ", " 8 "]

def display_board(board) #Should accept a board as an argument and print out the current state of the board for the user.
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index) #Should accept a board and an index from the user and return true if the index is within the correct range of 0-8 and is currently unoccupied by an X or O token.
  if position_taken?(board, index)
   return false
 elsif index.between?(0, 8)
   return true
 elsif board[index] == "X" || board[index] == "O"
   return false
 else
   return false
end
end

def position_taken?(board, index) #my helper method for pointing in valid_move method above
 if board[index] == " " || board[index] == "" || board[index] == nil
   return false
 else
   return true
end
end

def input_to_index(user_input)
  user_input.to_i-1
end

def move(board, index, character = "X") # This method should accept a board, an index from the user (which was converted from their raw input with input_to_index), and a token to mark that position with (you can give that argument a default value of 'X'––we're not worrying about whose turn it is yet). The method should set the correct index value of that position within the board equal to the token.
 board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, character = "X")
    display_board(board)
  else input = gets.strip
end
end



#gets just allows you to provide/pull an input
#these new variables are just associated with the turn method, they are only valid within the "turn method scope"
#naming variables properly is very important so that you can properly reeference your code
#think about coding as communicating messages
