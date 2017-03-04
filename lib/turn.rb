# ask for input
# get input
# convert input to index
# if index is valid
#   make the move for index
#   show the board
# else
#   ask for input again until you get a valid input
# end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
if !position_taken?(board, index) && index.between?(0,8)
  true
else
  false
end
end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
false
else
  true
end
end

def input_to_index(input) #input is our argument and also a variable
  # convert input to integer and subtract 1.
  #user's input ("1"-"9") and convert it to the index of the board array (0-8)
  input.to_i - 1
  # users count from 1, Ruby from 0
end

# For turn method
# get input
# convert input to index
# if index is valid
#   make the move for input
# else
#   ask for input again until you get a valid input
# end

def move(board, index, value = 'X')
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  #valid = valid_move?(board, input)
  if valid_move?(board,index)
    move(board, index)
    display_board(board)
  else
    puts "Please enter 1-9:"
    input = gets.strip
  end
end
