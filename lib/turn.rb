board = ["", "", "", "", "", "", "", "", ""]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i-1
  index = user_input.to_i-1
end

#move
def move(board, user_input,character="X")
  board[user_input]=character
end

def valid_move?(board,index)
  if index.between?(0,8) && position_taken?(board, index) == false
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if (board[index]==" "||board[index]==""||board[index]==nil)
    false
  else (board[index]=="X"||board[index]=="O")
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board,index)
    move(board,index,character='X')
  else
    puts "Please enter 1-9:"
    user_input = gets.chomp
  end
  display_board(board)
end
