
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp 
  index = input_to_index(user_input)
  if valid_move?(board,index) 
  move(board, index)
  else
  puts "Please try a different entry:"
  turn(board)
  end
  display_board(board)
end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
 end
 
# move method 
def move(board, index, char="X")
  board[index] = char
end

# valid move? 
def valid_move?(board,index)
  if index.between?(0,8) && position_taken?(board,index) == false
   return true
  else
   return false
  end
end

# position_taken?
def position_taken?(board,index)
  if board[index] == " "  
    return false
  end
  if board[index] == ""
    return false
  end
  if board[index] == nil
  return false
  end
  if board[index] == "X" || board[index] == "O"
  return true
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
      puts " #{board[6]} | #{board[7]} | #{board[8]} "
   end 

  