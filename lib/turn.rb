
 board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  integer =  user_input.to_i
  integer - 1
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return false
  else
    return true
  end
end

def valid_move?(board, index)
  if board[index] == " " && index.between?(0, 8)
    return true
  else
    return false
  end
end

def move(array, index, character = "X")
  array[index] = character
end

def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
  if !valid_move?(board, index)
    puts "Invalid input, please enter a new number"
    user_input = gets.strip
    index = input_to_index(user_input)
  else
    move(board, index)
 end
    display_board(board)
end
