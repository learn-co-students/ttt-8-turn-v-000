def display_board(board)
  
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  
end 

def valid_move?(board, index)
  !position_taken?(board, index) && index.to_i.between?(0, 8)
end

def position_taken?(board, index)
       board[index] != " " 
   end
   
def input_to_index(input)
    input.to_i  - 1
  end
  
 def move(board, index, player = "X")
 board[index] = player
 end 
 
 def turn(board)
   puts "Please enter 1-9:" 
   i = gets.chomp.to_i
   
   board = ([" ", " ", " ", " ", " ", " ", " ", " ", "X"])
   
    puts ("   |   |   ")
    puts ("-----------")
    puts ("   | X |   ")
    puts ("-----------")
    puts ("   |   |   ")
   
 
 end
  
 # puts input_to_index("X") 
 

  
         
       
     
  
       
       
       
  
 

 

 
 
 
 



 
 
 
 
 
 
 
 



