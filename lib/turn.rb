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
  
  if index && !position_taken?(board,index)
    puts "this move is valid"
     return 
    true
  else
     return 
    false
  end 
end 
    

  
    

