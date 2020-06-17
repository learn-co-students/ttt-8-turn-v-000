# Original empty board array 
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

#THIS IS MY DISPLAY BOARD 

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#THIS IS MY INPUT TO INDEX METHOD 

def input_to_index(input)
  input.to_i - 1
end

#THIS IS POSITION TAKEN METHOD 

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    true  
    
  elsif board[index] != " " || board[index] != ""
    false  
  end 
end

#THIS IS MY VALID MOVE METHOD 

def valid_move?(board, index)
  index.between?(0, 8) && !position_taken?(board, index)
end

# ALTERNATE WAY TO WRITE THE VALID MOVE METHOD

#if index.between?(0, 8) && !position_taken?(board, index)
#  true
#else
#  false
#end

# THIS IS MY MOVE METHOD

def move(board, index, character = "X")
  board[index] = character  
end

# THIS IS MY TURN METHOD

def turn(board)
  puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    character = "X"
    
    if valid_move?(board, index)
      move(board, index, character)
      display_board(board)
    else 
      puts "Try again..."
      turn(board)
    end 
end



