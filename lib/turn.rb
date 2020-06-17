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
  print " #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  index = index.to_i
  if index.between?(0, 8) && position_taken?(board, index) == false
    true
  elsif position_taken?(board, index) == true
    false
  end

end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def move(board, index, player = "X")
  board[index] = player
end
