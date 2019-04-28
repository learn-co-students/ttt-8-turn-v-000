require 'pry'

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

index = 0

def input_to_index(input = 0)
  index = input.to_i - 1
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  else board[index] == "X" || "O"
    return true
  end
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0,8)
    return true
  end
end

def move(board, index, char = 'X')
  board[index] = char
end

# this is also valid and passes all the tests:
# def turn(board)
#   puts "Please enter 1-9:"
#   index = input_to_index(gets.chomp)
#   unless valid_move?(board, index)
#     # you could also do -- unless !valid_move?(board, index)
#     puts "Please enter 1-9:"
#     input = gets.chomp
#   else
#     move(board, index)
#     puts "Please enter 1-9:"
#     display_board(board)
#   end
# end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.chomp)
  if valid_move?(board, index) == true
    move(board, index)
    puts "Please enter 1-9:"
    display_board(board)
  else
    puts "Please enter 1-9:"
    input = gets.chomp
  end
end
