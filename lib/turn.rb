#empty board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Should accept a board and an index from the user and return true if the index is within the correct
#range of 0-8 and is currently unoccupied by an X or O token. inc. position_taken?
def position_taken?(board, index)
  if board[index]  == " " || board[index]  == "" || board[index]  == nil
    false
  else
    true
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    true
  else
    false
  end
end

def input_to_index(user_input)
   user_input.to_i - 1
end

def move(board, index, play="X")
    board[index] = play
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  #if index is valid
    if valid_move?(board, index) == true
      #make the move for input
      move(board, index)
      display_board(board)
    else
      turn(board)
    end
end
