
def display_board(board)
  board = " #{board[0]} | #{board[1]} | #{board[2]} \n------------\n #{board[3]} | #{board[4]} | #{board[5]} \n------------\n #{board[6]} | #{board[7]} | #{board[8]} "
  puts board
end

def input_to_index(user_input)
  index = user_input.to_i - 1
  index
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == "  " || board[index] == "   "
    false
  elsif board[index] == "X" || board[index] == "O"
    true 
  else 
    nil 
  end
end


def valid_move?(board, index)
  if position_taken?(board, index) == true
    false
  elsif index.to_i >= 0 && index.to_i <= 8 && position_taken?(board, index) == false
    true
  else 
    nil 
  end
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  valid = valid_move?(board, index)
  if valid == true
    move(board, index, "X")
  else
    puts "Invalid"
    turn(board)
  end
end

def move(board, index, value)
  board[index] = value
  display_board(board)
end