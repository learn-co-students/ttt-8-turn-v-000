


#helper methods in lib.turn.rb
#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#valid_move
def position_taken?(board, position)
   if board[position] == " " || board[position] =="" || board[position] == nil
    false
   elsif board[position] == "X" || board[position] == "O"
    true
  end
end
def valid_move?(board, position)
  position.to_i.between?(1,9) && !position_taken?(board, position.to_i-1)
end

#move
def move(board, position, character = "X")
  board[position.to_i - 1] = character
end

#turn

def turn(board)              #get input
  puts "Please enter 1-9:"  #asks user for input
  input = gets               #gets input
  if valid_move?(board,input) #validate the move
    move(board, input)
    else
    puts "Please enter 1-9:"  #asks user for input
    input = gets
  end
  display_board(board)
end
