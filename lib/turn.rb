board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  print " #{board[0]} "
  print "|"
  print " #{board[1]} "
  print "|"
  puts " #{board[2]} "
  puts "-----------"
  print " #{board[3]} "
  print "|"
  print " #{board[4]} "
  print "|"
  puts " #{board[5]} "
  puts "-----------"
  print " #{board[6]} "
  print "|"
  print " #{board[7]} "
  print "|"
  puts " #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(array, index, value = "X")
  array[index] = value
end

def valid_move?(board, index)
  index.between?(0, 8) && !(position_taken?(board, index))

end

def position_taken?(board, index)
  !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
     move(board, index, value = "X")
  else
    turn(board)
  end
display_board(board)
end
