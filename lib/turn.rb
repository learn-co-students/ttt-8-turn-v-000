def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end 

def  valid_move? (board, index)
true
end

def input_to_index(user_input)
user_input.to_i-1
end


def move(board, position, character="X")
  board[position]= character
end


=begin board = [" ", " ", " "," ", " "," "," ", " ", " "]

puts "Welcome to Tic Tac Toe!"

puts "Please enter 1-9:"

input = gets.strip

index =  input_to_index(input)

move(board, index)

display_board(board) =end

  


  
  