#DISPLAY_BOARD
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#CHANGE INPUT TO INDEX INTEGER
def input_to_index(user_input)
  converted_input = user_input.to_i - 1
end

#MOVE
def move(board, index, character = "X")
  board[index] = character
end

#VALID_MOVE?
def valid_move? (board, index)
  if(index.between?(0,8) && !position_taken?(board,index))
    return true
  else
    return false
  end
end

def position_taken? (board, index)
  !(board[index] == " " || board[index] == "" || board[index] == nil)
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index)
    move(board, index, character = "X")
    display_board(board)
  else
    turn(board)
  end
end
