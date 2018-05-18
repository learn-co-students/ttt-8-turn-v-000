require 'pry'

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


# code your #valid_move? method here
def valid_move?(board, index)

  #position is present on game board
  !position_taken?(board, index) && index.between?(0,8)

  #ternary operator not needed because above line is either true or false
      #this is what I initially thought
      #comment: position already filled with a token
      #code: else position_taken == true
      
      #comment: valid_move is false
      #code: return !valid_move?
end


def input_to_index(user_input)
  user_input = user_input.to_i
  user_input + -1
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else board[index] == "X" || board[index] == "O"
    return true
  end
end


def move(board, index, token = "X")
  board[index] = token
end


def turn(board)
  puts "Please enter 1-9:"

  #get input
  user_input = gets.chomp

  #convert user_input to index
  position = input_to_index(user_input)

    #make the move for input
    if valid_move?(board, position)
      move(board, position)
      display_board(board)

  else
    #ask for input again until you get a valid input
      turn(board)
        puts "Your move, #{user_input}, is invalid.  Try again."
    
    end
end
