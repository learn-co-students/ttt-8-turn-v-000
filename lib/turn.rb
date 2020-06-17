# Define display_board that accepts a board and prints
# out the current state.
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, character="X")
  board[index] = character
end

def valid_move?(board, index)
   index.between?(0, 8) && !position_taken?(board, index)
end

def position_taken?(board, index)
  if board[index] == " " && board[index] == ""
  else board[index] == "X" || board[index] == "O"
 end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index) == false
    turn(board)
  else
    move(board, index, character="X")
    board = display_board(board)
  end
end
