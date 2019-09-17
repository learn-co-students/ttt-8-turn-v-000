
##DISPLAY BOARD
def display_board(board)
  puts " #{board[0]} " "|" " #{board[1]} " "|" " #{board[2]} "
  puts "-----------"
  puts " #{board[3]} " "|" " #{board[4]} " "|" " #{board[5]} "
  puts "-----------"
  puts " #{board[6]} " "|" " #{board[7]} " "|" " #{board[8]} "
end

def input_to_index(user_input)
  converted_input = user_input.to_i - 1
  converted_input
end

##VALID MOVE  --position taken method is not required here but good to practice and see the logic behind the #valid_move;
##position is taken when board[index] does not equal a blank space
def position_taken?(board, index)
  if board[index] == ("X" || "O")
    true
  else board[index] == " " || "" || nil
    false
  end
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  else
    false
  end
end

##MOVE
def move(board, index, char="X")
  board[index] = char
end

##TURN
def turn(board)
    ##ask for input
  puts "Please enter 1-9:"
    ##get input
user_input=gets.strip
    ##convert user's input into an index; set this method = to index otherwise the #valid_move? will not know what you mean by index.
    #it must know that you will use user_input when converted to an index as the argument index!
index = input_to_index(user_input)

    ##Is move is valid? if so, make the move and display the board to the user. otherwise repeat

    if valid_move?(board, index)
      move(board, index, char="X")
      display_board(board)
    else turn(board)
    end
    
end
