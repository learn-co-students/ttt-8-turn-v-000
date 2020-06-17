# code your #valid_move? method here
#board = ["X", " ", " ", " ", " ", " ", " ", " ", "O"]
#puts "Enter a position on the board 1-9:"

 #user_input = gets
#number_entered = user_input.to_i - 1
#board = ["X", " "," ", " ", " ", " ", " ", " ", " "]

def display_board(board)

puts " #{board[0]} | #{board[1]} | #{board[2]} \n"
puts "-----------\n"
puts " #{board[3]} | #{board[4]} | #{board[5]} \n"
puts "-----------\n"
puts " #{board[6]} | #{board[7]} | #{board[8]} \n"
      
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)
  if valid_move?(board, index)
     move(board,index,"X")
     display_board(board)
  else 
    while !valid_move?(board,index)
      puts "Please enter 1-9"
      input = gets
      index = input_to_index(input)
    end
  end
end

def input_to_index(input)
  index = input.to_i-1
end

def move (board, index, token = "X")
  board[index] = token
  board
end

def valid_move? (board, number_entered)
  if number_entered.between?(0, 8) && !(position_taken?(board, number_entered))
    true
    
  else
    
    false
  end
end
  


def position_taken?(board, index)
  
taken = nil 

  if (board[index] == "" || board[index] == " " || board[index] == nil)
    taken =false 
    
  else (board[index] = "X" || board[index] = "O" )
    taken = true 
  end

    taken
    
end



#valid_move?(board, 0)

