def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def valid_move?(board, index)
  if board[index] == " " || board[index] ==""
    position_taken = false
  elsif board[index] == nil
    position_taken = false
  elsif board[index] == "X" || board[index] == "0"
    position_taken = true
  else
    position_taken = false
  end
  return index.between?(0,8) && !position_taken
end

def move(board, index, token="X")
  board[index] = token
  return board
end

def input_to_index(user_input)
  user_input = user_input.to_i
  index = user_input - 1
  return index
end


def turn(board)
  puts "Please enter 1-9:"
  #get the user input
  user_input = gets.strip
  #input to index 
  index = input_to_index(user_input)
  #check for validation
  if valid_move?(board,index)
    move(board,index)
  else 
    turn(board)
  end
  display_board(board)
end


