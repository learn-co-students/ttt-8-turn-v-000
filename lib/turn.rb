def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  input = user_input .to_i - 1
  return input
end

def move(array, index, character = "X")
  array[index] = character
end

def valid_move?(board, index_number)
  if index_number.between?(0, 8) && !(position_taken?(board, index_number))
    return TRUE
  end
end

def position_taken?(board, index_number)
  !(board[index_number] == " " || board[index_number] == "" || board[index_number] == nil) 
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index_number = input_to_index(user_input)
  if valid_move?(board, index_number)
    move(board, index_number)
    display_board(board)
  else 
    user_input = gets.strip
  end
end

