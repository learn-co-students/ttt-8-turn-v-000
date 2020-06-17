def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

board = [" "," "," "," "," "," "," "," "," "]
display_board(board)

def move(board, input, token = "X")
board[input] = token
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if index.between?(0,8)
  if  position_taken?(board, index) == true
     false
  else
     true
  end
end
end

def position_taken?(board, index)
  board[index] != " "
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  turn_1 = input_to_index(user_input)
  if valid_move?(board, turn_1) == true
    move(board, turn_1)
    display_board(board)
  else
    turn(board)
  end
  end
