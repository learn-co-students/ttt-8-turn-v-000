def turn(board)
  puts "Please enter 1-9:"
   input = gets.strip
   index = input_to_index(input)
   if valid_move?(board, index)
     move(board, index)
     display_board(board)
   else
     turn(board)
   end
end

#prior methods defined

#display_board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# valid_move method
def valid_move?(board, index)
  if position_taken?(board, index)
    return false
elsif index.between?(0,8)
  return true
end
end

#position_taken method
def position_taken?(board, index)
 if (board[index] == " ") || (board[index] == "") || (board[index] == nil)
   return false
 elsif (board[index] == "X") || (board[index] == "O")
   return true
 end
end

#input_to_index method
def input_to_index(user_input)
 user_input.to_i - 1
end

#move method
def move(board, index, current_player = "X")
 board[index] = current_player
end
