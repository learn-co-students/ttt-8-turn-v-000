# define #display_board
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# define #valid_move?
board = []
index = 0
def valid_move?(board, index)
  if index.between?(0,8) == true && position_taken?(board,index) == false
    return true
  else
    return false
  end
end
# define #position_taken?
def position_taken?(board, index)
  board[index] != " "
  board[index] != ""
  board[index] == "nil"
  board[index] == "X" || board[index] == "O"
end
# convert user's input to a location on the board
def input_to_index(input)
  input.to_i - 1
end
# define #move
def move(board, index, user_marker = 'X')
  board[index.to_i] = user_marker
end
# define #turn
def turn(board)
# ask for input
  puts "Please enter 1-9:"
# get input
  input = gets.strip
# convert input to index
  index = input_to_index(input)
# if index is valid
  if valid_move?(board,index) == true
  # make the move for index
    move(board, index, user_marker = 'X')
  # show the board
    display_board(board)
# else
  else
    # ask for input again until you get a valid input
    turn(board)
  end
end
