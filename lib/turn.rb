#DISPLAY_BOARD
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  user_input.to_i- 1
end

def move(board, index, value= "X" )
  board[index]=value
end

#Move
def MOVE
  puts "Welcome to Tic Tac Toe!"
  board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  puts "Where would you like to go?"
  input=gets.strip
  index = input_to_index(input)
  move(board, index, "X")
  puts display_board(board)
end

#valid_move?
def valid_move?(board, index)
  if position_taken?(board, index)
    return false
  elsif index.between?(0,8)
    return true
  end
end
#position_taken?
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  elsif board[index] != " "
    return false
  elsif board[index] == ""
    return false
  else board[index] == nil
    return false
  end
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
      move(board, index)
      display_board(board)
    else
      puts "That is an invalid entry!"
      turn(board)
    end
end
