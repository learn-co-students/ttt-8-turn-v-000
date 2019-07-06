#TURN method code##############################################################
def turn(board)
  puts "Please enter 1-9:"
  user_entry = gets.strip.to_i - 1
  
  if
    valid_move?(board,user_entry) == true 
    move(board,user_entry)
    display_board(board)
  else
      until valid_move?(board,user_entry) == true do
       puts "That is not a valid move. Please enter 1-9:"
        user_entry = gets.strip.to_i - 1
      end
      move(board,user_entry)
      display_board(board)
  end
end

#MOVE method code##############################################################

def move(board, index, char="X")
  input_to_index(index)
  board[index]  = char
  return board
end

def input_to_index(entry)
  index = entry.to_i - 1
  return index
end

#DISPLAY_BOARD method code############################################################## 

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#VALID_MOVE? method code############################################################## 

def valid_move?(board, index)
   
  if 
     position_taken?(board, index) == false && index.between?(0,8)
     return true
   else
     return false
   end
 end

#POSITION_TAKEN? method code############################################################## 

def position_taken?(board, index)
  
  if
    board[index] == " " || board[index] == "" ||  board[index] == nil
    return false  
  end

if 
  board[index] == "X" || board[index] == "O"
  return true 
end
  
end
