#Define the Tic Tac Toe board
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
return " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

#Check for whether the input is a valid move
def valid_move?(board, index)
  if position_taken?(board, index) then return false
  elsif index.between?(0, 8) then return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O" then return true
elsif board[index] == " " || board[index] == "" || board[index] == nil then return false
end
end

#Take players 1-9 input and turn it into a board input 0-8
def input_to_index(input)
  return index = input.to_i - 1
end

#not sure if this is necessary
def update_array_at_with(array, index)
  board[index] = "X"
end

#unnecessary?
#def move(board, index)
#  update_array_at_with(array, index)
#  display_board(board)
#end

#create a move for player
def move(board, index, character = "X")
  board[index] = character
  return board
end

#ask for input
#get input
#convert input to index
#if index is valid
#  make the move for index
#  show the board
#else
#  ask for input again until you get a valid input
#end
#```

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  if valid_move?(board, index) == true
  move(board, index, character = "X")
  puts display_board(board)
  else
  turn(board)
  end
end
