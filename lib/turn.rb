board = [" "," "," "," "," "," "," "," "," "]

def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    true
  else
    false
  end
end



def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else board[index] == "X" || board[index] = "0"
    true
  end
end

def input_to_index(user_input)
  user_input = user_input.to_i
  return user_input - 1
end

def move(board,position,character="X")
  board[position] = character
  return board
end

def turn(board)
puts "Please enter 1-9:"
  input = gets.strip
  #get input
  index = input_to_index(input)
  #convert input to index
  if valid_move?(board, index)
  #if index is valid
    move(board, index)
    #make the move for input
    display_board(board)
  else
    turn(board)
    #ask for input again until you get a valid input
  end
end
