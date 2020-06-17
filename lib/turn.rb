board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end
display_board(board)

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    return true 
  else
    return false 
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil 
    return false 
  else 
    return true 
  end
end

def input_to_index(user_input)
  user_input.to_i-1
end

def move(board, input_to_index, token="X")
  board[input_to_index]=token
  return board 
end

def turn(board)
  puts "Please enter 1-9:"
  user_input=gets.chomp
  user_input=input_to_index(user_input)
  if valid_move?(board, user_input)
    move(board, user_input)
    puts display_board(board)
  else 
    puts "This is an invalid entry."
    turn(board)
  end
end
  