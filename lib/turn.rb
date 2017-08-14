
#display the board by taking an array
def display_board (board)
  row="-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts row
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts row
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Converts input to index
def input_to_index(input)
  index = (input.to_i) - 1
end

#Checks if a move is valid (between 0-8) AND the position is available => TRUE
def valid_move? (board, index)
  if index.between?(0,8) && position_taken?(board, index) == true
    #position is between 0-8 (1-9) AND the position is available (#position_taken)
    true
  else
    false
  end
end


#checks if position on the board is taken. If available, =>TRUE. If not available => FALSE
def position_taken?(board, index)
  position = board[index]
  if position == " " || position == "" || position == nil
    #position is availble => true
    true
  else
    #position is NOT available => false
    false
  end
end

#assign X or O to a position on the board by overwritting the array(board) index
def move(board, index, token = "X")
   board[index] = token
end

#asks for user input and converts to integer
#checks that input is valid. If not, #turn is run until input is valid
#runs #move to assign letter to posision on board
#display board with udpates

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  int_input = input_to_index(user_input) #convert user_input to int
  move_okay = valid_move?(board, int_input)

  if move_okay == true
    move(board, int_input)
    display_board(board)
  else
    turn(board)
  end
end
