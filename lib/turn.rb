#Asking the user for their move by position 1-9.
#Receiving the user input.
#Convert position to an index.
#If the move is valid, make the move and display the board to the user.
#If the move is invalid, ask for a new move until a valid move is received.

  def turn(board)
    puts "Please enter 1-9:"
    input_user = gets.strip
    index = input_to_index(input_user)
     if valid_move?(board, index)
       move(board, index, player_1 = "X")
     else
       turn(board)

end
display_board(board)
end




def move(board, index, player_1 = "X")
  board[index] = player_1
  return board
end
def valid_move?(board, index)
   if index.between?(0,8) && !position_taken?(board, index)
      return true
   end
end
  def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == NIL
    return false
  else
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

def input_to_index(input_user)
    input_user.to_i() - 1
end
