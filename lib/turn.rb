def display_board(board)
  border = "-----------"
  row1 = " #{board[0]} " + "| #{board[1]} |" + " #{board[2]} "
  row2 = " #{board[3]} " + "| #{board[4]} |" + " #{board[5]} "
  row3 = " #{board[6]} " + "| #{board[7]} |" + " #{board[8]} "
  
  puts row1
  puts border
  puts row2
  puts border
  puts row3
  
end


def input_to_index(user_input)
  converted_input = user_input.to_i
  converted_input - 1
end

def move(board, index, value)
 
 
 
 board[index] = value
end

def valid_move?(board, index)
  index.between?(0,9) && board[index] == " "
end     
  

def position_taken?(board, index)
   !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
 
  if valid_move?(board, index)
    move(board, index, value = "X")
  else
    turn(board)
  end
  display_board(board)
end

