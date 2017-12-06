board = [ " ", " ", " ", " ", " ", " ", " ", " ", " " ];


#Displays the board after accepting an array
def display_board(board)
  row1 = " #{board[0]} | #{board[1]} | #{board[2]} ";
  row2 = " #{board[3]} | #{board[4]} | #{board[5]} ";
  row3 = " #{board[6]} | #{board[7]} | #{board[8]} ";
  divider = "-----------";
  puts row1
  puts divider
  puts row2
  puts divider
  puts row3

end

# converts the user input string value into an integer (e.g. "8" --> 8)
# subtracts the user_input by 1 to reflect the index values of the
# desired position
def input_to_index(user_input)
  index = user_input.to_i - 1;
  return (index)
end

# updates the object in a specific index of the array based on user input
# and the token chosen
def move(board, index, token = 'X')
  board[index] = token;
  return (board[index])
end

# tests to see if the position has been taken
def position_taken?(board, index)

  if ((board[index] == " ") || (board[index] == "") || (board[index] == nil))
    return false
  else
    return true
  end

end

# tests to see if the move is valid (the position is free for use and the
# user input selects an index between 0 and 8)
def valid_move?(board, index)

  position = position_taken?(board, index)

  if ((0 <= index && index <= 8) && position == false)
    return true
  else
    return false
  end

end

# carries out one turn
# gets position input from the user
# checks if the move is valid
# updates the board if valid
# asks for input again if invalid
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

  if (valid_move?(board, index) == true)
    move(board, index)
    display_board(board)
  else
    puts "Invalid move"
    turn(board);
  end

end
