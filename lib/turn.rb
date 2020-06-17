board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def position_taken?(array, index)
  if array[index] == "" || array[index] == " " || array[index] == nil
    false
  else
    true
  end
end

def valid_move?(array, index)
  if position_taken?(array, index) == false && index.between?(0, 8)
    true
  else
    false
  end
end

def move(array, index, char = 'X')
  array[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true && position_taken?(board, index) == false
    move(board, index, char = 'X')
    display_board(board)
  else valid_move?(board, index) == false || position_taken?(board, index) == true
    puts "Please enter a valid number, or the number for an unoccupied space"
    turn(board)
  end
end
