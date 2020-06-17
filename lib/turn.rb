board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  num = user_input.to_i
  return num - 1
end

def valid_move?(board, index)
  amin = board[index]
  if index >= 9 || index < 0
    false
  elsif index < 9
    !(position_taken?(board, index))
  end
end

def position_taken?(board, index)
  amin = board[index]
  if amin == " "
    false
  elsif amin == ""
    false
  elsif amin == "X" || amin == "O"
    true
  else amin == nil
    false
  end
end

def move(array, index, char="X")
  array[index]=char
end

def turn(board, char="X")
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, char)
    display_board(board)
  else
    turn(board, char)
  end
end
