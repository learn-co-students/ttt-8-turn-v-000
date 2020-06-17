#else
  #ask for input again until you get a valid input
#end

#while valid_move? == true 
 def turn(board)
  puts "Please enter 1-9:" #asks for input
 input = gets.strip
 index = input_to_index(input)
 if valid_move?(board, index) == true
   move(board, index)
   display_board(board)
 else 
  gets.strip
 end
 end



def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
 user_input.to_i-1
end 

def move(board, input_to_index, players_character = 'X')
 board[input_to_index] = players_character
end

# code your #valid_move? method here
def valid_move?(board, index)
if index.between?(0,8) && position_taken?(board, index) == true
return true
else 
return false
end
end

#re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
if board[index] == " " || board[index] == nil || board[index] == ""
return true
elsif board[index] != " "
return false
end
end

