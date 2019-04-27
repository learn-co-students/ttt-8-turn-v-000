#board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

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

def valid_move?(board, input)
  if position_taken?(board, input) == false && number_okay?(input) == true
    true
  else
    false
  end
end

def number_okay?(index)
  if index < 0 || index > 8
    false 
  else
    true
  end
end

def position_taken?(board, index)
  if board[index] == " "
    false
    elsif board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
puts "Please enter 1-9:"
input = gets.strip
index = input_to_index(input)
 if valid_move?(board, index) == false
   puts "That input is invalid"
   turn(board)
 else
  move(board, index, character = "X")
  display_board(board)
end
end