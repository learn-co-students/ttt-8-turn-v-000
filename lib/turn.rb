def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
index = user_input.to_i - 1
end

def move(array,position,character = "X")
 array[position] = character
end

def valid_move?(board,index)
  position_taken?(board,index)
  if (index > 8 || index < 0)
    false
  elsif board[index] == ("X" || "O")
    false
  else
    true
  end
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == "X"
    true
  elsif board[index] == "O"
    true
  elsif board[index] == nil
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  #index needs to be defined by input_to_index
  position_taken?(board,index)
  if valid_move?(board,index) == false
    turn(board)
  else
    board[index] = "X"
  end
  display_board(board)
end
