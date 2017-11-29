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

#my original solution
# def turn(board)
#  puts "Please enter 1-9:"
#  index = input_to_index(gets.strip)
#    while !valid_move?(board, index)
#    puts "Please enter a 1-9 for an open board position"
#    index = input_to_index(gets.strip)
#  end
#  move(board, index)
#  display_board(board)
#end

#the above is a bit redundant because while (the condition is met AKA the move
#isn't valid) we could have called #turn again to start over (ask for position,
# take input)



#notes on turn:
#it is necessary to incorporate the index = input_to_index twice. The first time, and then, if the move is invalid, again, for the second submittal.
#We have to grab the input again in order to check it again!! it's a critical step in the while construct. almost critical like the incrementer is in a loop construct.

#when we type input_to_index(gets.strip) we are 'abstracting' the user's "input" and using it as an argument for the input_to_index method. So important!!!
#turn could also be written with
# input = gets.strip
#index = input_to_index(input)
