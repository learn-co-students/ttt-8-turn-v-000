#Display Board method
def display_board(pattern)
  puts (" #{pattern[0]} | #{pattern[1]} | #{pattern[2]} ")
  puts ("-----------")
  puts (" #{pattern[3]} | #{pattern[4]} | #{pattern[5]} ")
  puts ("-----------")
  puts (" #{pattern[6]} | #{pattern[7]} | #{pattern[8]} ")

end

def input_to_index(input)
  input = input.to_i
  input - 1

end

def move(board, index, value)
  board[index] = value
end




 # turn method
 def turn(board)
   puts "Please enter 1-9:"
   index = gets.strip
   index = input_to_index(index)
   if valid_move?(board, index) == true
       move(board, index, value="X")
       display_board(board)
     else
       turn(board)
     end
 end
 

#position_taken?

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    false
  else board[position] == "X" || board[position] == "O"
    true
  end
end

 #evaluate if it is a valid move
 def valid_move?(board, position)
   if position_taken?(board, position) == false && position.to_i.between?(0,8)
     true
   else
     false
   end
 end

 
 