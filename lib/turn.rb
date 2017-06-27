def display_board(board)
  row = [" #{board[0]} | #{board[1]} | #{board[2]} ", "-----------", " #{board[3]} | #{board[4]} | #{board[5]} ", "-----------", " #{board[6]} | #{board[7]} | #{board[8]} "]
  puts row
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8) == true
    true
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    puts "invalid"
    turn(board)
  end
end

#def turn(board)
#  puts "Please enter 1-9:"
#  user_input = gets.strip
#  index = input_to_index(user_input)
#  is_valid = valid_move?(board, index)
#  until is_valid == true
#      puts "invalid"
#      puts "Please enter 1-9:"
#      user_input = gets.strip
#      index = input_to_index(user_input)
#      is_valid = valid_move?(board, index)
#  end
#  move(board, index, "X")
#  display_board(board)
#end
