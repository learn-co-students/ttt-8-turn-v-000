require "pry"


# #DISPLAY_BOARD
# Should accept a board as an argument and print out the current state of the board for the user.

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


#VALID_MOVE?
# Should accept a board and an index from the user and return true if the index is within the correct range of 0-8 and is
# currently unoccupied by an X or O token.
def position_taken?(board, position)
    if board[position] == " " || board[position] == "" || board[position] == nil
      return false
    else
      return true
    end
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def valid_move?(board, position)
  #binding.pry
    if position_taken?(board, position) == false && position.between?(0, 8)
      return true
    else
      return false
    end
end


#MOVE
# This method should accept a board, an index from the user (which was converted from their raw input with input_to_index),
# and a token to mark that position with (you can give that argument a default value of 'X'––we're not worrying about whose turn it is yet). The method should set the correct index value of that position within the board equal to the token.

def move(board, index, token = "X")
    board[index]= token
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets
  input_to_index(user_input)
end
