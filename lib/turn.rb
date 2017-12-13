

#display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
   new_user_input = user_input.to_i
   new_user_input -= 1
   return new_user_input
 end
#turn method
def move(board, index, player = "X")
   board[index] = player
  return board
end

def position_taken?(board, index)
   if board[index] == " " || board[index] == "" || board[index] == nil
     false
    elsif board[index] == "X" || board[index] ==  "O"
     true
   end
end
#valid_move
def valid_move?(board, index)
      index.between?(0,8) && !position_taken?(board,index)
    end

def turn(board)
  puts "Please enter 1-9:"
  new_user_input = gets.strip
  index = input_to_index(new_user_input)
  if !valid_move?(board, index)
    turn(board)

  end
  move(board, index)
  display_board(board)
end
