#To ask for the character the person is playing, uncomment the two lines referencing 'character' below, and also remove the default char value from #move.
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  #puts "What is your character, X or O?"
  #char = gets.strip
      if valid_move?(board, index) == true
      move(board, index, char = "X")
      display_board(board)
    else turn(board)
  end
end


#defining the board array - I commented this out, because it only needs to be in the bin file
#board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

# display_board accepts a board and prints out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# input_to_index takes the user input and subtracts 1, making it compatible with Ruby arrays
def input_to_index(input)
  (input.to_i) - 1
end

# #move takes an index from the user (converted from input), and puts the default token "X" in that position in the board array
def move(board, index, char = "X")
  board[index] = char
end

# the position_taken? method determines whether a position is taken by an "X" or an "O".
def position_taken?(board, index)
  if board[index] == "O" || board[index] == "X"
    true
  else
    false
  end
end

# the valid_move? method determines whether an index is between 0 and 8, and also whether a position is taken by an "X" or "O". If the first is true and the second is false, the method will return "true".
def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board,index)
    true
  end
end
