# define the array for the board
puts board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']

# display the grid for the board with placeholders for each move
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# convert user input into a integer, minus 1 because the array starts with zero

def input_to_index(input)
  input.to_i - 1
end

# determine if the position requested is taken and if it is a valid move 
index = 0

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    TRUE
  else
    FALSE
  end
end

# call a method from within itself so that with each turn, we can confirm that the input is valid


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
else
    turn(board)
  end
end

def position_taken?(board, index)
  if board[index] == " " or board[index] == ""|| board[index] == NIL
    FALSE
  else
    TRUE
  end
end

# move method using array, index & X or O 

def move(board, input, user_marker = "X")
  board[input] = user_marker
  end


