# Define display_board that accepts a board and prints
# out the current state.
board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
#the above board definition is not required

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    taken = false
  else
    taken = true
    end
end

def valid_move?(board,index)
  if (position_taken?(board, index)==false && index.between?(0,8))
    then true
  end
end


def move(board, index, character = "X")
  board[index] = character
end

def turn(input, board, index)
  puts "Please enter 1-9:"
  input_to_index(input)
  while !valid_move(board, index)
    puts "Please enter a 1-9 for an open board position"
  end
  move(board, index)
end
