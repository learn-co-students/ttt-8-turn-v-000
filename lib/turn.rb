# display_board - method that prints a Tic Tac Toe board.
# @board - String array containing "X", "O", " "
# @returns a string board.
# X | O | X
# ---------
# O | X | O
# ---------
# X | O | X
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# input_to_index - method that give a string value @index, returns
# a suitable index for an array.
# @index - integer 1-9
# @returns = index - 1.
def input_to_index (index)
 index = index.to_i
 index = index - 1
end

# valid_move - accepts a board and an idex from the user and
# returns true if index is within 0-8 range and the position
# is not occupied by X or O.
# @board - A string array containing " ", "X", "O", "", nil.
# @index - integer in the range value 0-8

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    return true
  else
    false
  end
end

# position_taken - accepts a board and index and returns true
# if the position in board[index] is not "X" or "O"
# @board - A string array containing " ", "X", "O", "", nil.
# @index - integer in the 0-8
# @returns - true if position is "X" or "O"
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end

# move - method that updates @board value of @index field
# with the value passed in as a parameter @value.
# @board - string array of " ", "X", "O"
# @index - integer 0-8.
# @value - contains "X" or "O"
def move (board, index, value = "X")
  board[index.to_i] = value
end

# turn
# @board - string array.
def turn (board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
     move(board, index)
     display_board(board)
   else
     turn(board)
   end
   puts "Please enter 1-9:"
 end
