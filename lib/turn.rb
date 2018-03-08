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

def turn(board)
  index = 0
  puts "Please enter 1-9:"
  input = gets.chomp
  input_to_index(input)
  unless valid_move?(board, index)
    index = 0
    puts "Please enter 1-9:"
    input = gets.chomp
  end
  move(board, index)
  display_board(board)
end
