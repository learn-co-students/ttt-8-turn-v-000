def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    true
  else
    false
  end
end

def position_taken?(board, position)
  board[position] == "X" || board[position] == "O"
end

# What does it mean to encapsulate the logic? Hint from the text:  Encapsulate the logic to check if a position is occupied in its own method, perhaps #position_taken

def input_to_index(move)
  index = move.to_i - 1
end

def move(board, index, value = "X")
  #in here, when no 3rd argument is given, value is "O"
  #board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  #board[index] == " "  but we want to make it whatever value is so:

  board[index] = value
  
  #now, board will have a token somewhere and might look like this if value is "X" and index is 0:
  #board = ["X", " ", " ", " ", " ", " ", " ", " ", " "]
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
     move(board, index)
     display_board(board)
     
  else
    turn(board)
end
end

