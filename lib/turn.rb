# Helper methods

def turn(board)
  puts "Please enter 1-9:"

user_input = gets.strip
converted_input = input_to_index (user_input)

if valid_move?(board, converted_input) 
  move(board, converted_input)
  display_board(board)
    else
      turn(board)
  end
end

def display_board(board)
	    puts " #{board[0]} | #{board[1]} | #{board[2]} "
	    puts "-----------"
	    puts " #{board[3]} | #{board[4]} | #{board[5]} "
	    puts "-----------"
	    puts " #{board[6]} | #{board[7]} | #{board[8]} "
	  end
	  
def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
    elsif  board[index] ==  " " || board[index] == "" || board[index] == nil
       return false
     else  
       return "oops"
  end
end

def valid_move? (board, index)
  if index.between?(0,8) && position_taken?(board, index) == false
    return true
    else  
      return false
  end
end

def input_to_index (user_input)
  converted_input = user_input.to_i - 1 
end 


def move (board, index, token = "X")
  board[index] = token
end


