
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
valid_move?(board, input) 
 move(board, input) 
  puts "Please enter 1-9:"

##move(board, position, token)
#else
 # turn(board)
 # loop do
  #puts "Please enter 1-9" 
   #until valid_move?(board, position) == true
    # move(board, position, token)
#end

display_board(board)
   end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def valid_move?(board, position)
  position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end

def position_taken?(board, location)
  board[location] != " "
end

def move(board, position, token = "X")
  #{}"#{board[0]} = O" && "#{board[9]} = X"
  
end