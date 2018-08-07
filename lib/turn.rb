def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
 
 def turn(board)
   puts "Please enter 1-9:"
   user_input = gets.strip
   index = input_to_index(user_input)
   position_taken?(board, index)
   valid_move = valid_move?(board, index)
   if valid_move == false 
     turn(board)
   end
   move(board, index, character = "X")
   display_board(board)
end

def valid_move?(board,index)
  if !position_taken?(board,index) && index.between?(0,8)  
    true 
  else 
    false
  end
end 

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil 
    false 
  else 
    true 
  end 
end

def input_to_index(user_input)
  user_number = user_input.to_i
  index = user_number - 1
end

def move(board, index, character = "X")
  board[index] = character
end 