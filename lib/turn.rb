board=[" ", " ", " ", " ", " ", " ", " ", " ", " "]
#turn turn turn

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end
def valid_move?(board,index)
  if (index >=0 && index <= 9)
     valid= TRUE
  else
    valid = FALSE
  end
  if position_taken?(board, index) == TRUE
    valid=FALSE
  end
  valid

end
# code your #position_taken? method here!]

def position_taken?(board,index)
  taken = nil
  if (board[index] == " " || board[index] ==  "" || board[index] == nil)
    taken= FALSE
  else
    taken = TRUE
  end
  taken
end
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



  