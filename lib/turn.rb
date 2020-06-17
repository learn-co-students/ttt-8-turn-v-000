board= [" "," "," "," "," "," "," "," "," "]

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

def valid_move? (board, user_input)
  if position_taken?(board, user_input)==false && user_input.between?(0, 8)
     true
  else
     false
  end
end

def position_taken? (board, user_input)
   if board[user_input] == "X" || board[user_input] == "O"
     true
   else board[user_input] != "   "
     false
end
end

def move (board, user_input, character = "X")
  board[user_input]= character
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

if valid_move?(board, index)==false
  puts "That is not a valid move."
  turn(board)
else 
    move(board, index, character = "X")
     display_board(board)
  end
end
