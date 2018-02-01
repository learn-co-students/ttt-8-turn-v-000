def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
   
   puts " X | X | X " 
   puts "-----------"
   puts " X | O | O "
   puts "-----------"
   puts " X | O | X "
   puts "-----------"
   puts " O | X | X "
   puts "-----------"
   puts " O | X | O "
   end 
   
def input_to_index(move)
   index = move.to_i - 1
   index
  end
   
def valid_move?(board,index)
  index.to_i.between?(0,8) && !position_taken?(board, index)
end

def position_taken?(board,index)
  return false if [" ", "", nil].include?(board[index])
  return true if ["X", "O"].include?(board[index])
  raise "#{board[index]} is not a valid move"
end
  
 def move(board, index, token = "X") 
   board[index] = token
   end 
    
  def turn(board)
    puts "Please enter 1-9:"
  user_input = gets.chomp 
  user_input = input_to_index(user_input)
 if valid_move?(board,index)
    move(board, index, token = "X")
 else 
    turn(board)
  end 
    display_board(board)
 end 
 
 
