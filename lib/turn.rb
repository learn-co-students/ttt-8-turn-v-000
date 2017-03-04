#this prints the board to screen
def display_board(board)
  puts  " #{board[0]} | #{board[1]} | #{board[2]} "
  puts  "-----------"
  puts  " #{board[3]} | #{board[4]} | #{board[5]} "
  puts  "-----------"
  puts  " #{board[6]} | #{board[7]} | #{board[8]} "

end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  # #if index is vaild or true
    if  valid_move?(board,index) == true
      move(board,index)
      display_board(board)
    else
        return turn(board)
  end
  #   puts "Please enter 1-9:"
  #   end
  #   # make the move for index
  #   returns display_board
  #   #else
      #ask for input again until vaild input use Untill loop
      #use a loop do
  # end
end

#def input_to_index
#end
def input_to_index(user_input)
  user_input = user_input.to_i
  user_input = user_input - 1
end

def valid_move?(board,index)
  if index.between?(0,8) && position_taken?(board,index) == false
    return true
  else
    return false
  end
end

# # re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def position_taken?(board,index)
  if board[index] == "O"
    return true
  elsif board[index] == "X"
    return true
  else board[index] == " " || "" || nil
    return false
  end
end

def move(board, index, value ="X")
 board[index] = value
end
