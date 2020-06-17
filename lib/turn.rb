def display_board(board) #this method displays the board
  puts row1 = " #{board[0]} " + "|" + " #{board[1]} " + "|" + " #{board[2]} "
  puts row2 = "-----------"
  puts row3 = " #{board[3]} " + "|" + " #{board[4]} " + "|" + " #{board[5]} "
  puts row2 = "-----------"
  puts row5 = " #{board[6]} " + "|" + " #{board[7]} " + "|" + " #{board[8]} "
end

def move(array, position, value="X") 
#this method marks selects a position on the board. It uses the board array, a positon (which
# is translated into an index of the array), and a value to mark on the board. 
  array[position.to_i - 1] = value
end

def valid_move?(board, position)
# check if the player makes a valid selection by seeing if a position is already occuped and if the number is valid
  if position_taken?(board, position) == false && position.to_i.between?(1, 9)
    true
  else
    false
  end
end

def position_taken?(board, position)
# check if a position is already occupied by checking if the desired index already has a value of "X" or "O"
  if board[position.to_i - 1] == "X" || board[position.to_i - 1] == "O"
    true
  else
    false
  end
end

def turn(board)
# combine the #display_board, #move, #valid_move?, and #position_taken? methods to create a full turn
  puts "Please enter 1-9:"
  input = gets.chomp.strip
  until valid_move?(board, input) == true #keep asking the player to make a move until they make a valid selection
    puts "That spot is taken!Please select another one:"
    input = gets.chomp.strip
  end
  move(board, input)
  display_board(board)
end

