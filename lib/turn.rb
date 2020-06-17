def display_board(board)  #the tic-tac-toe board method
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
user_input = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
def input_to_index(user_input) #method to convert user_input string to integer
  (user_input).to_i - 1 #this takes the user_input string and converts to an integer
end                     #then subtracts one from the user input (integer) to get the index on the board.
                        #example would be if the user enters 2, the place on the board is 1.
char = "X" or "O"
def move(board, user_input, char="X") #move method to take an X or O to place on board
  board[user_input] = char
end

def valid_move?(board, index)  #method to determine if the user has input a valid move - whether it is on y
  index.between?(0, 8) && position_taken?(board, index)  #the board (index 0-8) and whether the position has already
end                                                      #been played. Did have if/else, but did not need this because
                                                         #method already is determined true and anything else is false
def position_taken?(board, index)  #method to determine if position has been taken
  board[index] == " " || board[index] == "" || board[index] == nil
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    char_move = valid_move?(board, index)
  if char_move == true
    move(board, index, char="X")
  else char_move == false
  until char_move == true
    puts "Sorry, invalid move. Please enter 1-9:" 
    input = gets.strip
    index = input_to_index(input)
    char_move = valid_move?(board, index)
    move(board, index, char="X")
  end
  end
  display_board(board)
end


